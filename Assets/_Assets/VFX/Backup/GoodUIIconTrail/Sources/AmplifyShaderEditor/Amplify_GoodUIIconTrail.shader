Shader "AmplifyShader/GoodUIIconTrail" {
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
		_ColorOverlay ("Color Overlay", Vector) = (1,1,1,1)
		_GlobalAlphaIntensity ("Global Alpha Intensity", Range(0, 5)) = 2
		_GlobalAlphaFalloff ("Global Alpha Falloff", Range(1, 5)) = 1
		_TrailLengthFalloff ("Trail Length Falloff", Range(1, 10)) = 1.5
		_HighLightIntensity ("High Light Intensity", Range(0, 3)) = 0.1
		_HighLightFalloff ("High Light Falloff", Range(1, 5)) = 1
		_TimeSpeed ("Time Speed", Range(0, 5)) = 1
		[IntRange] _TrailNumber ("Trail Number", Range(1, 4)) = 2
		[Toggle(_USECLOCKWISE_ON)] _UseClockwise ("Use Clockwise ?", Float) = 0
		[Toggle(_ENABLESECONDALPHASHADE_ON)] _EnableSecondAlphaShade ("Enable Second AlphaShade", Float) = 0
		[Toggle(_INVERTSECONDALPHASHADE_ON)] _InvertSecondAlphaShade ("Invert Second AlphaShade?", Float) = 0
		[Toggle(_USEDISTORTION_ON)] _UseDistortion ("Use Distortion?", Float) = 0
		_DistortionIntensity ("Distortion Intensity", Range(0, 0.25)) = 0
		_BaseTexture ("Base Texture", 2D) = "white" {}
		_RotatingTexture ("Rotating Texture", 2D) = "white" {}
		_SecondIconAlphaTexture ("Second Icon Alpha Texture", 2D) = "white" {}
		[HideInInspector] _T_CloudNoise ("T_CloudNoise", 2D) = "white" {}
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
	//CustomEditor "ASEMaterialInspector"
}