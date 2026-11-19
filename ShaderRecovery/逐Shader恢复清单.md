> 本页是便于在线阅读的文档副本。文中的 Shaders/、Decompiled/ 等相对链接需下载并解压同目录 Shader_Recovery.zip 后使用。

# 逐 Shader 恢复清单

同名 Shader 的不同序列化对象分别统计；各行程序有共享，不能相加当作全局去重数量。SPIR-V 编译列为 原始输出 / 加上采样器适配后的总数，适配版需要应用绑定映射。

| Shader | DXBC HLSL/模块 | DXBC 编译通过 | SPIR-V HLSL/模块 | SPIR-V 编译通过（原始/含适配） | 原有 GLSL |
|---|---:|---:|---:|---:|---:|
| [BloomBlur](Shaders/BloomBlur--ab1917fe2387/README.md) | 4/4 | 0 | 4/4 | 4/4 | 0 |
| [BloomPrefiler](Shaders/BloomPrefiler--78a621dc49cc/README.md) | 2/2 | 0 | 2/2 | 2/2 | 0 |
| [BokehTaa](Shaders/BokehTaa--66332093489c/README.md) | 1/1 | 0 | 1/1 | 1/1 | 0 |
| [BOXOPHOBIC/The Vegetation Engine/Elements/Default/Colors Default](Shaders/BOXOPHOBIC_The_Vegetation_Engine_Elements_Default_Colors_Default--a50d77f4794d/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [BOXOPHOBIC/The Vegetation Engine/Elements/Default/Motion Interaction](Shaders/BOXOPHOBIC_The_Vegetation_Engine_Elements_Default_Motion_Interaction--49c604acffb6/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [BOXOPHOBIC/The Vegetation Engine/Elements/Default/Motion Wind Power](Shaders/BOXOPHOBIC_The_Vegetation_Engine_Elements_Default_Motion_Wind_Power--d511be9d94a0/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [BOXOPHOBIC/The Vegetation Engine/Objects/Prop Standard Lit](Shaders/BOXOPHOBIC_The_Vegetation_Engine_Objects_Prop_Standard_Lit--15b95da61139/README.md) | 7/7 | 6 | 9/9 | 8/9 | 0 |
| [BOXOPHOBIC/The Vegetation Engine/Vegetation/Bark Standard Lit](Shaders/BOXOPHOBIC_The_Vegetation_Engine_Vegetation_Bark_Standard_Lit--da89d11c62b5/README.md) | 14/14 | 12 | 14/14 | 11/14 | 0 |
| [BOXOPHOBIC/The Vegetation Engine/Vegetation/Cross Standard Lit](Shaders/BOXOPHOBIC_The_Vegetation_Engine_Vegetation_Cross_Standard_Lit--fd881dfa55a8/README.md) | 7/7 | 6 | 9/9 | 6/9 | 0 |
| [BOXOPHOBIC/The Vegetation Engine/Vegetation/Cross Subsurface Lit](Shaders/BOXOPHOBIC_The_Vegetation_Engine_Vegetation_Cross_Subsurface_Lit--79e071cecf95/README.md) | 7/7 | 6 | 9/9 | 6/9 | 0 |
| [BOXOPHOBIC/The Vegetation Engine/Vegetation/Grass Standard Lit](Shaders/BOXOPHOBIC_The_Vegetation_Engine_Vegetation_Grass_Standard_Lit--3b4939213798/README.md) | 7/7 | 6 | 9/9 | 6/9 | 0 |
| [BOXOPHOBIC/The Vegetation Engine/Vegetation/Grass Subsurface Lit](Shaders/BOXOPHOBIC_The_Vegetation_Engine_Vegetation_Grass_Subsurface_Lit--f1e0c7c8e982/README.md) | 23/23 | 19 | 22/22 | 16/22 | 0 |
| [BOXOPHOBIC/The Vegetation Engine/Vegetation/Leaf Standard Lit](Shaders/BOXOPHOBIC_The_Vegetation_Engine_Vegetation_Leaf_Standard_Lit--f9c8f5405b53/README.md) | 22/22 | 18 | 22/22 | 16/22 | 0 |
| [BOXOPHOBIC/The Vegetation Engine/Vegetation/Leaf Subsurface Lit](Shaders/BOXOPHOBIC_The_Vegetation_Engine_Vegetation_Leaf_Subsurface_Lit--ba4e2398fb06/README.md) | 22/22 | 18 | 22/22 | 16/22 | 0 |
| [CameraScatteredLightIntegration](Shaders/CameraScatteredLightIntegration--72201d0a6b1f/README.md) | 1/1 | 0 | 1/1 | 1/1 | 0 |
| [ClusteredLightListBuild](Shaders/ClusteredLightListBuild--f21fd5d793b9/README.md) | 2/2 | 0 | 2/2 | 2/2 | 0 |
| [CocStabilization](Shaders/CocStabilization--10d830420761/README.md) | 3/3 | 0 | 3/3 | 3/3 | 0 |
| [ColorGradingLut](Shaders/ColorGradingLut--675b26e4b3ec/README.md) | 2/2 | 0 | 2/2 | 2/2 | 0 |
| [ComputeCoc](Shaders/ComputeCoc--ae787fb0daca/README.md) | 1/1 | 0 | 1/1 | 1/1 | 0 |
| [DofBlurV3](Shaders/DofBlurV3--a51dd9508d2e/README.md) | 3/3 | 0 | 3/3 | 3/3 | 0 |
| [DownsampleSceneData](Shaders/DownsampleSceneData--67524265d3f6/README.md) | 1/1 | 0 | 1/1 | 1/1 | 0 |
| [GaussianBlurDevdbg](Shaders/GaussianBlurDevdbg--7e6094251591/README.md) | 2/2 | 0 | 2/2 | 2/2 | 0 |
| [GenerateDensityBufferLit](Shaders/GenerateDensityBufferLit--bf8ab20cbbab/README.md) | 2/2 | 0 | 2/2 | 0/2 | 0 |
| [GenerateHIZ](Shaders/GenerateHIZ--acbc2b084bd9/README.md) | 1/1 | 0 | 1/1 | 1/1 | 0 |
| [GenerateMipmapsSceneColor](Shaders/GenerateMipmapsSceneColor--57b4c3141ced/README.md) | 1/1 | 0 | 1/1 | 1/1 | 0 |
| [GITemporal](Shaders/GITemporal--965f6d7a5879/README.md) | 1/1 | 0 | 1/1 | 1/1 | 0 |
| [GUI/Text Shader](Shaders/GUI_Text_Shader--149b463aa43b/README.md) | 5/5 | 5 | 4/5 | 4/4 | 0 |
| [Hidden/BlitCopy](Shaders/Hidden_BlitCopy--3c011af0cac1/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/BlitCopyDepth](Shaders/Hidden_BlitCopyDepth--1b70fd7bd99f/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/BlitCopyHDRTonemap](Shaders/Hidden_BlitCopyHDRTonemap--f189aac12c06/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/BlitCopyWithDepth](Shaders/Hidden_BlitCopyWithDepth--67266d353cc8/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/BlitToDepth](Shaders/Hidden_BlitToDepth--7d39a01183b3/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/BlitToDepth_MSAA](Shaders/Hidden_BlitToDepth_MSAA--21a7cc7e655b/README.md) | 1/2 | 1 | 2/2 | 2/2 | 0 |
| [Hidden/BOXOPHOBIC/The Vegetation Engine/Fresnel](Shaders/Hidden_BOXOPHOBIC_The_Vegetation_Engine_Fresnel--deb8c888a7a1/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/Compositing](Shaders/Hidden_Compositing--6f153be8274b/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/ConvertTexture](Shaders/Hidden_ConvertTexture--831e03417b8c/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/FrameDebuggerRenderTargetDisplay](Shaders/Hidden_FrameDebuggerRenderTargetDisplay--cd7e0321d320/README.md) | 8/11 | 8 | 11/11 | 11/11 | 0 |
| [Hidden/Internal-Colored](Shaders/Hidden_Internal-Colored--d7fd7de1dce3/README.md) | 5/5 | 5 | 4/5 | 4/4 | 0 |
| [Hidden/Internal-CombineDepthNormals](Shaders/Hidden_Internal-CombineDepthNormals--20c3c45a0aca/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/Internal-CubemapToEquirect](Shaders/Hidden_Internal-CubemapToEquirect--5b147ee19ed7/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/Internal-DebugPattern](Shaders/Hidden_Internal-DebugPattern--49d783e3b03f/README.md) | 4/4 | 4 | 4/4 | 4/4 | 0 |
| [Hidden/Internal-DeferredReflections](Shaders/Hidden_Internal-DeferredReflections--187446cc4e8d/README.md) | 5/5 | 5 | 5/5 | 5/5 | 0 |
| [Hidden/Internal-DeferredShading](Shaders/Hidden_Internal-DeferredShading--990df34fd40d/README.md) | 29/29 | 29 | 29/29 | 29/29 | 0 |
| [Hidden/Internal-DepthNormalsTexture](Shaders/Hidden_Internal-DepthNormalsTexture--8bb06a36717c/README.md) | 17/17 | 17 | 16/16 | 16/16 | 0 |
| [Hidden/Internal-Flare](Shaders/Hidden_Internal-Flare--6d180802dc73/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/Internal-GUIRoundedRect](Shaders/Hidden_Internal-GUIRoundedRect--61c0c43629d5/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/Internal-GUIRoundedRectWithColorPerBorder](Shaders/Hidden_Internal-GUIRoundedRectWithColorPerBorder--58eed09829cf/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/Internal-GUITexture](Shaders/Hidden_Internal-GUITexture--822172eeadf6/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/Internal-GUITextureBlit](Shaders/Hidden_Internal-GUITextureBlit--9fc400b92da4/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/Internal-GUITextureClip](Shaders/Hidden_Internal-GUITextureClip--f756feed6976/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/Internal-GUITextureClipText](Shaders/Hidden_Internal-GUITextureClipText--d5f5818e03e5/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/Internal-Halo](Shaders/Hidden_Internal-Halo--5c6864754607/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/Internal-Loading](Shaders/Hidden_Internal-Loading--4bf294b355ad/README.md) | 5/5 | 5 | 4/5 | 4/4 | 0 |
| [Hidden/Internal-MotionVectors](Shaders/Hidden_Internal-MotionVectors--5e3fb467ea41/README.md) | 5/5 | 5 | 5/5 | 5/5 | 0 |
| [Hidden/Internal-ODSWorldTexture](Shaders/Hidden_Internal-ODSWorldTexture--4e5ec14568d4/README.md) | 15/15 | 15 | 14/14 | 14/14 | 0 |
| [Hidden/Internal-ScreenSpaceShadows](Shaders/Hidden_Internal-ScreenSpaceShadows--b0f844c53285/README.md) | 13/13 | 13 | 13/13 | 13/13 | 0 |
| [Hidden/Internal-StencilWrite](Shaders/Hidden_Internal-StencilWrite--cbb6af778d36/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/Internal-UIRAtlasBlitCopy](Shaders/Hidden_Internal-UIRAtlasBlitCopy--1c069da538a6/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/Internal-UIRDefault](Shaders/Hidden_Internal-UIRDefault--759ec4f59bf0/README.md) | 0/4 | 0 | 4/4 | 4/4 | 0 |
| [Hidden/Internal-UIRDefaultWorld](Shaders/Hidden_Internal-UIRDefaultWorld--47903ddd312e/README.md) | 0/2 | 0 | 2/2 | 2/2 | 0 |
| [Hidden/InternalClear](Shaders/Hidden_InternalClear--1df7f7992277/README.md) | 5/5 | 5 | 4/5 | 4/4 | 0 |
| [Hidden/InternalErrorShader](Shaders/Hidden_InternalErrorShader--7bcf648dbe00/README.md) | 11/11 | 11 | 10/11 | 10/10 | 0 |
| [Hidden/ProBuilder/EdgePicker](Shaders/Hidden_ProBuilder_EdgePicker--88dbb861dc8b/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/ProBuilder/FacePicker](Shaders/Hidden_ProBuilder_FacePicker--503b37fd33f0/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/ProBuilder/HideVertices](Shaders/Hidden_ProBuilder_HideVertices--0b8602fdb1e5/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/ProBuilder/VertexPicker](Shaders/Hidden_ProBuilder_VertexPicker--3b33f7a8d6f0/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/SadCatStudios/ClusteredLightListHeatmap](Shaders/Hidden_SadCatStudios_ClusteredLightListHeatmap--37a57de049a9/README.md) | 2/2 | 1 | 2/2 | 2/2 | 0 |
| [Hidden/SadCatStudios/ComposeDofImage](Shaders/Hidden_SadCatStudios_ComposeDofImage--8813f4c1587a/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/SadCatStudios/CopyDepth](Shaders/Hidden_SadCatStudios_CopyDepth--c8d31e8fa385/README.md) | 3/3 | 3 | 3/3 | 3/3 | 0 |
| [Hidden/SadCatStudios/DeownsamplMaxDepth4x4](Shaders/Hidden_SadCatStudios_DeownsamplMaxDepth4x4--23312cf5cf2a/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/SadCatStudios/DepthOfFieldDebug](Shaders/Hidden_SadCatStudios_DepthOfFieldDebug--d13e344b47f7/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/SadCatStudios/DepthOfFieldRenderBokeh](Shaders/Hidden_SadCatStudios_DepthOfFieldRenderBokeh--76aba941b8cb/README.md) | 6/6 | 6 | 7/7 | 7/7 | 0 |
| [Hidden/SadCatStudios/FinalBlit](Shaders/Hidden_SadCatStudios_FinalBlit--27862711136a/README.md) | 3/3 | 3 | 3/3 | 3/3 | 0 |
| [Hidden/SadCatStudios/FinalBlitPreviewCamera](Shaders/Hidden_SadCatStudios_FinalBlitPreviewCamera--10fc921b943f/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/SadCatStudios/IntegrateLd](Shaders/Hidden_SadCatStudios_IntegrateLd--89f3be3473ab/README.md) | 6/6 | 6 | 4/4 | 4/4 | 0 |
| [Hidden/SadCatStudios/LineRendering](Shaders/Hidden_SadCatStudios_LineRendering--e765368047f2/README.md) | 0/0 | 0 | 0/0 | 0/0 | 0 |
| [Hidden/SadCatStudios/MaskDecalV1](Shaders/Hidden_SadCatStudios_MaskDecalV1--27d7acaa44cb/README.md) | 3/3 | 3 | 4/4 | 4/4 | 0 |
| [Hidden/SadCatStudios/PixelizationBlit](Shaders/Hidden_SadCatStudios_PixelizationBlit--573098ca6c77/README.md) | 3/3 | 3 | 3/3 | 3/3 | 0 |
| [Hidden/SadCatStudios/PresentShader](Shaders/Hidden_SadCatStudios_PresentShader--84950d609929/README.md) | 5/5 | 5 | 5/5 | 5/5 | 0 |
| [Hidden/SadCatStudios/PresentShadowMapCascades](Shaders/Hidden_SadCatStudios_PresentShadowMapCascades--c7338c8e1399/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/SadCatStudios/ResolveColor](Shaders/Hidden_SadCatStudios_ResolveColor--eb626fea8f9b/README.md) | 3/3 | 3 | 3/3 | 3/3 | 0 |
| [Hidden/SadCatStudios/ResolveDepth](Shaders/Hidden_SadCatStudios_ResolveDepth--05378050aad8/README.md) | 3/3 | 3 | 3/3 | 3/3 | 0 |
| [Hidden/SadCatStudios/SingleColor](Shaders/Hidden_SadCatStudios_SingleColor--72523b2108fb/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/SadCatStudios/SkyAndClouds](Shaders/Hidden_SadCatStudios_SkyAndClouds--fd2408adecbc/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/SadCatStudios/UIFinalBlit](Shaders/Hidden_SadCatStudios_UIFinalBlit--0347f3afcf77/README.md) | 3/3 | 3 | 3/3 | 3/3 | 0 |
| [Hidden/SadCatStudios/UpscaleSkyAndClouds](Shaders/Hidden_SadCatStudios_UpscaleSkyAndClouds--ac18199da79e/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/Shader Graph/FallbackError](Shaders/Hidden_Shader_Graph_FallbackError--a2e83731781e/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/TextCore/Distance Field SSD](Shaders/Hidden_TextCore_Distance_Field_SSD--249fd30aaa61/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/TrueShadow/Cutout](Shaders/Hidden_TrueShadow_Cutout--e4967f83bebd/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/TrueShadow/Generate](Shaders/Hidden_TrueShadow_Generate--abdabd1ab2d5/README.md) | 4/4 | 4 | 5/5 | 5/5 | 0 |
| [Hidden/TrueShadow/ImprintPostProcess](Shaders/Hidden_TrueShadow_ImprintPostProcess--a637a1f840fe/README.md) | 5/5 | 5 | 5/5 | 5/5 | 0 |
| [Hidden/TrueShadow/PostProcess](Shaders/Hidden_TrueShadow_PostProcess--0cbda2c5504b/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/VideoComposite](Shaders/Hidden_VideoComposite--37a6ef0fc628/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Hidden/VideoDecode](Shaders/Hidden_VideoDecode--333878e75cc6/README.md) | 17/17 | 17 | 18/18 | 18/18 | 0 |
| [Hidden/VR/BlitFromTex2DToTexArraySlice](Shaders/Hidden_VR_BlitFromTex2DToTexArraySlice--6aa7e124fa5c/README.md) | 4/5 | 4 | 2/3 | 2/2 | 0 |
| [Hidden/VR/BlitTexArraySlice](Shaders/Hidden_VR_BlitTexArraySlice--cc9980e61e50/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [IntegrateDfgLut](Shaders/IntegrateDfgLut--1772e83721c7/README.md) | 1/1 | 0 | 1/1 | 1/1 | 0 |
| [Internal-BlendShape](Shaders/Internal-BlendShape--8ae6bc162436/README.md) | 9/9 | 0 | 9/9 | 9/9 | 18 |
| [Internal-CreateFoveatedShadingRateTextureArray](Shaders/Internal-CreateFoveatedShadingRateTextureArray--6ea1755d0ada/README.md) | 0/0 | 0 | 1/1 | 1/1 | 0 |
| [Internal-CreateFoveatedShadingRateTextureNoArray](Shaders/Internal-CreateFoveatedShadingRateTextureNoArray--3a81433a84a2/README.md) | 1/1 | 0 | 1/1 | 1/1 | 0 |
| [Internal-Skinning](Shaders/Internal-Skinning--398e0e538fbf/README.md) | 40/40 | 0 | 40/40 | 40/40 | 80 |
| [Internal-VT-TranslationTableReplace](Shaders/Internal-VT-TranslationTableReplace--679377e434b3/README.md) | 1/1 | 0 | 1/1 | 1/1 | 2 |
| [Internal-VT-TranslationTableUpsample](Shaders/Internal-VT-TranslationTableUpsample--95156483e604/README.md) | 16/16 | 0 | 16/16 | 16/16 | 16 |
| [Internal-YFlipFoveatedShadingTexture](Shaders/Internal-YFlipFoveatedShadingTexture--c00e9bc942e0/README.md) | 4/4 | 0 | 4/4 | 4/4 | 0 |
| [Legacy Shaders/Particles/Additive](Shaders/Legacy_Shaders_Particles_Additive--bfa25188d1f5/README.md) | 4/4 | 4 | 4/4 | 4/4 | 0 |
| [Legacy Shaders/Particles/Alpha Blended](Shaders/Legacy_Shaders_Particles_Alpha_Blended--d715517e0af5/README.md) | 4/4 | 4 | 4/4 | 4/4 | 0 |
| [Legacy Shaders/Particles/Alpha Blended Premultiply](Shaders/Legacy_Shaders_Particles_Alpha_Blended_Premultiply--29395f2acf1f/README.md) | 4/4 | 4 | 4/4 | 4/4 | 0 |
| [Legacy Shaders/VertexLit](Shaders/Legacy_Shaders_VertexLit--43c76554f062/README.md) | 9/9 | 9 | 9/9 | 9/9 | 0 |
| [Mobile/Particles/Alpha Blended](Shaders/Mobile_Particles_Alpha_Blended--49acf0f10a6e/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Particles/Standard Surface](Shaders/Particles_Standard_Surface--035d76ef5ac4/README.md) | 75/75 | 75 | 60/60 | 60/60 | 0 |
| [Particles/Standard Unlit](Shaders/Particles_Standard_Unlit--d024cd7536e5/README.md) | 24/24 | 24 | 16/16 | 16/16 | 0 |
| [ProBuilder6/Standard Vertex Color](Shaders/ProBuilder6_Standard_Vertex_Color--b2eae1953ad3/README.md) | 0/0 | 0 | 0/0 | 0/0 | 0 |
| [ProBuilder6/Standard Vertex Color](Shaders/ProBuilder6_Standard_Vertex_Color--0269db2592c9/README.md) | 0/0 | 0 | 0/0 | 0/0 | 0 |
| [RadianceSourceFiltering](Shaders/RadianceSourceFiltering--3b9963c6cad5/README.md) | 2/2 | 0 | 2/2 | 2/2 | 0 |
| [RadianceSourceGeneration](Shaders/RadianceSourceGeneration--62a4815120d0/README.md) | 1/1 | 0 | 1/1 | 1/1 | 0 |
| [ResolveColor](Shaders/ResolveColor--e803fcf5d247/README.md) | 3/3 | 0 | 3/3 | 3/3 | 0 |
| [SadCatStudios/DecalV1](Shaders/SadCatStudios_DecalV1--474b94b9ef20/README.md) | 7/7 | 7 | 7/7 | 7/7 | 0 |
| [SadCatStudios/DecalV1](Shaders/SadCatStudios_DecalV1--d3c29b6b0140/README.md) | 5/5 | 5 | 5/5 | 5/5 | 0 |
| [SadCatStudios/FakeFogV1](Shaders/SadCatStudios_FakeFogV1--7f454cc6f7d5/README.md) | 4/4 | 4 | 4/4 | 4/4 | 0 |
| [SadCatStudios/LitV1](Shaders/SadCatStudios_LitV1--acd0d3d92cb2/README.md) | 16/16 | 12 | 19/19 | 15/19 | 0 |
| [SadCatStudios/LitV1](Shaders/SadCatStudios_LitV1--915e659f25ba/README.md) | 61/61 | 35 | 50/50 | 38/50 | 0 |
| [SadCatStudios/LitV1](Shaders/SadCatStudios_LitV1--593e5425de78/README.md) | 66/66 | 38 | 53/53 | 40/53 | 0 |
| [SadCatStudios/LitV1](Shaders/SadCatStudios_LitV1--d09ec3fd1827/README.md) | 7/7 | 6 | 9/9 | 8/9 | 0 |
| [SadCatStudios/ParticlesLitV1](Shaders/SadCatStudios_ParticlesLitV1--4da97b8fd82a/README.md) | 40/40 | 29 | 48/48 | 37/48 | 0 |
| [SadCatStudios/ParticlesLitV1](Shaders/SadCatStudios_ParticlesLitV1--8e31294c9df0/README.md) | 68/68 | 43 | 76/76 | 51/76 | 0 |
| [SadCatStudios/ParticlesUnlitV1](Shaders/SadCatStudios_ParticlesUnlitV1--99f54b427540/README.md) | 37/37 | 37 | 39/39 | 39/39 | 0 |
| [SadCatStudios/ParticlesUnlitV1](Shaders/SadCatStudios_ParticlesUnlitV1--9b7853fcf19d/README.md) | 99/99 | 99 | 99/99 | 99/99 | 0 |
| [SadCatStudios/ParticlesUnlitV1](Shaders/SadCatStudios_ParticlesUnlitV1--7ef0147ef802/README.md) | 11/11 | 11 | 12/12 | 12/12 | 0 |
| [SadCatStudios/PixelizationLitV1](Shaders/SadCatStudios_PixelizationLitV1--daddf903bcc7/README.md) | 6/6 | 5 | 5/5 | 4/5 | 0 |
| [SadCatStudios/ProBuilderLitV1](Shaders/SadCatStudios_ProBuilderLitV1--d3a555a960fe/README.md) | 7/7 | 6 | 9/9 | 8/9 | 0 |
| [SadCatStudios/UnlitV1](Shaders/SadCatStudios_UnlitV1--18e9edba8f30/README.md) | 7/7 | 7 | 8/8 | 8/8 | 0 |
| [SadCatStudios/VFX/Arcade_CRT](Shaders/SadCatStudios_VFX_Arcade_CRT--015737c372da/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [SadCatStudios/VFX/Color_Sprite_Alpha_Test](Shaders/SadCatStudios_VFX_Color_Sprite_Alpha_Test--c57150ea0720/README.md) | 4/4 | 4 | 5/5 | 5/5 | 0 |
| [SadCatStudios/VFX/Color_Sprite_transp](Shaders/SadCatStudios_VFX_Color_Sprite_transp--cff4fd365dbd/README.md) | 2/2 | 2 | 3/3 | 3/3 | 0 |
| [SadCatStudios/VFX/CRT_Alpha_Emis](Shaders/SadCatStudios_VFX_CRT_Alpha_Emis--73cb6a1ec8bc/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [SadCatStudios/VFX/Distortion_trail_Unlit](Shaders/SadCatStudios_VFX_Distortion_trail_Unlit--b4543b863158/README.md) | 2/2 | 2 | 3/3 | 3/3 | 0 |
| [SadCatStudios/VFX/ElectricSurface](Shaders/SadCatStudios_VFX_ElectricSurface--05a520f6d41b/README.md) | 3/3 | 2 | 4/4 | 3/4 | 0 |
| [SadCatStudios/VFX/Falling_rain](Shaders/SadCatStudios_VFX_Falling_rain--d21fe420e7fd/README.md) | 3/3 | 2 | 4/4 | 3/4 | 0 |
| [SadCatStudios/VFX/Fire_Particle_second](Shaders/SadCatStudios_VFX_Fire_Particle_second--65a612fd9e64/README.md) | 2/2 | 2 | 3/3 | 3/3 | 0 |
| [SadCatStudios/VFX/LampEmission](Shaders/SadCatStudios_VFX_LampEmission--27d2a5598d65/README.md) | 7/7 | 6 | 7/7 | 6/7 | 0 |
| [SadCatStudios/VFX/LaserAim](Shaders/SadCatStudios_VFX_LaserAim--6f75d63e6680/README.md) | 3/3 | 3 | 4/4 | 4/4 | 0 |
| [SadCatStudios/VFX/puddle_new](Shaders/SadCatStudios_VFX_puddle_new--9561a4a995ca/README.md) | 6/6 | 5 | 5/5 | 4/5 | 0 |
| [SadCatStudios/VFX/puddle_new_with_ripples](Shaders/SadCatStudios_VFX_puddle_new_with_ripples--b615938442fb/README.md) | 6/6 | 5 | 5/5 | 4/5 | 0 |
| [SadCatStudios/VFX/puddle_new_with_ripples2](Shaders/SadCatStudios_VFX_puddle_new_with_ripples2--428112d28405/README.md) | 7/7 | 6 | 7/7 | 6/7 | 0 |
| [SadCatStudios/VFX/puddle_quad_ripples](Shaders/SadCatStudios_VFX_puddle_quad_ripples--bc8f3de8d727/README.md) | 5/5 | 4 | 6/6 | 5/6 | 0 |
| [SadCatStudios/VFX/Simple_Noise](Shaders/SadCatStudios_VFX_Simple_Noise--0d3b81846542/README.md) | 4/4 | 4 | 5/5 | 5/5 | 0 |
| [SadCatStudios/VFX/Trail_Vertex_Unlit](Shaders/SadCatStudios_VFX_Trail_Vertex_Unlit--14c71446cf34/README.md) | 2/2 | 2 | 3/3 | 3/3 | 0 |
| [SadCatStudios/VFX/universal_shdr_lit](Shaders/SadCatStudios_VFX_universal_shdr_lit--8007fc80ea68/README.md) | 3/3 | 2 | 4/4 | 3/4 | 0 |
| [SadCatStudios/VFX/UniversalUnlit](Shaders/SadCatStudios_VFX_UniversalUnlit--2f097f8fba45/README.md) | 2/2 | 2 | 3/3 | 3/3 | 0 |
| [SadCatStudios/VFX/Wind](Shaders/SadCatStudios_VFX_Wind--59819092e801/README.md) | 3/3 | 2 | 4/4 | 3/4 | 0 |
| [Skybox/Procedural](Shaders/Skybox_Procedural--116b68434fb4/README.md) | 6/6 | 6 | 6/6 | 6/6 | 0 |
| [Sprites/Default](Shaders/Sprites_Default--a4cef693d3bc/README.md) | 4/4 | 4 | 6/6 | 6/6 | 0 |
| [Sprites/Mask](Shaders/Sprites_Mask--9eafa896165a/README.md) | 4/4 | 4 | 4/4 | 4/4 | 0 |
| [SsdoEstimate](Shaders/SsdoEstimate--f98f83c22ff5/README.md) | 1/1 | 0 | 1/1 | 1/1 | 0 |
| [SsdoFilter](Shaders/SsdoFilter--d3fd67264a74/README.md) | 1/1 | 0 | 1/1 | 1/1 | 0 |
| [SsrFilter](Shaders/SsrFilter--f8a944c69c28/README.md) | 2/2 | 0 | 2/2 | 2/2 | 0 |
| [SsrResolve](Shaders/SsrResolve--c6b42ebfa3fa/README.md) | 1/1 | 0 | 1/1 | 1/1 | 0 |
| [SsrTrace](Shaders/SsrTrace--ea0ed0b02f9b/README.md) | 0/1 | 0 | 1/1 | 1/1 | 0 |
| [Standard](Shaders/Standard--6abfb253d8c0/README.md) | 56/56 | 56 | 55/55 | 55/55 | 0 |
| [Taa](Shaders/Taa--cbc9901c5f00/README.md) | 1/1 | 0 | 1/1 | 1/1 | 0 |
| [TextMeshPro Fixed/Distance Field](Shaders/TextMeshPro_Fixed_Distance_Field--76aaca6a9d4e/README.md) | 6/6 | 6 | 7/7 | 7/7 | 0 |
| [TextMeshPro Fixed/Distance Field Overlay](Shaders/TextMeshPro_Fixed_Distance_Field_Overlay--5aece43a3a98/README.md) | 10/10 | 10 | 12/12 | 12/12 | 0 |
| [TextMeshPro/Bitmap](Shaders/TextMeshPro_Bitmap--ecef680660b4/README.md) | 5/5 | 5 | 6/6 | 6/6 | 0 |
| [TextMeshPro/Bitmap Custom Atlas](Shaders/TextMeshPro_Bitmap_Custom_Atlas--57cf66df8956/README.md) | 5/5 | 5 | 6/6 | 6/6 | 0 |
| [TextMeshPro/Distance Field](Shaders/TextMeshPro_Distance_Field--11065e4430b4/README.md) | 10/10 | 10 | 12/12 | 12/12 | 0 |
| [TextMeshPro/Distance Field](Shaders/TextMeshPro_Distance_Field--5f5ad8176f52/README.md) | 10/10 | 10 | 12/12 | 12/12 | 0 |
| [TextMeshPro/Distance Field (Surface)](Shaders/TextMeshPro_Distance_Field__Surface_--f770f4913dae/README.md) | 30/30 | 26 | 29/29 | 29/29 | 0 |
| [TextMeshPro/Distance Field (Surface)](Shaders/TextMeshPro_Distance_Field__Surface_--0ea78f887854/README.md) | 15/15 | 9 | 15/15 | 15/15 | 0 |
| [TextMeshPro/Distance Field Overlay](Shaders/TextMeshPro_Distance_Field_Overlay--0a5153ddda4b/README.md) | 5/5 | 5 | 6/6 | 6/6 | 0 |
| [TextMeshPro/Mobile/Bitmap](Shaders/TextMeshPro_Mobile_Bitmap--ba52155bff18/README.md) | 7/7 | 7 | 8/8 | 8/8 | 0 |
| [TextMeshPro/Mobile/Distance Field](Shaders/TextMeshPro_Mobile_Distance_Field--6c7ef5f234c0/README.md) | 10/10 | 10 | 12/12 | 12/12 | 0 |
| [TextMeshPro/Mobile/Distance Field](Shaders/TextMeshPro_Mobile_Distance_Field--b180b7bbc0a5/README.md) | 18/18 | 18 | 24/24 | 24/24 | 0 |
| [TextMeshPro/Mobile/Distance Field (Surface)](Shaders/TextMeshPro_Mobile_Distance_Field__Surface_--d1e9f0fd09f7/README.md) | 6/6 | 5 | 6/6 | 6/6 | 0 |
| [TextMeshPro/Mobile/Distance Field - Masking](Shaders/TextMeshPro_Mobile_Distance_Field_-_Masking--477f01ddf322/README.md) | 3/3 | 3 | 3/3 | 3/3 | 0 |
| [TextMeshPro/Mobile/Distance Field Overlay](Shaders/TextMeshPro_Mobile_Distance_Field_Overlay--a830d3217523/README.md) | 5/5 | 5 | 6/6 | 6/6 | 0 |
| [TextMeshPro/Sprite](Shaders/TextMeshPro_Sprite--6d4292639c1f/README.md) | 5/5 | 5 | 6/6 | 6/6 | 0 |
| [UI/Default](Shaders/UI_Default--c2aa97ef6879/README.md) | 5/5 | 5 | 6/6 | 6/6 | 0 |
| [UI/TrueShadow-Additive](Shaders/UI_TrueShadow-Additive--ad2f5eeba09f/README.md) | 5/5 | 5 | 6/6 | 6/6 | 0 |
| [UI/TrueShadow-Multiply](Shaders/UI_TrueShadow-Multiply--39845587f17c/README.md) | 5/5 | 5 | 6/6 | 6/6 | 0 |
| [UI/TrueShadow-Normal](Shaders/UI_TrueShadow-Normal--332f36c9eba4/README.md) | 5/5 | 5 | 6/6 | 6/6 | 0 |
| [UI/TrueShadow-Screen](Shaders/UI_TrueShadow-Screen--4f8d3143c0eb/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |
| [Unlit/Texture](Shaders/Unlit_Texture--a1f9c7259fda/README.md) | 2/2 | 2 | 2/2 | 2/2 | 0 |