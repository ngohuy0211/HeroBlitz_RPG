Shader "Sprite Shaders Ultimate/Uber/UI Uber 1" {
	Properties {
		[PerRendererData] _MainTex ("Sprite Texture", 2D) = "white" {}
		_Color ("Tint", Vector) = (1,1,1,1)
		_StencilComp ("Stencil Comparison", Float) = 8
		_Stencil ("Stencil ID", Float) = 0
		_StencilOp ("Stencil Operation", Float) = 0
		_StencilWriteMask ("Stencil Write Mask", Float) = 255
		_StencilReadMask ("Stencil Read Mask", Float) = 255
		_ColorMask ("Color Mask", Float) = 15
		[Toggle(UNITY_UI_ALPHACLIP)] _UseUIAlphaClip ("Use Alpha Clip", Float) = 0
		[Toggle(_ISTEXT_ON)] _IsText ("Is Text", Float) = 0
		[KeywordEnum(UV,UV_Raw,Object,Object_Scaled,World,UI_Element,Screen)] _ShaderSpace ("Shader Space", Float) = 0
		_PixelsPerUnit ("Pixels Per Unit", Float) = 100
		_ScreenWidthUnits ("Screen Width Units", Float) = 10
		_RectWidth ("Rect Width", Float) = 100
		_RectHeight ("Rect Height", Float) = 100
		[KeywordEnum(Linear_Default,Linear_Scaled,Linear_FPS,Frequency,Frequency_FPS,Custom_Value)] _TimeSettings ("Time Settings", Float) = 0
		_TimeScale ("Time Scale", Float) = 1
		_TimeFrequency ("Time Frequency", Float) = 2
		_TimeRange ("Time Range", Float) = 0.5
		_TimeFPS ("Time FPS", Float) = 5
		_UnscaledTime ("UnscaledTime", Float) = 0
		[KeywordEnum(None,Full,Mask,Dissolve,Spread)] _UberFading ("Uber Fading", Float) = 0
		_FullFade ("Full Fade", Range(0, 1)) = 1
		_UberPosition ("Uber Position", Vector) = (0,0,0,0)
		_UberNoiseFactor ("Uber Noise Factor", Float) = 0.2
		_UberNoiseScale ("Uber Noise Scale", Vector) = (0.2,0.2,0,0)
		_UberWidth ("Uber Width", Float) = 0.3
		_UberMask ("Uber Mask", 2D) = "white" {}
		_UberNoiseTexture ("Uber Noise Texture", 2D) = "white" {}
		[Toggle(_ENABLESTRONGTINT_ON)] _EnableStrongTint ("Enable Strong Tint", Float) = 0
		_StrongTintFade ("Strong Tint: Fade", Range(0, 1)) = 1
		[HDR] _StrongTintTint ("Strong Tint: Tint", Vector) = (1,1,1,1)
		_StrongTintContrast ("Strong Tint: Contrast", Float) = 0
		[Toggle(_ENABLEADDCOLOR_ON)] _EnableAddColor ("Enable Add Color", Float) = 0
		_AddColorFade ("Add Color: Fade", Range(0, 1)) = 1
		[HDR] _AddColorColor ("Add Color: Color", Vector) = (4,0,0,0)
		_AddColorContrast ("Add Color: Contrast", Float) = 0.5
		[Toggle(_ENABLEALPHATINT_ON)] _EnableAlphaTint ("Enable Alpha Tint", Float) = 0
		_AlphaTintFade ("Alpha Tint: Fade", Range(0, 1)) = 1
		[HDR] _AlphaTintColor ("Alpha Tint: Color", Vector) = (23.96863,1.254902,23.96863,0)
		_AlphaTintPower ("Alpha Tint: Power", Float) = 1
		_AlphaTintMinAlpha ("Alpha Tint: Min Alpha", Range(0, 1)) = 0.05
		[Toggle(_ENABLEBRIGHTNESS_ON)] _EnableBrightness ("Enable Brightness", Float) = 0
		_Brightness ("Brightness", Float) = 1
		[Toggle(_ENABLECONTRAST_ON)] _EnableContrast ("Enable Contrast", Float) = 0
		_Contrast ("Contrast", Float) = 1
		[Toggle(_ENABLESATURATION_ON)] _EnableSaturation ("Enable Saturation", Float) = 0
		_Saturation ("Saturation", Float) = 1
		[Toggle(_ENABLEHUE_ON)] _EnableHue ("Enable Hue", Float) = 0
		_Hue ("Hue", Range(-1, 1)) = 0
		[Toggle(_ENABLERECOLOR_ON)] _EnableRecolor ("Enable Recolor", Float) = 0
		_RecolorFade ("Recolor: Fade", Range(0, 1)) = 1
		_RecolorTintAreas ("Recolor: Tint Areas", 2D) = "white" {}
		[HDR] _RecolorRedTint ("Recolor: Red Tint", Vector) = (1,1,1,0.5019608)
		[HDR] _RecolorYellowTint ("Recolor: Yellow Tint", Vector) = (1,1,1,0.5019608)
		[HDR] _RecolorGreenTint ("Recolor: Green Tint", Vector) = (1,1,1,0.5019608)
		[HDR] _RecolorCyanTint ("Recolor: Cyan Tint", Vector) = (1,1,1,0.5019608)
		[HDR] _RecolorBlueTint ("Recolor: Blue Tint", Vector) = (1,1,1,0.5019608)
		[HDR] _RecolorPurpleTint ("Recolor: Purple Tint", Vector) = (1,1,1,0.5019608)
		[Toggle(_ENABLEINNEROUTLINE_ON)] _EnableInnerOutline ("Enable Inner Outline", Float) = 0
		_InnerOutlineFade ("Inner Outline: Fade", Range(0, 1)) = 1
		[HDR] _InnerOutlineColor ("Inner Outline: Color", Vector) = (11.98431,1.254902,1.254902,1)
		_InnerOutlineWidth ("Inner Outline: Width", Float) = 0.02
		[Toggle(_INNEROUTLINEDISTORTIONTOGGLE_ON)] _InnerOutlineDistortionToggle ("Inner Outline: Distortion Toggle", Float) = 0
		_InnerOutlineDistortionIntensity ("Inner Outline: Distortion Intensity", Vector) = (0.01,0.01,0,0)
		_InnerOutlineNoiseScale ("Inner Outline: Noise Scale", Vector) = (4,4,0,0)
		_InnerOutlineNoiseSpeed ("Inner Outline: Noise Speed", Vector) = (0,0.1,0,0)
		[Toggle(_ENABLEOUTEROUTLINE_ON)] _EnableOuterOutline ("Enable Outer Outline", Float) = 0
		_OuterOutlineFade ("Outer Outline: Fade", Range(0, 1)) = 1
		[HDR] _OuterOutlineColor ("Outer Outline: Color", Vector) = (0,0,0,1)
		_OuterOutlineWidth ("Outer Outline: Width", Float) = 0.04
		[Toggle(_OUTEROUTLINEDISTORTIONTOGGLE_ON)] _OuterOutlineDistortionToggle ("Outer Outline: Distortion Toggle", Float) = 0
		_OuterOutlineDistortionIntensity ("Outer Outline: Distortion Intensity", Vector) = (0.01,0.01,0,0)
		_OuterOutlineNoiseScale ("Outer Outline: Noise Scale", Vector) = (4,4,0,0)
		_OuterOutlineNoiseSpeed ("Outer Outline: Noise Speed", Vector) = (0,0.1,0,0)
		[Toggle(_ENABLEADDHUE_ON)] _EnableAddHue ("Enable Add Hue", Float) = 0
		_AddHueFade ("Add Hue: Fade", Range(0, 1)) = 1
		_AddHueShaderMask ("Add Hue: Shader Mask", 2D) = "white" {}
		_AddHueBrightness ("Add Hue: Brightness", Float) = 2
		_AddHueContrast ("Add Hue: Contrast", Float) = 1
		_AddHueSaturation ("Add Hue: Saturation", Range(0, 1)) = 1
		_AddHueSpeed ("Add Hue: Speed", Float) = 1
		[Toggle(_ENABLESHIFTHUE_ON)] _EnableShiftHue ("Enable Shift Hue", Float) = 0
		_ShiftHueFade ("Shift Hue: Fade", Range(0, 1)) = 1
		_ShiftHueShaderMask ("Shift Hue: Shader Mask", 2D) = "white" {}
		_ShiftHueSpeed ("Shift Hue: Speed", Float) = 0.5
		[Toggle(_ENABLEINKSPREAD_ON)] _EnableInkSpread ("Enable Ink Spread", Float) = 0
		_InkSpreadFade ("Ink Spread: Fade", Range(0, 1)) = 1
		[HDR] _InkSpreadColor ("Ink Spread: Color", Vector) = (8.47419,5.013525,0.08873497,0)
		_InkSpreadContrast ("Ink Spread: Contrast", Float) = 2
		_InkSpreadPosition ("Ink Spread: Position", Vector) = (0.5,-1,0,0)
		_InkSpreadDistance ("Ink Spread: Distance", Float) = 3
		_InkSpreadWidth ("Ink Spread: Width", Float) = 0.2
		_InkSpreadNoiseScale ("Ink Spread: Noise Scale", Vector) = (0.4,0.4,0,0)
		_InkSpreadNoiseFactor ("Ink Spread: Noise Factor", Float) = 0.5
		[Toggle(_ENABLEBLACKTINT_ON)] _EnableBlackTint ("Enable Black Tint", Float) = 0
		_BlackTintFade ("Black Tint: Fade", Range(0, 1)) = 1
		[HDR] _BlackTintColor ("Black Tint: Color", Vector) = (1,0,0,0)
		_BlackTintPower ("Black Tint: Power", Float) = 2
		[Toggle(_ENABLESINEGLOW_ON)] _EnableSineGlow ("Enable Sine Glow", Float) = 0
		_SineGlowFade ("Sine Glow: Fade", Range(0, 1)) = 1
		_SineGlowShaderMask ("Sine Glow: Shader Mask", 2D) = "white" {}
		[HDR] _SineGlowColor ("Sine Glow: Color", Vector) = (0,2.007843,2.996078,0)
		_SineGlowContrast ("Sine Glow: Contrast", Float) = 1
		_SineGlowFrequency ("Sine Glow: Frequency", Float) = 4
		_SineGlowMin ("Sine Glow: Min", Float) = 0
		_SineGlowMax ("Sine Glow: Max", Float) = 1
		[Toggle(_ENABLESPLITTONING_ON)] _EnableSplitToning ("Enable Split Toning", Float) = 0
		_SplitToningFade ("Split Toning: Fade", Range(0, 1)) = 1
		[HDR] _SplitToningHighlightsColor ("Split Toning: Highlights Color", Vector) = (1,0.1,0.1,0)
		[HDR] _SplitToningShadowsColor ("Split Toning: Shadows Color", Vector) = (0.1,0.4000002,1,0)
		_SplitToningContrast ("Split Toning: Contrast", Float) = 1
		_SplitToningBalance ("Split Toning: Balance", Float) = 1
		_SplitToningShift ("Split Toning: Shift", Range(-1, 1)) = 0
		[Toggle(_ENABLECOLORREPLACE_ON)] _EnableColorReplace ("Enable Color Replace", Float) = 0
		_ColorReplaceFade ("Color Replace: Fade", Range(0, 1)) = 1
		_ColorReplaceTargetColor ("Color Replace: Target Color", Vector) = (0,0,0,0)
		_ColorReplaceBias ("Color Replace: Bias", Float) = 1
		[HDR] _ColorReplaceColor ("Color Replace: Color", Vector) = (1,0,0,0)
		_ColorReplaceContrast ("Color Replace: Contrast", Float) = 1
		_ColorReplaceHueTolerance ("Color Replace: Hue Tolerance", Float) = 1
		_ColorReplaceSaturationTolerance ("Color Replace: Saturation Tolerance", Float) = 1
		_ColorReplaceBrightnessTolerance ("Color Replace: Brightness Tolerance", Float) = 1
		[Toggle(_ENABLEHOLOGRAM_ON)] _EnableHologram ("Enable Hologram", Float) = 0
		_HologramFade ("Hologram: Fade", Range(0, 1)) = 1
		[HDR] _HologramTint ("Hologram: Tint", Vector) = (0.3137255,1.662745,2.996078,1)
		_HologramContrast ("Hologram: Contrast", Float) = 1
		_HologramLineFrequency ("Hologram: Line Frequency", Float) = 500
		_HologramLineGap ("Hologram: Line Gap", Range(0, 5)) = 3
		_HologramLineSpeed ("Hologram: Line Speed", Float) = 0.01
		_HologramMinAlpha ("Hologram: Min Alpha", Range(0, 1)) = 0.2
		_HologramDistortionOffset ("Hologram: Distortion Offset", Float) = 0.5
		_HologramDistortionSpeed ("Hologram: Distortion Speed", Float) = 2
		_HologramDistortionDensity ("Hologram: Distortion Density", Float) = 0.5
		_HologramDistortionScale ("Hologram: Distortion Scale", Float) = 10
		[Toggle(_ENABLEGLITCH_ON)] _EnableGlitch ("Enable Glitch", Float) = 0
		_GlitchFade ("Glitch: Fade", Range(0, 1)) = 1
		_GlitchMaskMin ("Glitch: Mask Min", Range(0, 1)) = 0.4
		_GlitchMaskScale ("Glitch: Mask Scale", Vector) = (0,0.2,0,0)
		_GlitchMaskSpeed ("Glitch: Mask Speed", Vector) = (0,4,0,0)
		_GlitchHueSpeed ("Glitch: Hue Speed", Float) = 1
		_GlitchBrightness ("Glitch: Brightness", Float) = 4
		_GlitchNoiseScale ("Glitch: Noise Scale", Vector) = (0,3,0,0)
		_GlitchNoiseSpeed ("Glitch: Noise Speed", Vector) = (0,1,0,0)
		_GlitchDistortion ("Glitch: Distortion", Vector) = (0.1,0,0,0)
		_GlitchDistortionScale ("Glitch: Distortion Scale", Vector) = (0,3,0,0)
		_GlitchDistortionSpeed ("Glitch: Distortion Speed", Vector) = (0,1,0,0)
		[Toggle(_ENABLEFROZEN_ON)] _EnableFrozen ("Enable Frozen", Float) = 0
		_FrozenFade ("Frozen: Fade", Range(0, 1)) = 1
		[HDR] _FrozenTint ("Frozen: Tint", Vector) = (1.819608,4.611765,5.992157,0)
		_FrozenContrast ("Frozen: Contrast", Float) = 2
		[HDR] _FrozenSnowColor ("Frozen: Snow Color", Vector) = (1.123529,1.373203,1.498039,0)
		_FrozenSnowContrast ("Frozen: Snow Contrast", Float) = 1
		_FrozenSnowDensity ("Frozen: Snow Density", Range(0, 1)) = 0.25
		_FrozenSnowScale ("Frozen: Snow Scale", Vector) = (0.1,0.1,0,0)
		[HDR] _FrozenHighlightColor ("Frozen: Highlight Color", Vector) = (1.797647,4.604501,5.992157,1)
		_FrozenHighlightContrast ("Frozen: Highlight Contrast", Float) = 2
		_FrozenHighlightDensity ("Frozen: Highlight Density", Range(0, 1)) = 1
		_FrozenHighlightSpeed ("Frozen: Highlight Speed", Vector) = (0.1,0.1,0,0)
		_FrozenHighlightScale ("Frozen: Highlight Scale", Vector) = (0.2,0.2,0,0)
		_FrozenHighlightDistortion ("Frozen: Highlight Distortion", Vector) = (0.5,0.5,0,0)
		_FrozenHighlightDistortionSpeed ("Frozen: Highlight Distortion Speed", Vector) = (-0.05,-0.05,0,0)
		_FrozenHighlightDistortionScale ("Frozen: Highlight Distortion Scale", Vector) = (0.2,0.2,0,0)
		[Toggle(_ENABLERAINBOW_ON)] _EnableRainbow ("Enable Rainbow", Float) = 0
		_RainbowFade ("Rainbow: Fade", Range(0, 1)) = 1
		_RainbowMask ("Rainbow: Shader Mask", 2D) = "white" {}
		_RainbowBrightness ("Rainbow: Brightness", Float) = 2
		_RainbowSaturation ("Rainbow: Saturation", Range(0, 1)) = 1
		_RainbowContrast ("Rainbow: Contrast", Float) = 1
		_RainbowSpeed ("Rainbow: Speed", Float) = 1
		_RainbowDensity ("Rainbow: Density", Float) = 0.5
		_RainbowCenter ("Rainbow: Center", Vector) = (0,0,0,0)
		_RainbowNoiseScale ("Rainbow: Noise Scale", Vector) = (0.2,0.2,0,0)
		_RainbowNoiseFactor ("Rainbow: Noise Factor", Float) = 0.2
		[Toggle(_ENABLECAMOUFLAGE_ON)] _EnableCamouflage ("Enable Camouflage", Float) = 0
		_CamouflageFade ("Camouflage: Fade", Range(0, 1)) = 1
		[NoScaleOffset] _CamouflageShaderMask ("Camouflage: Shader Mask", 2D) = "white" {}
		_CamouflageBaseColor ("Camouflage: Base Color", Vector) = (0.7450981,0.7254902,0.5686275,0)
		_CamouflageContrast ("Camouflage: Contrast", Float) = 1
		_CamouflageColorA ("Camouflage: Color A", Vector) = (0.627451,0.5882353,0.4313726,0)
		_CamouflageDensityA ("Camouflage: Density A", Range(0, 1)) = 0.4
		_CamouflageSmoothnessA ("Camouflage: Smoothness A", Range(0, 1)) = 0.2
		_CamouflageNoiseScaleA ("Camouflage: Noise Scale A", Vector) = (0.25,0.25,0,0)
		_CamouflageColorB ("Camouflage: Color B", Vector) = (0.4705882,0.4313726,0.3137255,0)
		_CamouflageDensityB ("Camouflage: Density B", Range(0, 1)) = 0.4
		_CamouflageSmoothnessB ("Camouflage: Smoothness B", Range(0, 1)) = 0.2
		_CamouflageNoiseScaleB ("Camouflage: Noise Scale B", Vector) = (0.25,0.25,0,0)
		[Toggle] _CamouflageAnimated ("Camouflage: Animated", Float) = 0
		_CamouflageAnimationSpeed ("Camouflage: Animation Speed", Vector) = (0.1,0.1,0,0)
		_CamouflageDistortionIntensity ("Camouflage: Distortion Intensity", Vector) = (0.1,0.1,0,0)
		_CamouflageDistortionScale ("Camouflage: Distortion Scale", Vector) = (0.5,0.5,0,0)
		[Toggle(_ENABLEMETAL_ON)] _EnableMetal ("Enable Metal", Float) = 0
		_MetalFade ("Metal: Fade", Range(0, 1)) = 1
		[NoScaleOffset] _MetalShaderMask ("Metal: Shader Mask", 2D) = "white" {}
		[HDR] _MetalColor ("Metal: Color", Vector) = (5.992157,3.639216,0.3137255,1)
		_MetalContrast ("Metal: Contrast", Float) = 2
		[HDR] _MetalHighlightColor ("Metal: Highlight Color", Vector) = (5.992157,3.796078,0.6588235,1)
		_MetalHighlightDensity ("Metal: Highlight Density", Range(0, 1)) = 1
		_MetalHighlightContrast ("Metal: Highlight Contrast", Float) = 2
		_MetalNoiseScale ("Metal: Noise Scale", Vector) = (0.25,0.25,0,0)
		_MetalNoiseSpeed ("Metal: Noise Speed", Vector) = (0.05,0.05,0,0)
		_MetalNoiseDistortionScale ("Metal: Noise Distortion Scale", Vector) = (0.2,0.2,0,0)
		_MetalNoiseDistortionSpeed ("Metal: Noise Distortion Speed", Vector) = (-0.05,-0.05,0,0)
		_MetalNoiseDistortion ("Metal: Noise Distortion", Vector) = (0.5,0.5,0,0)
		[Toggle(_ENABLESHINE_ON)] _EnableShine ("Enable Shine", Float) = 0
		_ShineFade ("Shine: Fade", Range(0, 1)) = 1
		[NoScaleOffset] _ShineShaderMask ("Shine: Shader Mask", 2D) = "white" {}
		[HDR] _ShineColor ("Shine: Color", Vector) = (11.98431,11.98431,11.98431,0)
		_ShineSaturation ("Shine: Saturation", Range(0, 1)) = 0.5
		_ShineContrast ("Shine: Contrast", Float) = 2
		_ShineSmoothness ("Shine: Smoothness", Float) = 2
		_ShineSpeed ("Shine: Speed", Float) = 0.1
		_ShineScale ("Shine: Scale", Float) = 0.05
		_ShineWidth ("Shine: Width", Range(0, 2)) = 0.1
		_ShineRotation ("Shine: Rotation", Range(0, 360)) = 0
		[Toggle(_ENABLEBURN_ON)] _EnableBurn ("Enable Burn", Float) = 0
		_BurnFade ("Burn: Fade", Range(0, 1)) = 1
		_BurnPosition ("Burn: Position", Vector) = (0,5,0,0)
		_BurnRadius ("Burn: Radius", Float) = 5
		[HDR] _BurnEdgeColor ("Burn: Edge Color", Vector) = (11.98431,1.129412,0.1254902,0)
		_BurnWidth ("Burn: Width", Float) = 0.1
		_BurnEdgeNoiseScale ("Burn: Edge Noise Scale", Vector) = (0.3,0.3,0,0)
		_BurnEdgeNoiseFactor ("Burn: Edge Noise Factor", Float) = 0.5
		[HDR] _BurnInsideColor ("Burn: Inside Color", Vector) = (0.75,0.5625,0.525,0)
		_BurnInsideContrast ("Burn: Inside Contrast", Float) = 2
		[HDR] _BurnInsideNoiseColor ("Burn: Inside Noise Color", Vector) = (3084.047,257.0039,0,0)
		_BurnInsideNoiseFactor ("Burn: Inside Noise Factor", Float) = 0.05
		_BurnInsideNoiseScale ("Burn: Inside Noise Scale", Vector) = (0.5,0.5,0,0)
		_BurnSwirlFactor ("Burn: Swirl Factor", Float) = 1
		_BurnSwirlNoiseScale ("Burn: Swirl Noise Scale", Vector) = (0.1,0.1,0,0)
		[Toggle(_ENABLEPOISON_ON)] _EnablePoison ("Enable Poison", Float) = 0
		_PoisonFade ("Poison: Fade", Range(0, 1)) = 1
		[HDR] _PoisonColor ("Poison: Color", Vector) = (0.3137255,2.996078,0.3137255,0)
		_PoisonDensity ("Poison: Density", Float) = 3
		_PoisonRecolorFactor ("Poison: Recolor Factor", Range(0, 1)) = 0.5
		_PoisonShiftSpeed ("Poison: Shift Speed", Float) = 0.2
		_PoisonNoiseBrightness ("Poison: Noise Brightness", Float) = 1
		_PoisonNoiseScale ("Poison: Noise Scale", Vector) = (0.2,0.2,0,0)
		_PoisonNoiseSpeed ("Poison: Noise Speed", Vector) = (0,-0.2,0,0)
		[Toggle(_ENABLEFULLALPHADISSOLVE_ON)] _EnableFullAlphaDissolve ("Enable Full Alpha Dissolve", Float) = 0
		_FullAlphaDissolveFade ("Full Alpha Dissolve: Fade", Range(0, 1)) = 0.5
		_FullAlphaDissolveWidth ("Full Alpha Dissolve: Width", Float) = 0.5
		_FullAlphaDissolveNoiseScale ("Full Alpha Dissolve: Noise Scale", Vector) = (0.1,0.1,0,0)
		[Toggle(_ENABLEFULLGLOWDISSOLVE_ON)] _EnableFullGlowDissolve ("Enable Full Glow Dissolve", Float) = 0
		_FullGlowDissolveFade ("Full Glow Dissolve: Fade", Range(0, 1)) = 0.5
		_FullGlowDissolveWidth ("Full Glow Dissolve: Width", Float) = 0.5
		[HDR] _FullGlowDissolveEdgeColor ("Full Glow Dissolve: Edge Color", Vector) = (11.98431,0.627451,0.627451,0)
		_FullGlowDissolveNoiseScale ("Full Glow Dissolve: Noise Scale", Vector) = (0.1,0.1,0,0)
		[Toggle(_ENABLESOURCEALPHADISSOLVE_ON)] _EnableSourceAlphaDissolve ("Enable Source Alpha Dissolve", Float) = 0
		_SourceAlphaDissolveFade ("Source Alpha Dissolve: Fade", Float) = 1
		_SourceAlphaDissolvePosition ("Source Alpha Dissolve: Position", Vector) = (0,0,0,0)
		_SourceAlphaDissolveWidth ("Source Alpha Dissolve: Width", Float) = 0.2
		_SourceAlphaDissolveNoiseScale ("Source Alpha Dissolve: Noise Scale", Vector) = (0.3,0.3,0,0)
		_SourceAlphaDissolveNoiseFactor ("Source Alpha Dissolve: Noise Factor", Float) = 0.2
		[Toggle] _SourceAlphaDissolveInvert ("Source Alpha Dissolve: Invert", Float) = 0
		[Toggle(_ENABLESOURCEGLOWDISSOLVE_ON)] _EnableSourceGlowDissolve ("Enable Source Glow Dissolve", Float) = 0
		_SourceGlowDissolveFade ("Source Glow Dissolve: Fade", Float) = 1
		_SourceGlowDissolvePosition ("Source Glow Dissolve: Position", Vector) = (0,0,0,0)
		_SourceGlowDissolveWidth ("Source Glow Dissolve: Width", Float) = 0.1
		[HDR] _SourceGlowDissolveEdgeColor ("Source Glow Dissolve: Edge Color", Vector) = (11.98431,0.627451,0.627451,0)
		_SourceGlowDissolveNoiseScale ("Source Glow Dissolve: Noise Scale", Vector) = (0.3,0.3,0,0)
		_SourceGlowDissolveNoiseFactor ("Source Glow Dissolve: Noise Factor", Float) = 0.2
		[Toggle] _SourceGlowDissolveInvert ("Source Glow Dissolve: Invert", Float) = 0
		[Toggle(_ENABLEHALFTONE_ON)] _EnableHalftone ("Enable Halftone", Float) = 0
		_HalftoneFade ("Halftone: Fade", Float) = 1
		_HalftonePosition ("Halftone: Position", Vector) = (0,0,0,0)
		_HalftoneTiling ("Halftone: Tiling", Float) = 4
		_HalftoneFadeWidth ("Halftone: Width", Float) = 1.5
		[Toggle] _HalftoneInvert ("Halftone: Invert", Float) = 0
		[Toggle(_ENABLEDIRECTIONALALPHAFADE_ON)] _EnableDirectionalAlphaFade ("Enable Directional Alpha Fade", Float) = 0
		_DirectionalAlphaFadeFade ("Directional Alpha Fade: Fade", Float) = 0
		_DirectionalAlphaFadeRotation ("Directional Alpha Fade: Rotation", Range(0, 360)) = 0
		_DirectionalAlphaFadeWidth ("Directional Alpha Fade: Width", Float) = 0.2
		_DirectionalAlphaFadeNoiseScale ("Directional Alpha Fade: Noise Scale", Vector) = (0.3,0.3,0,0)
		_DirectionalAlphaFadeNoiseFactor ("Directional Alpha Fade: Noise Factor", Float) = 0.2
		[Toggle] _DirectionalAlphaFadeInvert ("Directional Alpha Fade: Invert", Float) = 0
		[Toggle(_ENABLEDIRECTIONALGLOWFADE_ON)] _EnableDirectionalGlowFade ("Enable Directional Glow Fade", Float) = 0
		_DirectionalGlowFadeFade ("Directional Glow Fade: Fade", Float) = 0
		_DirectionalGlowFadeRotation ("Directional Glow Fade: Rotation", Range(0, 360)) = 0
		[HDR] _DirectionalGlowFadeEdgeColor ("Directional Glow Fade: Edge Color", Vector) = (11.98431,0.6901961,0.6901961,0)
		_DirectionalGlowFadeWidth ("Directional Glow Fade: Width", Float) = 0.1
		_DirectionalGlowFadeNoiseScale ("Directional Glow Fade: Noise Scale", Vector) = (0.4,0.4,0,0)
		_DirectionalGlowFadeNoiseFactor ("Directional Glow Fade: Noise Factor", Float) = 0.2
		[Toggle] _DirectionalGlowFadeInvert ("Directional Glow Fade: Invert", Float) = 0
		[Toggle(_ENABLEDIRECTIONALDISTORTION_ON)] _EnableDirectionalDistortion ("Enable Directional Distortion", Float) = 0
		_DirectionalDistortionFade ("Directional Distortion: Fade", Float) = 0
		_DirectionalDistortionRotation ("Directional Distortion: Rotation", Range(0, 360)) = 0
		_DirectionalDistortionWidth ("Directional Distortion: Width", Float) = 0.5
		_DirectionalDistortionNoiseScale ("Directional Distortion: Noise Scale", Vector) = (0.4,0.4,0,0)
		_DirectionalDistortionNoiseFactor ("Directional Distortion: Noise Factor", Float) = 0.2
		_DirectionalDistortionDistortion ("Directional Distortion: Distortion", Vector) = (0,0.1,0,0)
		_DirectionalDistortionRandomDirection ("Directional Distortion: Random Direction", Range(0, 1)) = 0.1
		_DirectionalDistortionDistortionScale ("Directional Distortion: Distortion Scale", Vector) = (1,1,0,0)
		[Toggle] _DirectionalDistortionInvert ("Directional Distortion: Invert", Float) = 0
		[Toggle(_ENABLEFULLDISTORTION_ON)] _EnableFullDistortion ("Enable Full Distortion", Float) = 0
		_FullDistortionFade ("Full Distortion: Fade", Range(0, 1)) = 1
		_FullDistortionDistortion ("Full Distortion: Distortion", Vector) = (0.2,0.2,0,0)
		_FullDistortionNoiseScale ("Full Distortion: Noise Scale", Vector) = (0.5,0.5,0,0)
		[Toggle(_ENABLEPIXELATE_ON)] _EnablePixelate ("Enable Pixelate", Float) = 0
		_PixelateFade ("Pixelate: Fade", Range(0, 1)) = 1
		_PixelatePixelDensity ("Pixelate: Pixel Density", Float) = 16
		[Toggle(_ENABLESQUEEZE_ON)] _EnableSqueeze ("Enable Squeeze", Float) = 0
		_SqueezeFade ("Squeeze: Fade", Range(0, 1)) = 1
		_SqueezeScale ("Squeeze: Scale", Vector) = (2,0,0,0)
		_SqueezePower ("Squeeze: Power", Float) = 1
		_SqueezeCenter ("Squeeze: Center", Vector) = (0.5,0.5,0,0)
		[Toggle(_ENABLEUVDISTORT_ON)] _EnableUVDistort ("Enable UV Distort", Float) = 0
		_UVDistortFade ("UV Distort: Fade", Range(0, 1)) = 1
		[NoScaleOffset] _UVDistortShaderMask ("UV Distort: Shader Mask", 2D) = "white" {}
		_UVDistortFrom ("UV Distort: From", Vector) = (-0.02,-0.02,0,0)
		_UVDistortTo ("UV Distort: To", Vector) = (0.02,0.02,0,0)
		_UVDistortSpeed ("UV Distort: Speed", Vector) = (2,2,0,0)
		_UVDistortNoiseScale ("UV Distort: Noise Scale", Vector) = (0.1,0.1,0,0)
		[Toggle(_ENABLEUVSCROLL_ON)] _EnableUVScroll ("Enable UV Scroll", Float) = 0
		_UVScrollSpeed ("UV Scroll: Speed", Vector) = (0.2,0,0,0)
		[Toggle(_ENABLEUVROTATE_ON)] _EnableUVRotate ("Enable UV Rotate", Float) = 0
		_UVRotateSpeed ("UV Rotate: Speed", Float) = 1
		_UVRotatePivot ("UV Rotate: Pivot", Vector) = (0.5,0.5,0,0)
		[Toggle(_ENABLESINEROTATE_ON)] _EnableSineRotate ("Enable Sine Rotate", Float) = 0
		_SineRotateFade ("Sine Rotate: Fade", Range(0, 1)) = 1
		_SineRotateAngle ("Sine Rotate: Angle", Float) = 15
		_SineRotateFrequency ("Sine Rotate: Frequency", Float) = 1
		_SineRotatePivot ("Sine Rotate: Pivot", Vector) = (0.5,0.5,0,0)
		[Toggle(_ENABLEUVSCALE_ON)] _EnableUVScale ("Enable UV Scale", Float) = 0
		_UVScaleScale ("UV Scale: Scale", Vector) = (1,1,0,0)
		_UVScalePivot ("UV Scale: Pivot", Vector) = (0.5,0.5,0,0)
		[Toggle(_ENABLESINEMOVE_ON)] _EnableSineMove ("Enable Sine Move", Float) = 0
		_SineMoveFade ("Sine Move: Fade", Range(0, 1)) = 1
		_SineMoveOffset ("Sine Move: Offset", Vector) = (0,0.5,0,0)
		_SineMoveFrequency ("Sine Move: Frequency", Vector) = (1,1,0,0)
		[Toggle(_ENABLEVIBRATE_ON)] _EnableVibrate ("Enable Vibrate", Float) = 0
		_VibrateFade ("Vibrate: Fade", Range(0, 1)) = 1
		_VibrateOffset ("Vibrate: Offset", Float) = 0.04
		_VibrateFrequency ("Vibrate: Frequency", Float) = 100
		_VibrateRotation ("Vibrate: Rotation", Float) = 4
		[Toggle(_ENABLEWIND_ON)] _EnableWind ("Enable Wind", Float) = 0
		_WindRotation ("Wind: Rotation", Float) = 0
		_WindMaxRotation ("Wind: Max Rotation", Float) = 2
		_WindRotationWindFactor ("Wind: Rotation Wind Factor", Float) = 1
		_WindSquishFactor ("Wind: Squish Factor", Float) = 0.3
		_WindSquishWindFactor ("Wind: Squish Wind Factor", Range(0, 1)) = 0
		[Toggle(_WINDISPARALLAX_ON)] _WindIsParallax ("Wind: Is Parallax", Float) = 0
		_WindXPosition ("Wind: X Position", Float) = 0
		_WindFlip ("Wind: Flip", Float) = 0
		[Toggle(_ENABLESQUISH2_ON)] _EnableSquish2 ("Enable Squish", Float) = 0
		_SquishFade ("Squish: Fade", Range(0, 1)) = 1
		_SquishStretch ("Squish: Stretch", Float) = 0.1
		_SquishSquish ("Squish: Squish", Float) = 0.1
		_SquishFlip ("Squish: Flip", Float) = 0
		[Toggle(_ENABLECHECKERBOARD_ON)] _EnableCheckerboard ("Enable Checkerboard", Float) = 0
		_CheckerboardDarken ("Checkerboard: Darken", Range(0, 1)) = 0.5
		_CheckerboardTiling ("Checkerboard: Tiling", Float) = 1
		[Toggle(_ENABLEFLAME_ON)] _EnableFlame ("Enable Flame", Float) = 0
		_FlameBrightness ("Flame: Brightness", Float) = 10
		_FlameSmooth ("Flame: Smooth", Float) = 2
		_FlameRadius ("Flame: Radius", Float) = 0.2
		_FlameSpeed ("Flame: Speed", Vector) = (0,-0.5,0,0)
		_FlameNoiseFactor ("Flame: Noise Factor", Float) = 2.5
		_FlameNoiseHeightFactor ("Flame: Noise Height Factor", Float) = 1.5
		_FlameNoiseScale ("Flame: Noise Scale", Vector) = (1.2,0.8,0,0)
		[Toggle(_ENABLESMOKE_ON)] _EnableSmoke ("Enable Smoke", Float) = 0
		_SmokeAlpha ("Smoke: Alpha", Range(0, 1)) = 1
		_SmokeSmoothness ("Smoke: Smoothness", Float) = 1
		_SmokeNoiseScale ("Smoke: Noise Scale", Float) = 0.5
		_SmokeNoiseFactor ("Smoke: Noise Factor", Range(0, 1)) = 0.4
		_SmokeDarkEdge ("Smoke: Dark Edge", Range(0, 1.5)) = 1
		[Toggle] _SmokeVertexSeed ("Smoke: Vertex Seed", Float) = 0
		[Toggle(_ENABLECUSTOMFADE_ON)] _EnableCustomFade ("Enable Custom Fade", Float) = 0
		_CustomFadeFadeMask ("Custom Fade: Fade Mask", 2D) = "white" {}
		_CustomFadeSmoothness ("Custom Fade: Smoothness", Float) = 2
		_CustomFadeNoiseScale ("Custom Fade: Noise Scale", Vector) = (1,1,0,0)
		_CustomFadeNoiseFactor ("Custom Fade: Noise Factor", Range(0, 0.5)) = 0
		_CustomFadeAlpha ("Custom Fade: Alpha", Range(0, 1)) = 1
		[HideInInspector] _texcoord ("", 2D) = "white" {}
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType"="Opaque" }
		LOD 200

		Pass
		{
			HLSLPROGRAM
			#pragma vertex vert
			#pragma fragment frag

			float4x4 unity_ObjectToWorld;
			float4x4 unity_MatrixVP;
			float4 _MainTex_ST;

			struct Vertex_Stage_Input
			{
				float4 pos : POSITION;
				float2 uv : TEXCOORD0;
			};

			struct Vertex_Stage_Output
			{
				float2 uv : TEXCOORD0;
				float4 pos : SV_POSITION;
			};

			Vertex_Stage_Output vert(Vertex_Stage_Input input)
			{
				Vertex_Stage_Output output;
				output.uv = (input.uv.xy * _MainTex_ST.xy) + _MainTex_ST.zw;
				output.pos = mul(unity_MatrixVP, mul(unity_ObjectToWorld, input.pos));
				return output;
			}

			Texture2D<float4> _MainTex;
			SamplerState sampler_MainTex;
			float4 _Color;

			struct Fragment_Stage_Input
			{
				float2 uv : TEXCOORD0;
			};

			float4 frag(Fragment_Stage_Input input) : SV_TARGET
			{
				return _MainTex.Sample(sampler_MainTex, input.uv.xy) * _Color;
			}

			ENDHLSL
		}
	}
	//CustomEditor "SpriteShadersUltimate.UberShaderGUI"
}