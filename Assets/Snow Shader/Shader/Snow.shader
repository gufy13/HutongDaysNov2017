// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:2,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:32719,y:32712,varname:node_4013,prsc:2|diff-5770-OUT,spec-5686-OUT,gloss-3129-OUT,normal-3863-OUT;n:type:ShaderForge.SFN_Lerp,id:5770,x:32150,y:32189,varname:node_5770,prsc:2|A-5793-OUT,B-6806-OUT,T-3465-OUT;n:type:ShaderForge.SFN_OneMinus,id:5580,x:31201,y:32786,varname:node_5580,prsc:2|IN-2641-OUT;n:type:ShaderForge.SFN_Tex2d,id:618,x:31759,y:32027,ptovrint:False,ptlb:Snow texture,ptin:_Snowtexture,varname:node_618,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:a165ce609039f0b4990b9430a86e4ff1,ntxv:0,isnm:False|UVIN-288-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:2068,x:31759,y:32235,ptovrint:False,ptlb:Base Texture,ptin:_BaseTexture,varname:_snow_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False;n:type:ShaderForge.SFN_ConstantClamp,id:3465,x:32139,y:32647,varname:node_3465,prsc:2,min:0,max:1|IN-7473-OUT;n:type:ShaderForge.SFN_NormalVector,id:870,x:30768,y:33078,prsc:2,pt:True;n:type:ShaderForge.SFN_ComponentMask,id:2641,x:30962,y:33089,varname:node_2641,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-870-OUT;n:type:ShaderForge.SFN_Tex2d,id:6113,x:31913,y:33814,ptovrint:False,ptlb: Base Normals,ptin:_BaseNormals,varname:_snow_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Slider,id:8248,x:31081,y:32627,ptovrint:False,ptlb:Snow Vertical blending,ptin:_SnowVerticalblending,varname:node_8248,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:5,cur:1,max:0;n:type:ShaderForge.SFN_Lerp,id:3863,x:32314,y:33653,varname:node_3863,prsc:2|A-6113-RGB,B-934-OUT,T-8050-OUT;n:type:ShaderForge.SFN_Tex2d,id:1595,x:31897,y:33489,ptovrint:False,ptlb:Snow Normals,ptin:_SnowNormals,varname:node_1595,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:92ff32764464c514891d7526209a3a9f,ntxv:3,isnm:True|UVIN-288-UVOUT;n:type:ShaderForge.SFN_Multiply,id:5386,x:31494,y:32726,varname:node_5386,prsc:2|A-8248-OUT,B-5580-OUT;n:type:ShaderForge.SFN_Power,id:6825,x:31727,y:32726,varname:node_6825,prsc:2|VAL-5386-OUT,EXP-7161-OUT;n:type:ShaderForge.SFN_Vector1,id:7161,x:31516,y:32922,varname:node_7161,prsc:2,v1:10;n:type:ShaderForge.SFN_NormalVector,id:7455,x:30924,y:33666,prsc:2,pt:False;n:type:ShaderForge.SFN_ComponentMask,id:3593,x:31135,y:33666,varname:node_3593,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-7455-OUT;n:type:ShaderForge.SFN_Power,id:1261,x:31369,y:33763,varname:node_1261,prsc:2|VAL-3593-OUT,EXP-6365-OUT;n:type:ShaderForge.SFN_Vector1,id:6365,x:31135,y:33914,varname:node_6365,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:717,x:31568,y:33700,varname:node_717,prsc:2|A-5375-OUT,B-1261-OUT;n:type:ShaderForge.SFN_Vector1,id:5375,x:31369,y:33641,varname:node_5375,prsc:2,v1:10;n:type:ShaderForge.SFN_ConstantClamp,id:8050,x:31737,y:33700,varname:node_8050,prsc:2,min:0,max:1|IN-717-OUT;n:type:ShaderForge.SFN_Slider,id:2914,x:31212,y:33291,ptovrint:False,ptlb:Snow Specular intensity,ptin:_SnowSpecularintensity,varname:node_2914,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:3;n:type:ShaderForge.SFN_Lerp,id:8830,x:31663,y:33203,varname:node_8830,prsc:2|A-695-OUT,B-2914-OUT,T-2641-OUT;n:type:ShaderForge.SFN_Vector3,id:1366,x:31409,y:33159,varname:node_1366,prsc:2,v1:0,v2:0,v3:0;n:type:ShaderForge.SFN_Tex2d,id:2312,x:31272,y:32987,ptovrint:False,ptlb:Base Specular map,ptin:_BaseSpecularmap,varname:node_2312,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:3514,x:31319,y:32330,ptovrint:False,ptlb:Snow General blending,ptin:_SnowGeneralblending,varname:node_3514,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:0,max:0;n:type:ShaderForge.SFN_Multiply,id:5793,x:31900,y:31830,varname:node_5793,prsc:2|A-2629-RGB,B-618-RGB;n:type:ShaderForge.SFN_Color,id:2629,x:31667,y:31734,ptovrint:False,ptlb:Snow color,ptin:_Snowcolor,varname:node_2629,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:6806,x:31961,y:32409,varname:node_6806,prsc:2|A-2068-RGB,B-3854-RGB;n:type:ShaderForge.SFN_Color,id:3854,x:31759,y:32440,ptovrint:False,ptlb:Base Texture color,ptin:_BaseTexturecolor,varname:node_3854,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Add,id:7473,x:32003,y:32868,varname:node_7473,prsc:2|A-3514-OUT,B-6825-OUT;n:type:ShaderForge.SFN_Color,id:3615,x:31663,y:33046,ptovrint:False,ptlb:Snow Specular color,ptin:_SnowSpecularcolor,varname:node_3615,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:5686,x:31868,y:33122,varname:node_5686,prsc:2|A-3615-RGB,B-8830-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:695,x:31479,y:33024,ptovrint:False,ptlb:Activate base specular map,ptin:_Activatebasespecularmap,varname:node_695,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-1366-OUT,B-2312-RGB;n:type:ShaderForge.SFN_Slider,id:8403,x:30098,y:33198,ptovrint:False,ptlb:Size multiply,ptin:_Sizemultiply,varname:node_8403,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.05,cur:0.5,max:1;n:type:ShaderForge.SFN_UVTile,id:288,x:30614,y:33310,varname:node_288,prsc:2|UVIN-8838-UVOUT,WDT-8403-OUT,HGT-8403-OUT,TILE-6731-OUT;n:type:ShaderForge.SFN_Vector1,id:6731,x:30157,y:33319,varname:node_6731,prsc:2,v1:0;n:type:ShaderForge.SFN_TexCoord,id:8838,x:30361,y:33065,varname:node_8838,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:4385,x:31062,y:34072,ptovrint:False,ptlb:Snow Specular,ptin:_SnowSpecular,varname:node_7252,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:9d0ee18006f81c44aa47591454cdb273,ntxv:0,isnm:False|UVIN-288-UVOUT;n:type:ShaderForge.SFN_Add,id:2876,x:31329,y:34197,varname:node_2876,prsc:2|A-4385-R,B-4059-OUT;n:type:ShaderForge.SFN_Vector1,id:4059,x:31117,y:34341,varname:node_4059,prsc:2,v1:0;n:type:ShaderForge.SFN_Clamp01,id:3129,x:31534,y:34258,varname:node_3129,prsc:2|IN-2876-OUT;n:type:ShaderForge.SFN_Lerp,id:934,x:31741,y:34404,varname:node_934,prsc:2|A-1595-RGB,B-5252-RGB,T-9793-OUT;n:type:ShaderForge.SFN_Vector1,id:9793,x:31462,y:34468,varname:node_9793,prsc:2,v1:0.4;n:type:ShaderForge.SFN_Tex2d,id:5252,x:31537,y:34574,ptovrint:False,ptlb:Snow Normals (second pass),ptin:_SnowNormalssecondpass,varname:node_5618,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:fe1100c7d726e6944b3041e82e2a5b63,ntxv:3,isnm:True|UVIN-288-UVOUT;proporder:3854-2068-6113-695-2312-618-1595-5252-4385-2629-8248-3514-3615-2914-8403;pass:END;sub:END;*/

