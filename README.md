# REPLACED 环境场景交接

关卡 1-1-3 的环境 Unity 场景、依赖资源及交接说明在本仓库的 Releases 中下载。

不包含人物/敌人专用资源包；已剔除角色对象。恢复结果不等于原始开发工程：自定义 Shader 为占位实现，运行逻辑需要补接，尚未通过 Unity 编辑器实开和画面对比。

导出记录版本：Unity 6000.0.63f1。压缩包解压后先阅读 README_先读.md，再添加 UnityProject 文件夹。

## Shader 恢复补充包

- [下载完整 Shader_Recovery.zip](https://github.com/blacksfall-lgtm/8454641313/releases/download/environment-1-1-3-20261119/Shader_Recovery.zip)（46.4 MB，原始字节码、反汇编、HLSL/GLSL、参数与逐模块验证结果）
- [中文交接说明](ShaderRecovery/README_先读.md)
- [重点环境 Shader 导航](ShaderRecovery/重点环境Shader导航.md)
- [逐 Shader 恢复清单](ShaderRecovery/逐Shader恢复清单.md)
- [SHA-256 校验](ShaderRecovery/SHA256SUMS.txt)

D3D11：1,050 份字节码中，1,040 份生成 HLSL，835 份通过单阶段重编译。
Vulkan：1,052 份 SPIR-V 中，1,046 份生成 HLSL；964 份直接通过编译，82 份经采样器编号适配后通过。
两种后端有对应功能，不能将这些模块数相加作为 Shader 数量。

这些是真实编译数据的恢复结果；尚未接回 Unity 渲染管线或验证画面。此补充包没有覆盖原环境场景包，也不包含人物模型或角色贴图。

[完整环境场景包及备用下载](https://github.com/blacksfall-lgtm/8454641313/releases/tag/environment-1-1-3-20261119)

仓库文件内保存完整恢复包的 4 个分卷（ShaderRecovery/Shader_Recovery.zip.001 至 .004）。下载该目录全部文件后，运行 Restore_Shader_Recovery.ps1 即可合并并自动校验；完整压缩包也可通过上方 Releases 链接直接下载。


## SRP 配置与运行侧恢复

- [完整补充包 SRP_Recovery.zip](SRPRecovery/SRP_Recovery.zip)
- [交接说明](SRPRecovery/README.md)
- [核心配置与资源引用](SRPRecovery/核心配置与资源引用.md)
- [运行调度分析](SRPRecovery/运行调度分析.md)

已恢复三项核心管线配置、133 份配置对象（含 26 个 Volume Profile）、精确资源引用与纹理数据。
原生运行侧保留 1,161 个去重函数入口及汇编/调用证据。运行方法体尚未恢复为可执行 C#；配置不能直接作为已接通的 Unity SRP 启用。
