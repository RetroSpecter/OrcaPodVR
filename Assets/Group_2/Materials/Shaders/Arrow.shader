// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Unlit/Arrow"
{
	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
		target ("Target", Vector) = (0,0,0,0)
	}
	SubShader
	{
		Tags { "Queue" = "Overlay" "RenderType" = "Transparent"}
		LOD 100
		Blend SrcAlpha One
		Ztest Always

		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
			};

			struct v2f
			{
				float2 uv : TEXCOORD0;
				UNITY_FOG_COORDS(1)
				float4 vertex : SV_POSITION;
				fixed4 color : COLOR;
			};

			sampler2D _MainTex;
			float4 _MainTex_ST;
			float4 target;
			static const float PI = 3.14159265f;

			v2f vert (appdata v)
			{
				v2f o;
				float4 viewPos = mul(UNITY_MATRIX_V, float4(target.xyz, 1));
				float4 dir = normalize(float4(viewPos.x, viewPos.y, 0, 0));
				float4 center = min(0.5, length(viewPos.xy)) * dir;
				float angle = acos(dot(dir.xyz, float3(0, 1, 0))) * (dir.x / -abs(dir.x));
				float4x4 rotation;
				rotation[0] = float4(cos(angle), -sin(angle), 0, 0);
				rotation[1] = float4(sin(angle), cos(angle), 0, 0);
				rotation[2] = float4(0, 0, 1, 0);
				rotation[3] = float4(0, 0, 0, 1);
				o.vertex = mul(UNITY_MATRIX_P, mul(rotation, v.vertex)  + center + float4(0,0,-3,0));
				//o.vertex = UnityObjectToClipPos(v.vertex);
				o.color.w = (max(min(acos(dot(viewPos.xyz / length(viewPos.xyz), float3(0, 0, -1))), PI/3), PI/6) - PI/6) / (PI/6);
				o.uv = TRANSFORM_TEX(v.uv, _MainTex);
				//UNITY_TRANSFER_FOG(o,o.vertex);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				// sample the texture
				fixed4 col = tex2D(_MainTex, i.uv);
				col.w *= 1 * i.color.w;
				// apply fog
				//UNITY_APPLY_FOG(i.fogCoord, col);
				return col;
			}
			ENDCG
		}
	}
}
