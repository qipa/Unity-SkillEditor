﻿Shader "Custom/Character/Cartoon_Base" {
	Properties {
		//--- base params
		_Color ("Color", Color) = (1,1,1,1)
		_MainTex ("Albedo (RGB)", 2D) = "white" {}
		_Ramp("Ramp",2d)=""{}
		//--- light params
		_LightColor("Light Color" , Color) = (1,1,1,1)
		_LightIntensity("Light Intensity",float) = 1
		_LightDir("Light Direction" , Vector) = (-0.17,10.07,5.06,0)
		//--- rim params
		_RimColor("RimColor",color) = (1,1,1,1)
		_RimPower("RimPower",Range(0.01,0.5)) = .2
		// normal
		// _NormalMap("NormalMap",2d) = ""{}
	}
	SubShader {
		Tags { "RenderType"="Opaque" }
		LOD 200
		
		CGPROGRAM
		#pragma surface surf Ramp noforwardadd nolightmap nodirlightmap exclude_path:prepass novertexlights  approxview halfasview
		#include "Cartoon.cginc"
		
		ENDCG
	}
	FallBack "Mobile/Diffuse"
}
