> 这是便于在线阅读的文档副本。文中的 SerializedAssets/、RuntimeNavigation/、NativeMethods/ 等路径需下载并解压同目录 SRP_Recovery.zip 后使用。

# SRP 配置与运行侧恢复交接

2026-11-19，本机 REPLACED Demo；自研 SadCatStudios.Rendering.ScsRenderPipeline。目标构建记录 Unity 6000.0.63f1，IL2CPP metadata v31。

## 已恢复的事实

- 原导出 GraphicsSettings.m_CustomRenderPipeline 指向 GUID 82b47608054865b4da7c0c52b01693f3，对应 RenderPipelineAsset；它的真实类型是 ScsRenderPipelineAsset : RenderPipelineAsset<ScsRenderPipeline>，不是普通 MonoBehaviour。之前导出空壳类的继承关系不正确，不能拿来直接运行。
- 三项核心对象：RenderPipelineAsset（pathID 5125）、RenderPipelineConfig（5126）、RenderPipelineResources（5127），均在 globalgamemanagers.assets。
- 配置中 clusteredGridSize3D = (32,16,512)，msaaMode = 0。恢复出的真实枚举定义为 NotUsed=0、x2=1、x4=2、x8=3，因此该资产中的 MSAA 配置是 NotUsed。它不等于所有相机/平台在运行时的最终状态。
- 核心资源表有 56 个资源字段，连同管线 asset 的 6 个引用，共恢复 62 条精确引用；包含 25 个 ComputeShader 和 21 个 Shader，以及 10 个纹理资源。具体以核心配置与资源引用.md / core-reference-map.json 为准。
- 共 133 份独立 SRP/Volume 配置对象，包括 26 个 VolumeProfile、5 份体积配置、3 份天空云配置、2 份像素化配置、4 份 GI 配置，以及景深、曝光调色、抗锯齿、阴影等。所有 133 份均严格读完对象，再重新序列化与原始字节逐字节比较通过；没有用默认值补齐。
- 10 份纹理的流式压缩数据完整保留，包含 VolumetricNoise3D、VolumetricCurlNoise3D、LowFrequencyCloudNoise、CloudDetailNoise、BlankScatteringTransmittance、DFG LUT、默认天体和数组纹理。ResourceObjects 内有尺寸、格式、mip 和真实 payload，补充了只拿 PNG 无法可靠表达原压缩体纹理数据的问题。

## 运行代码恢复程度

- 类型声明 327 个；方法索引 1533 条；去重原生函数入口 1161 个。其中 1016 个入口通过 PE unwind 信息划定并合并 chained 片段，145 个使用下一个方法/unwind 边界推断范围，后者不保证完整方法范围。
- 每个函数保留原机器码、x64 汇编、地址、分段映射、直接调用与条件跳转；间接调用明确保留为未解析。共享原生地址不等于恢复了唯一调用语义；编译器泛型共享/相同代码折叠会出现多个符号。
- 可运行 C# 方法体恢复数量：0。TypeDeclarations 是真实元数据声明，方法体为空；MetadataOnlyAssemblies/Replaced.Rendering.dll 由 Il2CppDumper 重建，只用于类型、字段和序列化分析，不能当作原游戏的可运行托管 DLL，也不要导入 Unity 当运行插件。
- 本次没有重写整套 SRP，没有证明 Shader、CPU 资源布局、Pass 顺序、Dispatch、同步和历史帧状态已经全部接回。没有 Unity 导入或画面对照验证。

## 为什么之前没有完整配置与运行源码

初次导出只装载了资源/场景并使用 ScriptContentLevel Level1，未提供完整 IL2CPP 结构信息。因而 AssetRipper 生成了 Dummy C#，甚至管线 asset 只剩 MonoBehaviour 头，没有 resources/config 字段。Shader 反编译也不会自动带出 CPU 侧运行循环。

本次使用 GameAssembly.dll 与 global-metadata.dat 解析类型、字段与方法地址，利用真实类型重建序列化布局，再回读原始对象，找回了之前缺失的字段及引用。修正了生成器对根 m_Enabled 的对齐遗漏，并同时验证 MonoBehaviour 头、完整读取和字节往返，以避免“长度相同但引用错位”的误读。

