> 本页是便于在线阅读的文档副本。文中的 Shaders/、Decompiled/ 等相对链接需下载并解压同目录 Shader_Recovery.zip 后使用。

# Shader 恢复交接说明

提取日期：2026-11-19。对象是本机 REPLACED Demo 成品包，Unity 导出记录版本 6000.0.63f1；内置资源另含 6000.0.51f1。此包是先前环境场景包的补充，不包含模型、人物图集或角色专用 bundle。

## 实测恢复数量

- Shader 序列化对象 150 个，唯一名称 139 个；ComputeShader 对象 32 个。
- DXBC：1050 个去重容器，全部生成微软汇编；1040 个生成 HLSL，835 个通过微软 D3DCompile 单阶段重编译。
- SMOL-V：939 个模块全部无损解码为 SPIR-V，通过头部、指令长度和入口阶段边界检查。
- SPIR-V：含原有计算着色器的 113 个原生模块，共 1052 个；1052 个生成 GLSL，1052 个生成资源反射 JSON，1046 个生成 HLSL，964 个 HLSL 通过 D3DCompile。
- 其余 82 份 HLSL 都是采样器寄存器编号超出 SM5 范围；单独生成 Adapted/VulkanSM5 版本，重映射采样器编号后 82 份全部通过编译。因此 1046 份生成的 Vulkan 路线 HLSL 全部有可通过单阶段编译的版本。适配只改寄存器编号，不覆盖原始输出；CPU/Unity 包装必须同步采用 vulkan-sm5-adaptation.json 的 samplerSlotRemap。这个结果不等于原始版本不加修改即全部能编译。
- 另有 116 份计算着色器原有 GLSL 文本完整保存；未运行独立 GLSL 编译器验证它们。
- DXBC 与 SPIR-V 是两种后端，很多是相同 Shader 的对应功能，数量不可相加当作独立 Shader 数量。一个 Shader 的顶点、片元、Pass、关键字变体也各有独立模块。

依据：extraction-summary.json、decompilation-summary.json、d3d11-recovery.json、vulkan-recovery.json、smolv-decoding.json。逐对象结果见 逐Shader恢复清单.md / per-shader-recovery.csv。提取错误清单 extraction-errors.json 已为零；反编译和编译失败仍逐项保留。

## 为何之前是占位，当前恢复到哪里

之前 AssetRipper 的 ShaderExportMode 是 Dummy，只导出了名称和 Properties，正文并非原渲染实现。这次取出了原包的真实编译数据和 Unity 6 的 m_PlayerSubPrograms，恢复出实际运算、采样、条件判断和缓冲区访问代码；不是把占位正文重新命名。

生成代码不是原作者源码。编译优化已经破坏了部分局部变量名、函数组织、宏、注释和 include 文件，无法保证逐字还原。Vulkan 资源名称及反射有助于重建参数关联，DXBC 的 cb0 / t0 等寄存器名必须结合 Unity 元数据处理。

编译通过只说明单阶段 HLSL 可由 D3DCompile 处理，不证明与原字节码等价，也不证明 Unity 渲染或画面已经恢复。当前未运行 Unity 编辑器做实开、跨阶段链接、渲染截图或逐像素对比。没有自动覆盖原 Unity 工程的任何占位 Shader。

## 如何用于还原关卡

1. 从 重点环境Shader导航.md 找到 LitV1、Decal、FakeFog、雨、水洼、风、天空，以及聚类光照和后处理。
2. 在对应 Shaders/<对象>/recovery-links.json 找该 Shader 的 HLSL、编译结果、GLSL 和资源反射。shader-index.json 保留每个 Blob 的 subShader / Pass / 阶段 / 关键字 / 原始 serialized 绑定。
3. 使用 metadata.json 的 m_State、m_PropInfo、m_CommonParameters、m_ParameterBlobIndices 和平台参数数据恢复 ShaderLab 包装、Blend/ZWrite/ZTest/Cull、关键字变体与 CBuffer 布局。独立参数二进制也保存在解压 segment 中，尚未逐项翻译为源码声明。
4. 场景材质属性要匹配原字段。例如 LitV1 的基础纹理是 _tex_base_color，不能只读取占位示例里的 _MainTex。按 binding/offset 精确绑定，不能仅凭名称猜测布局。
5. 接回自定义渲染管线。ComputeShader 的 kernel 名、threadGroupSize、资源和常量绑定都在 compute-metadata.json。光照列表、GI、SSR、景深和 TAA 依赖 CPU 调度、RenderTexture 格式、Pass 顺序和历史帧数据；Shader 代码本身无法提供这些调用。
6. 先选择无关键字或单 Pass 的环境 Shader 验证，再接聚类光照、体积效果和后处理。保存占位工程备份，逐材质替换后与原游戏同位置、同时间、同相机画面对比。

