//
// Copyright (c) Microsoft. All rights reserved.
// This code is licensed under the MIT License (MIT).
// THIS CODE IS PROVIDED *AS IS* WITHOUT WARRANTY OF
// ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING ANY
// IMPLIED WARRANTIES OF FITNESS FOR A PARTICULAR
// PURPOSE, MERCHANTABILITY, OR NON-INFRINGEMENT.
//
// Developed by Minigraph
//
// Author(s):	James Stanard	

#include "ShaderUtility.hlsli"

Texture2D<float3>	ColorTex	: register(t0);

SamplerState BilinearFilter : register(s0);

float3 main( float4 position : SV_Position, float2 uv : TexCoord0 ) : SV_Target0
{
	return LinearToFrameBufferFormat( ColorTex.SampleLevel( BilinearFilter, uv, 0 ), 1);
}