Shader "Snow/SnowShader" {
    Properties {
        _BaseTexturecolor ("Base Texture color", Color) = (1,1,1,1)
        _BaseTexture ("Base Texture", 2D) = "black" {}
        _BaseNormals (" Base Normals", 2D) = "bump" {}
        [MaterialToggle] _Activatebasespecularmap ("Activate base specular map", Float ) = 0
        _BaseSpecularmap ("Base Specular map", 2D) = "white" {}
        _Snowtexture ("Snow texture", 2D) = "white" {}
        _SnowNormals ("Snow Normals", 2D) = "bump" {}
        _SnowNormalssecondpass ("Snow Normals (second pass)", 2D) = "bump" {}
        _SnowSpecular ("Snow Specular", 2D) = "white" {}
        _Snowcolor ("Snow color", Color) = (1,1,1,1)
        _SnowVerticalblending ("Snow Vertical blending", Range(5, 0)) = 1
        _SnowGeneralblending ("Snow General blending", Range(1, 0)) = 0
        _SnowSpecularcolor ("Snow Specular color", Color) = (1,1,1,1)
        _SnowSpecularintensity ("Snow Specular intensity", Range(0, 3)) = 0
        _Sizemultiply ("Size multiply", Range(0.05, 1)) = 0.5
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform sampler2D _Snowtexture; uniform float4 _Snowtexture_ST;
            uniform sampler2D _BaseTexture; uniform float4 _BaseTexture_ST;
            uniform sampler2D _BaseNormals; uniform float4 _BaseNormals_ST;
            uniform float _SnowVerticalblending;
            uniform sampler2D _SnowNormals; uniform float4 _SnowNormals_ST;
            uniform float _SnowSpecularintensity;
            uniform sampler2D _BaseSpecularmap; uniform float4 _BaseSpecularmap_ST;
            uniform float _SnowGeneralblending;
            uniform float4 _Snowcolor;
            uniform float4 _BaseTexturecolor;
            uniform float4 _SnowSpecularcolor;
            uniform fixed _Activatebasespecularmap;
            uniform float _Sizemultiply;
            uniform sampler2D _SnowSpecular; uniform float4 _SnowSpecular_ST;
            uniform sampler2D _SnowNormalssecondpass; uniform float4 _SnowNormalssecondpass_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD10;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _BaseNormals_var = UnpackNormal(tex2D(_BaseNormals,TRANSFORM_TEX(i.uv0, _BaseNormals)));
                float node_6731 = 0.0;
                float2 node_288_tc_rcp = float2(1.0,1.0)/float2( _Sizemultiply, _Sizemultiply );
                float node_288_ty = floor(node_6731 * node_288_tc_rcp.x);
                float node_288_tx = node_6731 - _Sizemultiply * node_288_ty;
                float2 node_288 = (i.uv0 + float2(node_288_tx, node_288_ty)) * node_288_tc_rcp;
                float3 _SnowNormals_var = UnpackNormal(tex2D(_SnowNormals,TRANSFORM_TEX(node_288, _SnowNormals)));
                float3 _SnowNormalssecondpass_var = UnpackNormal(tex2D(_SnowNormalssecondpass,TRANSFORM_TEX(node_288, _SnowNormalssecondpass)));
                float3 normalLocal = lerp(_BaseNormals_var.rgb,lerp(_SnowNormals_var.rgb,_SnowNormalssecondpass_var.rgb,0.4),clamp((10.0*pow(i.normalDir.g,2.0)),0,1));
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float4 _SnowSpecular_var = tex2D(_SnowSpecular,TRANSFORM_TEX(node_288, _SnowSpecular));
                float gloss = saturate((_SnowSpecular_var.r+0.0));
                float specPow = exp2( gloss * 10.0+1.0);
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float4 _BaseSpecularmap_var = tex2D(_BaseSpecularmap,TRANSFORM_TEX(i.uv0, _BaseSpecularmap));
                float node_2641 = normalDirection.g;
                float3 specularColor = (_SnowSpecularcolor.rgb*lerp(lerp( float3(0,0,0), _BaseSpecularmap_var.rgb, _Activatebasespecularmap ),float3(_SnowSpecularintensity,_SnowSpecularintensity,_SnowSpecularintensity),node_2641));
                float3 directSpecular = 1 * pow(max(0,dot(reflect(-lightDirection, normalDirection),viewDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float4 _Snowtexture_var = tex2D(_Snowtexture,TRANSFORM_TEX(node_288, _Snowtexture));
                float4 _BaseTexture_var = tex2D(_BaseTexture,TRANSFORM_TEX(i.uv0, _BaseTexture));
                float3 diffuseColor = lerp((_Snowcolor.rgb*_Snowtexture_var.rgb),(_BaseTexture_var.rgb*_BaseTexturecolor.rgb),clamp((_SnowGeneralblending+pow((_SnowVerticalblending*(1.0 - node_2641)),10.0)),0,1));
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform sampler2D _Snowtexture; uniform float4 _Snowtexture_ST;
            uniform sampler2D _BaseTexture; uniform float4 _BaseTexture_ST;
            uniform sampler2D _BaseNormals; uniform float4 _BaseNormals_ST;
            uniform float _SnowVerticalblending;
            uniform sampler2D _SnowNormals; uniform float4 _SnowNormals_ST;
            uniform float _SnowSpecularintensity;
            uniform sampler2D _BaseSpecularmap; uniform float4 _BaseSpecularmap_ST;
            uniform float _SnowGeneralblending;
            uniform float4 _Snowcolor;
            uniform float4 _BaseTexturecolor;
            uniform float4 _SnowSpecularcolor;
            uniform fixed _Activatebasespecularmap;
            uniform float _Sizemultiply;
            uniform sampler2D _SnowSpecular; uniform float4 _SnowSpecular_ST;
            uniform sampler2D _SnowNormalssecondpass; uniform float4 _SnowNormalssecondpass_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _BaseNormals_var = UnpackNormal(tex2D(_BaseNormals,TRANSFORM_TEX(i.uv0, _BaseNormals)));
                float node_6731 = 0.0;
                float2 node_288_tc_rcp = float2(1.0,1.0)/float2( _Sizemultiply, _Sizemultiply );
                float node_288_ty = floor(node_6731 * node_288_tc_rcp.x);
                float node_288_tx = node_6731 - _Sizemultiply * node_288_ty;
                float2 node_288 = (i.uv0 + float2(node_288_tx, node_288_ty)) * node_288_tc_rcp;
                float3 _SnowNormals_var = UnpackNormal(tex2D(_SnowNormals,TRANSFORM_TEX(node_288, _SnowNormals)));
                float3 _SnowNormalssecondpass_var = UnpackNormal(tex2D(_SnowNormalssecondpass,TRANSFORM_TEX(node_288, _SnowNormalssecondpass)));
                float3 normalLocal = lerp(_BaseNormals_var.rgb,lerp(_SnowNormals_var.rgb,_SnowNormalssecondpass_var.rgb,0.4),clamp((10.0*pow(i.normalDir.g,2.0)),0,1));
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float4 _SnowSpecular_var = tex2D(_SnowSpecular,TRANSFORM_TEX(node_288, _SnowSpecular));
                float gloss = saturate((_SnowSpecular_var.r+0.0));
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float4 _BaseSpecularmap_var = tex2D(_BaseSpecularmap,TRANSFORM_TEX(i.uv0, _BaseSpecularmap));
                float node_2641 = normalDirection.g;
                float3 specularColor = (_SnowSpecularcolor.rgb*lerp(lerp( float3(0,0,0), _BaseSpecularmap_var.rgb, _Activatebasespecularmap ),float3(_SnowSpecularintensity,_SnowSpecularintensity,_SnowSpecularintensity),node_2641));
                float3 directSpecular = attenColor * pow(max(0,dot(reflect(-lightDirection, normalDirection),viewDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _Snowtexture_var = tex2D(_Snowtexture,TRANSFORM_TEX(node_288, _Snowtexture));
                float4 _BaseTexture_var = tex2D(_BaseTexture,TRANSFORM_TEX(i.uv0, _BaseTexture));
                float3 diffuseColor = lerp((_Snowcolor.rgb*_Snowtexture_var.rgb),(_BaseTexture_var.rgb*_BaseTexturecolor.rgb),clamp((_SnowGeneralblending+pow((_SnowVerticalblending*(1.0 - node_2641)),10.0)),0,1));
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform sampler2D _Snowtexture; uniform float4 _Snowtexture_ST;
            uniform sampler2D _BaseTexture; uniform float4 _BaseTexture_ST;
            uniform float _SnowVerticalblending;
            uniform float _SnowSpecularintensity;
            uniform sampler2D _BaseSpecularmap; uniform float4 _BaseSpecularmap_ST;
            uniform float _SnowGeneralblending;
            uniform float4 _Snowcolor;
            uniform float4 _BaseTexturecolor;
            uniform float4 _SnowSpecularcolor;
            uniform fixed _Activatebasespecularmap;
            uniform float _Sizemultiply;
            uniform sampler2D _SnowSpecular; uniform float4 _SnowSpecular_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float node_6731 = 0.0;
                float2 node_288_tc_rcp = float2(1.0,1.0)/float2( _Sizemultiply, _Sizemultiply );
                float node_288_ty = floor(node_6731 * node_288_tc_rcp.x);
                float node_288_tx = node_6731 - _Sizemultiply * node_288_ty;
                float2 node_288 = (i.uv0 + float2(node_288_tx, node_288_ty)) * node_288_tc_rcp;
                float4 _Snowtexture_var = tex2D(_Snowtexture,TRANSFORM_TEX(node_288, _Snowtexture));
                float4 _BaseTexture_var = tex2D(_BaseTexture,TRANSFORM_TEX(i.uv0, _BaseTexture));
                float node_2641 = normalDirection.g;
                float3 diffColor = lerp((_Snowcolor.rgb*_Snowtexture_var.rgb),(_BaseTexture_var.rgb*_BaseTexturecolor.rgb),clamp((_SnowGeneralblending+pow((_SnowVerticalblending*(1.0 - node_2641)),10.0)),0,1));
                float4 _BaseSpecularmap_var = tex2D(_BaseSpecularmap,TRANSFORM_TEX(i.uv0, _BaseSpecularmap));
                float3 specColor = (_SnowSpecularcolor.rgb*lerp(lerp( float3(0,0,0), _BaseSpecularmap_var.rgb, _Activatebasespecularmap ),float3(_SnowSpecularintensity,_SnowSpecularintensity,_SnowSpecularintensity),node_2641));
                float4 _SnowSpecular_var = tex2D(_SnowSpecular,TRANSFORM_TEX(node_288, _SnowSpecular));
                float roughness = 1.0 - saturate((_SnowSpecular_var.r+0.0));
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