## 已知失败与限制

- D3D11 有 10 个模块未产生 HLSL，包括一个 SsrTrace 计算模块及若干 Unity 内置调试/UI 模块；其 DXBC 和汇编完整保留。
- 部分 D3D11 HLSL 仍夹有反编译器不支持的指令，如 ld_raw_indexable，故不能编译。不要把该文件直接改名为 .shader 当作完成；可对照同功能 Vulkan 输出进一步重建。
- SPIRV-Cross 未生成 HLSL 的 6 个模块中，5 个涉及 View Index，需要 VS/PS Shader Model 6.1 或更高；1 个含当前 HLSL 后端不支持的 builtin。本次以 SM5 为恢复目标，未将其计为成功。GLSL 和反射均保留。
- 原包未包含或构建时剔除的变体无法从本次数据恢复；没有原开发工程、Shader Graph 资产或作者 include 就不能据此声称完整源码已找回。
- 公共 Shader 和 Unity 内置库会含通用蒙皮等代码，此包没有提取人物模型、角色贴图或角色专用资源包。它只为环境恢复保留公共依赖。

## 目录

- Shaders：原始 serialized 对象、完整 JSON 元数据、LZ4 原始编译块及解压段、Properties、按对象导航。
- Programs：DXBC、Unity 包装、SMOL-V、SPIR-V、计算 GLSL 原始字节。
- Disassembly/D3D11：微软 D3DDisassemble 生成的真实汇编。
- Decompiled/D3D11：3Dmigoto 反编译 HLSL。
- Decompiled/Vulkan/HLSL、GLSL、Reflection：SPIRV-Cross 输出。
- RecoveredOriginalGLSL：原包自带的计算 GLSL 文本。
- Adapted/VulkanSM5：82 份明确记录采样器编号变更的 HLSL；绑定映射及独立编译结果见 vulkan-sm5-adaptation.json。
- Logs/D3D11：每个模块的反编译日志；JSON 文件含逐模块编译器原始消息。
- RecoveryScripts / ToolSources：本次使用的提取/转换脚本和 SMOL-V 源文件。脚本原本放在游戏根目录 scripts/ 下；复跑时放回该位置并准备依赖工具，勿在补充包内直接运行并期待自动找到游戏。

## 工具与来源

- UnityPy 1.25.3：解析 Unity serialized / LZ4 / ShaderSubProgram；专门适配 Unity 6 的 m_PlayerSubPrograms。
- Windows d3dcompiler_47.dll：D3DDisassemble / D3DCompile，main 入口，按提取阶段的 Shader Model 5 profile 编译。未进行二进制等价性验证。
- 3Dmigoto cmd_Decompiler 1.3.16：https://github.com/bo3b/3Dmigoto/releases/tag/1.3.16
- Khronos SPIRV-Cross C API；native 来自 Silk.NET NuGet 2.23.0：https://www.nuget.org/packages/Silk.NET.SPIRV.Cross.Native/2.23.0
- SMOL-V 编码 v1 解码：按 aras-p/smol-v 当前 MIT 源实现 Python 适配，逐模块检查 decodedSize 与指令边界；源：https://github.com/aras-p/smol-v 。早期 AssetStudio 解码器无法处理本包版本，未用其失败结果代替恢复数据。

第三方运行程序未打包；资产所属权不因提取改变。ToolSources/sources.json 记录已下载依赖的来源与哈希，smolv 源文件另有 SHA256 清单。