Cpp2IL 2022.1.0-pre-release.21 虽提供 dll_il_recovery 输出名，但其该版本 FillMethodBody 实现写入的是 ldnull; throw。已核对源实现，未把这类输出当作方法体已恢复。本包提供的是原生反汇编证据，不冒充作者 C# 源码。

## 使用方法

1. 先看 核心配置与资源引用.md 与 Volume配置清单.md，读取 SerializedAssets/<id>/fields.json。origin.json 有源文件、pathID、外部文件索引、哈希和往返验证结果，serialized-object.bin 是原始对象。
2. 用 core-reference-map.json 的 shaderRecoveryId 找到先前 Shader_Recovery.zip 内的 Shaders/<id>/recovery-links.json；它们已经按原对象 SHA256 精确匹配，而不是根据同名 Shader 猜测。两包一起使用。
3. 用 ResourceObjects 的 metadata.json 与 streamed-payload.bin 恢复对应 Texture3D/Texture2DArray/Texture2D。payload 是原格式压缩/原始像素数据，不是可直接按 PNG 打开的图片；按尺寸、格式、mip 解码。
4. 配置 JSON 的 PPtr 是原成品包 m_FileID/m_PathID，不是 Unity 编辑器 GUID。导入新工程时需按索引迁移引用。本包的配置数据不等于已经生成可直接启用的 Unity .asset 文件。
5. 从 运行调度分析.md、RuntimeNavigation 和 runtime-method-index.json 追踪 Pass 与缓冲区；结合真实字段布局及 Shader 反射恢复 CPU 代码。必须实现 CreatePipeline、Render、生命周期、资源分配、shader关键字、纹理格式与同步，并逐项验证。
6. ProjectSettingsReference 是原导出设置的参考副本，其 GUID 指向旧导出对象；不要直接覆盖当前可打开工程。只有完整管线代码和资源都迁移好后再启用 SRP。

## 目录与范围

- SerializedAssets / TypeTrees：完整可读字段、正确序列化布局与原始配置字节。
- ResourceObjects：管线引用的材质、纹理数据与元数据；Shader/Compute 程序通过 ShaderRecoveryId 映射到先前补充包，不重复打包。
- TypeDeclarations：真实继承、字段、常量、签名、字段偏移和方法地址；.cs.txt 明确表示参考声明。
- NativeMethods / RuntimeNavigation：渲染原生代码及导航；并非完整 GameAssembly 的重新分发。
- MetadataOnlyAssemblies：用于结构分析的 dummy DLL。
- RecoveryScripts / ToolEvidence：本次处理脚本和工具版本/来源；脚本原放游戏根目录 scripts，依赖之前的 Shader_Recovery 与 il2cpp-dump 目录，不能在本 ZIP 内直接运行而期待自动找到游戏。

排除了人物模型、角色贴图和角色专用 bundle。公共渲染类型中可能仍出现角色包围盒/DOF 等字段名，不代表本包包含人物资源。

## 来源与验证

- 原始资产索引：asset-index.json；资源索引：resource-index.json；异常：asset-errors.json / runtime-errors.json（均为空）。
- Il2CppDumper v6.7.46：https://github.com/Perfare/Il2CppDumper/releases/tag/v6.7.46
- TypeTreeGeneratorAPI 0.0.10 / UnityPy 1.25.3：从重建的类型产生序列化树，再回读原始配置。
- pefile / Capstone：解析 PE .pdata / chained unwind 和反汇编 x64，不执行目标游戏代码。
- Cpp2IL 输出实现核对：https://github.com/SamboyCoding/Cpp2IL/blob/2022.1.0-pre-release.21/Cpp2IL.Core/OutputFormats/AsmResolverDllOutputFormatIlRecovery.cs
- 原始输入 SHA256 及统计见 runtime-summary.json；包内所有文件另有 file-manifest.json，ZIP 完成 CRC 校验。
