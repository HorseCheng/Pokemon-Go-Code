Shader "Niantic/Gym Arena/Turf" {
Properties {
_MainTex ("Base (RGB)", 2D) = "white" { }
_TextureScale ("Texture Scale", Float) = 0.01
_AdditiveRamp ("1D Gradient Ramp (RGB) - Additive", 2D) = "black" { }
_MultiplyRamp ("1D Gradient Ramp (RGB) - Multiply", 2D) = "white" { }
_NearDist ("Near Distance", Float) = 100
_FarDist ("Far Distance", Float) = 250
_OffsetFactor ("Z Offset Factor", Float) = 0
_OffsetUnits ("Z Offset Units", Float) = 0
}
SubShader {
 LOD 150
 Tags { "RenderType" = "Opaque" }
 Pass {
  LOD 150
  Tags { "RenderType" = "Opaque" "SHADOWSUPPORT" = "true" }
  GpuProgramID 41500
Program "vp" {
SubProgram "gles hw_tier00 " {
Keywords { "DIRECTIONAL" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp vec4 tmpvar_3;
  tmpvar_3 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_3.xz * _TextureScale);
  highp vec4 v_4;
  v_4.x = unity_MatrixV[0].z;
  v_4.y = unity_MatrixV[1].z;
  v_4.z = unity_MatrixV[2].z;
  v_4.w = unity_MatrixV[3].z;
  highp float tmpvar_5;
  tmpvar_5 = clamp (((
    -(dot (v_4.xyz, ((tmpvar_3.xyz / tmpvar_3.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_5;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier01 " {
Keywords { "DIRECTIONAL" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp vec4 tmpvar_3;
  tmpvar_3 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_3.xz * _TextureScale);
  highp vec4 v_4;
  v_4.x = unity_MatrixV[0].z;
  v_4.y = unity_MatrixV[1].z;
  v_4.z = unity_MatrixV[2].z;
  v_4.w = unity_MatrixV[3].z;
  highp float tmpvar_5;
  tmpvar_5 = clamp (((
    -(dot (v_4.xyz, ((tmpvar_3.xyz / tmpvar_3.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_5;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier02 " {
Keywords { "DIRECTIONAL" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp vec4 tmpvar_3;
  tmpvar_3 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_3.xz * _TextureScale);
  highp vec4 v_4;
  v_4.x = unity_MatrixV[0].z;
  v_4.y = unity_MatrixV[1].z;
  v_4.z = unity_MatrixV[2].z;
  v_4.w = unity_MatrixV[3].z;
  highp float tmpvar_5;
  tmpvar_5 = clamp (((
    -(dot (v_4.xyz, ((tmpvar_3.xyz / tmpvar_3.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_5;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier00 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp vec4 tmpvar_3;
  tmpvar_3 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_3.xz * _TextureScale);
  highp vec4 v_4;
  v_4.x = unity_MatrixV[0].z;
  v_4.y = unity_MatrixV[1].z;
  v_4.z = unity_MatrixV[2].z;
  v_4.w = unity_MatrixV[3].z;
  highp float tmpvar_5;
  tmpvar_5 = clamp (((
    -(dot (v_4.xyz, ((tmpvar_3.xyz / tmpvar_3.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_5;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier01 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp vec4 tmpvar_3;
  tmpvar_3 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_3.xz * _TextureScale);
  highp vec4 v_4;
  v_4.x = unity_MatrixV[0].z;
  v_4.y = unity_MatrixV[1].z;
  v_4.z = unity_MatrixV[2].z;
  v_4.w = unity_MatrixV[3].z;
  highp float tmpvar_5;
  tmpvar_5 = clamp (((
    -(dot (v_4.xyz, ((tmpvar_3.xyz / tmpvar_3.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_5;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier02 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp vec4 tmpvar_3;
  tmpvar_3 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_3.xz * _TextureScale);
  highp vec4 v_4;
  v_4.x = unity_MatrixV[0].z;
  v_4.y = unity_MatrixV[1].z;
  v_4.z = unity_MatrixV[2].z;
  v_4.w = unity_MatrixV[3].z;
  highp float tmpvar_5;
  tmpvar_5 = clamp (((
    -(dot (v_4.xyz, ((tmpvar_3.xyz / tmpvar_3.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_5;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier00 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp vec4 tmpvar_3;
  tmpvar_3 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_3.xz * _TextureScale);
  highp vec4 v_4;
  v_4.x = unity_MatrixV[0].z;
  v_4.y = unity_MatrixV[1].z;
  v_4.z = unity_MatrixV[2].z;
  v_4.w = unity_MatrixV[3].z;
  highp float tmpvar_5;
  tmpvar_5 = clamp (((
    -(dot (v_4.xyz, ((tmpvar_3.xyz / tmpvar_3.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_5;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier01 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp vec4 tmpvar_3;
  tmpvar_3 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_3.xz * _TextureScale);
  highp vec4 v_4;
  v_4.x = unity_MatrixV[0].z;
  v_4.y = unity_MatrixV[1].z;
  v_4.z = unity_MatrixV[2].z;
  v_4.w = unity_MatrixV[3].z;
  highp float tmpvar_5;
  tmpvar_5 = clamp (((
    -(dot (v_4.xyz, ((tmpvar_3.xyz / tmpvar_3.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_5;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier02 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp vec4 tmpvar_3;
  tmpvar_3 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_3.xz * _TextureScale);
  highp vec4 v_4;
  v_4.x = unity_MatrixV[0].z;
  v_4.y = unity_MatrixV[1].z;
  v_4.z = unity_MatrixV[2].z;
  v_4.w = unity_MatrixV[3].z;
  highp float tmpvar_5;
  tmpvar_5 = clamp (((
    -(dot (v_4.xyz, ((tmpvar_3.xyz / tmpvar_3.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_5;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier00 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp vec4 tmpvar_3;
  tmpvar_3 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_3.xz * _TextureScale);
  highp vec4 v_4;
  v_4.x = unity_MatrixV[0].z;
  v_4.y = unity_MatrixV[1].z;
  v_4.z = unity_MatrixV[2].z;
  v_4.w = unity_MatrixV[3].z;
  highp float tmpvar_5;
  tmpvar_5 = clamp (((
    -(dot (v_4.xyz, ((tmpvar_3.xyz / tmpvar_3.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_5;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier01 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp vec4 tmpvar_3;
  tmpvar_3 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_3.xz * _TextureScale);
  highp vec4 v_4;
  v_4.x = unity_MatrixV[0].z;
  v_4.y = unity_MatrixV[1].z;
  v_4.z = unity_MatrixV[2].z;
  v_4.w = unity_MatrixV[3].z;
  highp float tmpvar_5;
  tmpvar_5 = clamp (((
    -(dot (v_4.xyz, ((tmpvar_3.xyz / tmpvar_3.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_5;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier02 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp vec4 tmpvar_3;
  tmpvar_3 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_3.xz * _TextureScale);
  highp vec4 v_4;
  v_4.x = unity_MatrixV[0].z;
  v_4.y = unity_MatrixV[1].z;
  v_4.z = unity_MatrixV[2].z;
  v_4.w = unity_MatrixV[3].z;
  highp float tmpvar_5;
  tmpvar_5 = clamp (((
    -(dot (v_4.xyz, ((tmpvar_3.xyz / tmpvar_3.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_5;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier00 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp vec4 tmpvar_3;
  tmpvar_3 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_3.xz * _TextureScale);
  highp vec4 v_4;
  v_4.x = unity_MatrixV[0].z;
  v_4.y = unity_MatrixV[1].z;
  v_4.z = unity_MatrixV[2].z;
  v_4.w = unity_MatrixV[3].z;
  highp float tmpvar_5;
  tmpvar_5 = clamp (((
    -(dot (v_4.xyz, ((tmpvar_3.xyz / tmpvar_3.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_5;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier01 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp vec4 tmpvar_3;
  tmpvar_3 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_3.xz * _TextureScale);
  highp vec4 v_4;
  v_4.x = unity_MatrixV[0].z;
  v_4.y = unity_MatrixV[1].z;
  v_4.z = unity_MatrixV[2].z;
  v_4.w = unity_MatrixV[3].z;
  highp float tmpvar_5;
  tmpvar_5 = clamp (((
    -(dot (v_4.xyz, ((tmpvar_3.xyz / tmpvar_3.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_5;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier02 " {
Keywords { "DIRECTIONAL" "VERTEXLIGHT_ON" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp vec4 tmpvar_3;
  tmpvar_3 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_3.xz * _TextureScale);
  highp vec4 v_4;
  v_4.x = unity_MatrixV[0].z;
  v_4.y = unity_MatrixV[1].z;
  v_4.z = unity_MatrixV[2].z;
  v_4.w = unity_MatrixV[3].z;
  highp float tmpvar_5;
  tmpvar_5 = clamp (((
    -(dot (v_4.xyz, ((tmpvar_3.xyz / tmpvar_3.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_5;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier00 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp vec4 tmpvar_3;
  tmpvar_3 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_3.xz * _TextureScale);
  highp vec4 v_4;
  v_4.x = unity_MatrixV[0].z;
  v_4.y = unity_MatrixV[1].z;
  v_4.z = unity_MatrixV[2].z;
  v_4.w = unity_MatrixV[3].z;
  highp float tmpvar_5;
  tmpvar_5 = clamp (((
    -(dot (v_4.xyz, ((tmpvar_3.xyz / tmpvar_3.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_5;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier01 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp vec4 tmpvar_3;
  tmpvar_3 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_3.xz * _TextureScale);
  highp vec4 v_4;
  v_4.x = unity_MatrixV[0].z;
  v_4.y = unity_MatrixV[1].z;
  v_4.z = unity_MatrixV[2].z;
  v_4.w = unity_MatrixV[3].z;
  highp float tmpvar_5;
  tmpvar_5 = clamp (((
    -(dot (v_4.xyz, ((tmpvar_3.xyz / tmpvar_3.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_5;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier02 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp vec4 tmpvar_3;
  tmpvar_3 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_3.xz * _TextureScale);
  highp vec4 v_4;
  v_4.x = unity_MatrixV[0].z;
  v_4.y = unity_MatrixV[1].z;
  v_4.z = unity_MatrixV[2].z;
  v_4.w = unity_MatrixV[3].z;
  highp float tmpvar_5;
  tmpvar_5 = clamp (((
    -(dot (v_4.xyz, ((tmpvar_3.xyz / tmpvar_3.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_5;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier00 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp vec4 tmpvar_3;
  tmpvar_3 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_3.xz * _TextureScale);
  highp vec4 v_4;
  v_4.x = unity_MatrixV[0].z;
  v_4.y = unity_MatrixV[1].z;
  v_4.z = unity_MatrixV[2].z;
  v_4.w = unity_MatrixV[3].z;
  highp float tmpvar_5;
  tmpvar_5 = clamp (((
    -(dot (v_4.xyz, ((tmpvar_3.xyz / tmpvar_3.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_5;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier01 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp vec4 tmpvar_3;
  tmpvar_3 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_3.xz * _TextureScale);
  highp vec4 v_4;
  v_4.x = unity_MatrixV[0].z;
  v_4.y = unity_MatrixV[1].z;
  v_4.z = unity_MatrixV[2].z;
  v_4.w = unity_MatrixV[3].z;
  highp float tmpvar_5;
  tmpvar_5 = clamp (((
    -(dot (v_4.xyz, ((tmpvar_3.xyz / tmpvar_3.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_5;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier02 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "VERTEXLIGHT_ON" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp vec4 tmpvar_3;
  tmpvar_3 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_3.xz * _TextureScale);
  highp vec4 v_4;
  v_4.x = unity_MatrixV[0].z;
  v_4.y = unity_MatrixV[1].z;
  v_4.z = unity_MatrixV[2].z;
  v_4.w = unity_MatrixV[3].z;
  highp float tmpvar_5;
  tmpvar_5 = clamp (((
    -(dot (v_4.xyz, ((tmpvar_3.xyz / tmpvar_3.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_5;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier00 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp vec4 tmpvar_3;
  tmpvar_3 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_3.xz * _TextureScale);
  highp vec4 v_4;
  v_4.x = unity_MatrixV[0].z;
  v_4.y = unity_MatrixV[1].z;
  v_4.z = unity_MatrixV[2].z;
  v_4.w = unity_MatrixV[3].z;
  highp float tmpvar_5;
  tmpvar_5 = clamp (((
    -(dot (v_4.xyz, ((tmpvar_3.xyz / tmpvar_3.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_5;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier01 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp vec4 tmpvar_3;
  tmpvar_3 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_3.xz * _TextureScale);
  highp vec4 v_4;
  v_4.x = unity_MatrixV[0].z;
  v_4.y = unity_MatrixV[1].z;
  v_4.z = unity_MatrixV[2].z;
  v_4.w = unity_MatrixV[3].z;
  highp float tmpvar_5;
  tmpvar_5 = clamp (((
    -(dot (v_4.xyz, ((tmpvar_3.xyz / tmpvar_3.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_5;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier02 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  tmpvar_2.w = 1.0;
  tmpvar_2.xyz = _glesVertex.xyz;
  highp vec4 tmpvar_3;
  tmpvar_3 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_3.xz * _TextureScale);
  highp vec4 v_4;
  v_4.x = unity_MatrixV[0].z;
  v_4.y = unity_MatrixV[1].z;
  v_4.z = unity_MatrixV[2].z;
  v_4.w = unity_MatrixV[3].z;
  highp float tmpvar_5;
  tmpvar_5 = clamp (((
    -(dot (v_4.xyz, ((tmpvar_3.xyz / tmpvar_3.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_5;
  gl_Position = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_2));
  xlv_TEXCOORD0 = tmpvar_1;
}


#endif
#ifdef FRAGMENT
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier00 " {
Keywords { "DIRECTIONAL" "FOG_LINEAR" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 unity_FogParams;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  tmpvar_2 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  highp vec4 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_4.xz * _TextureScale);
  highp vec4 v_5;
  v_5.x = unity_MatrixV[0].z;
  v_5.y = unity_MatrixV[1].z;
  v_5.z = unity_MatrixV[2].z;
  v_5.w = unity_MatrixV[3].z;
  highp float tmpvar_6;
  tmpvar_6 = clamp (((
    -(dot (v_5.xyz, ((tmpvar_4.xyz / tmpvar_4.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_6;
  gl_Position = tmpvar_2;
  xlv_TEXCOORD0 = tmpvar_1;
  xlv_TEXCOORD1 = ((tmpvar_2.z * unity_FogParams.z) + unity_FogParams.w);
}


#endif
#ifdef FRAGMENT
uniform lowp vec4 unity_FogColor;
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  highp float tmpvar_2;
  tmpvar_2 = clamp (xlv_TEXCOORD1, 0.0, 1.0);
  col_1.xyz = mix (unity_FogColor.xyz, col_1.xyz, vec3(tmpvar_2));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier01 " {
Keywords { "DIRECTIONAL" "FOG_LINEAR" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 unity_FogParams;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  tmpvar_2 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  highp vec4 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_4.xz * _TextureScale);
  highp vec4 v_5;
  v_5.x = unity_MatrixV[0].z;
  v_5.y = unity_MatrixV[1].z;
  v_5.z = unity_MatrixV[2].z;
  v_5.w = unity_MatrixV[3].z;
  highp float tmpvar_6;
  tmpvar_6 = clamp (((
    -(dot (v_5.xyz, ((tmpvar_4.xyz / tmpvar_4.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_6;
  gl_Position = tmpvar_2;
  xlv_TEXCOORD0 = tmpvar_1;
  xlv_TEXCOORD1 = ((tmpvar_2.z * unity_FogParams.z) + unity_FogParams.w);
}


#endif
#ifdef FRAGMENT
uniform lowp vec4 unity_FogColor;
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  highp float tmpvar_2;
  tmpvar_2 = clamp (xlv_TEXCOORD1, 0.0, 1.0);
  col_1.xyz = mix (unity_FogColor.xyz, col_1.xyz, vec3(tmpvar_2));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier02 " {
Keywords { "DIRECTIONAL" "FOG_LINEAR" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 unity_FogParams;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  tmpvar_2 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  highp vec4 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_4.xz * _TextureScale);
  highp vec4 v_5;
  v_5.x = unity_MatrixV[0].z;
  v_5.y = unity_MatrixV[1].z;
  v_5.z = unity_MatrixV[2].z;
  v_5.w = unity_MatrixV[3].z;
  highp float tmpvar_6;
  tmpvar_6 = clamp (((
    -(dot (v_5.xyz, ((tmpvar_4.xyz / tmpvar_4.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_6;
  gl_Position = tmpvar_2;
  xlv_TEXCOORD0 = tmpvar_1;
  xlv_TEXCOORD1 = ((tmpvar_2.z * unity_FogParams.z) + unity_FogParams.w);
}


#endif
#ifdef FRAGMENT
uniform lowp vec4 unity_FogColor;
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  highp float tmpvar_2;
  tmpvar_2 = clamp (xlv_TEXCOORD1, 0.0, 1.0);
  col_1.xyz = mix (unity_FogColor.xyz, col_1.xyz, vec3(tmpvar_2));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier00 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "FOG_LINEAR" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 unity_FogParams;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  tmpvar_2 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  highp vec4 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_4.xz * _TextureScale);
  highp vec4 v_5;
  v_5.x = unity_MatrixV[0].z;
  v_5.y = unity_MatrixV[1].z;
  v_5.z = unity_MatrixV[2].z;
  v_5.w = unity_MatrixV[3].z;
  highp float tmpvar_6;
  tmpvar_6 = clamp (((
    -(dot (v_5.xyz, ((tmpvar_4.xyz / tmpvar_4.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_6;
  gl_Position = tmpvar_2;
  xlv_TEXCOORD0 = tmpvar_1;
  xlv_TEXCOORD1 = ((tmpvar_2.z * unity_FogParams.z) + unity_FogParams.w);
}


#endif
#ifdef FRAGMENT
uniform lowp vec4 unity_FogColor;
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  highp float tmpvar_2;
  tmpvar_2 = clamp (xlv_TEXCOORD1, 0.0, 1.0);
  col_1.xyz = mix (unity_FogColor.xyz, col_1.xyz, vec3(tmpvar_2));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier01 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "FOG_LINEAR" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 unity_FogParams;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  tmpvar_2 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  highp vec4 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_4.xz * _TextureScale);
  highp vec4 v_5;
  v_5.x = unity_MatrixV[0].z;
  v_5.y = unity_MatrixV[1].z;
  v_5.z = unity_MatrixV[2].z;
  v_5.w = unity_MatrixV[3].z;
  highp float tmpvar_6;
  tmpvar_6 = clamp (((
    -(dot (v_5.xyz, ((tmpvar_4.xyz / tmpvar_4.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_6;
  gl_Position = tmpvar_2;
  xlv_TEXCOORD0 = tmpvar_1;
  xlv_TEXCOORD1 = ((tmpvar_2.z * unity_FogParams.z) + unity_FogParams.w);
}


#endif
#ifdef FRAGMENT
uniform lowp vec4 unity_FogColor;
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  highp float tmpvar_2;
  tmpvar_2 = clamp (xlv_TEXCOORD1, 0.0, 1.0);
  col_1.xyz = mix (unity_FogColor.xyz, col_1.xyz, vec3(tmpvar_2));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier02 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "FOG_LINEAR" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 unity_FogParams;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  tmpvar_2 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  highp vec4 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_4.xz * _TextureScale);
  highp vec4 v_5;
  v_5.x = unity_MatrixV[0].z;
  v_5.y = unity_MatrixV[1].z;
  v_5.z = unity_MatrixV[2].z;
  v_5.w = unity_MatrixV[3].z;
  highp float tmpvar_6;
  tmpvar_6 = clamp (((
    -(dot (v_5.xyz, ((tmpvar_4.xyz / tmpvar_4.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_6;
  gl_Position = tmpvar_2;
  xlv_TEXCOORD0 = tmpvar_1;
  xlv_TEXCOORD1 = ((tmpvar_2.z * unity_FogParams.z) + unity_FogParams.w);
}


#endif
#ifdef FRAGMENT
uniform lowp vec4 unity_FogColor;
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  highp float tmpvar_2;
  tmpvar_2 = clamp (xlv_TEXCOORD1, 0.0, 1.0);
  col_1.xyz = mix (unity_FogColor.xyz, col_1.xyz, vec3(tmpvar_2));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier00 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "FOG_LINEAR" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 unity_FogParams;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  tmpvar_2 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  highp vec4 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_4.xz * _TextureScale);
  highp vec4 v_5;
  v_5.x = unity_MatrixV[0].z;
  v_5.y = unity_MatrixV[1].z;
  v_5.z = unity_MatrixV[2].z;
  v_5.w = unity_MatrixV[3].z;
  highp float tmpvar_6;
  tmpvar_6 = clamp (((
    -(dot (v_5.xyz, ((tmpvar_4.xyz / tmpvar_4.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_6;
  gl_Position = tmpvar_2;
  xlv_TEXCOORD0 = tmpvar_1;
  xlv_TEXCOORD1 = ((tmpvar_2.z * unity_FogParams.z) + unity_FogParams.w);
}


#endif
#ifdef FRAGMENT
uniform lowp vec4 unity_FogColor;
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  highp float tmpvar_2;
  tmpvar_2 = clamp (xlv_TEXCOORD1, 0.0, 1.0);
  col_1.xyz = mix (unity_FogColor.xyz, col_1.xyz, vec3(tmpvar_2));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier01 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "FOG_LINEAR" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 unity_FogParams;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  tmpvar_2 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  highp vec4 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_4.xz * _TextureScale);
  highp vec4 v_5;
  v_5.x = unity_MatrixV[0].z;
  v_5.y = unity_MatrixV[1].z;
  v_5.z = unity_MatrixV[2].z;
  v_5.w = unity_MatrixV[3].z;
  highp float tmpvar_6;
  tmpvar_6 = clamp (((
    -(dot (v_5.xyz, ((tmpvar_4.xyz / tmpvar_4.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_6;
  gl_Position = tmpvar_2;
  xlv_TEXCOORD0 = tmpvar_1;
  xlv_TEXCOORD1 = ((tmpvar_2.z * unity_FogParams.z) + unity_FogParams.w);
}


#endif
#ifdef FRAGMENT
uniform lowp vec4 unity_FogColor;
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  highp float tmpvar_2;
  tmpvar_2 = clamp (xlv_TEXCOORD1, 0.0, 1.0);
  col_1.xyz = mix (unity_FogColor.xyz, col_1.xyz, vec3(tmpvar_2));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier02 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "FOG_LINEAR" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 unity_FogParams;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  tmpvar_2 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  highp vec4 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_4.xz * _TextureScale);
  highp vec4 v_5;
  v_5.x = unity_MatrixV[0].z;
  v_5.y = unity_MatrixV[1].z;
  v_5.z = unity_MatrixV[2].z;
  v_5.w = unity_MatrixV[3].z;
  highp float tmpvar_6;
  tmpvar_6 = clamp (((
    -(dot (v_5.xyz, ((tmpvar_4.xyz / tmpvar_4.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_6;
  gl_Position = tmpvar_2;
  xlv_TEXCOORD0 = tmpvar_1;
  xlv_TEXCOORD1 = ((tmpvar_2.z * unity_FogParams.z) + unity_FogParams.w);
}


#endif
#ifdef FRAGMENT
uniform lowp vec4 unity_FogColor;
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  highp float tmpvar_2;
  tmpvar_2 = clamp (xlv_TEXCOORD1, 0.0, 1.0);
  col_1.xyz = mix (unity_FogColor.xyz, col_1.xyz, vec3(tmpvar_2));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier00 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" "FOG_LINEAR" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 unity_FogParams;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  tmpvar_2 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  highp vec4 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_4.xz * _TextureScale);
  highp vec4 v_5;
  v_5.x = unity_MatrixV[0].z;
  v_5.y = unity_MatrixV[1].z;
  v_5.z = unity_MatrixV[2].z;
  v_5.w = unity_MatrixV[3].z;
  highp float tmpvar_6;
  tmpvar_6 = clamp (((
    -(dot (v_5.xyz, ((tmpvar_4.xyz / tmpvar_4.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_6;
  gl_Position = tmpvar_2;
  xlv_TEXCOORD0 = tmpvar_1;
  xlv_TEXCOORD1 = ((tmpvar_2.z * unity_FogParams.z) + unity_FogParams.w);
}


#endif
#ifdef FRAGMENT
uniform lowp vec4 unity_FogColor;
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  highp float tmpvar_2;
  tmpvar_2 = clamp (xlv_TEXCOORD1, 0.0, 1.0);
  col_1.xyz = mix (unity_FogColor.xyz, col_1.xyz, vec3(tmpvar_2));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier01 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" "FOG_LINEAR" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 unity_FogParams;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  tmpvar_2 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  highp vec4 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_4.xz * _TextureScale);
  highp vec4 v_5;
  v_5.x = unity_MatrixV[0].z;
  v_5.y = unity_MatrixV[1].z;
  v_5.z = unity_MatrixV[2].z;
  v_5.w = unity_MatrixV[3].z;
  highp float tmpvar_6;
  tmpvar_6 = clamp (((
    -(dot (v_5.xyz, ((tmpvar_4.xyz / tmpvar_4.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_6;
  gl_Position = tmpvar_2;
  xlv_TEXCOORD0 = tmpvar_1;
  xlv_TEXCOORD1 = ((tmpvar_2.z * unity_FogParams.z) + unity_FogParams.w);
}


#endif
#ifdef FRAGMENT
uniform lowp vec4 unity_FogColor;
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  highp float tmpvar_2;
  tmpvar_2 = clamp (xlv_TEXCOORD1, 0.0, 1.0);
  col_1.xyz = mix (unity_FogColor.xyz, col_1.xyz, vec3(tmpvar_2));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier02 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" "FOG_LINEAR" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 unity_FogParams;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  tmpvar_2 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  highp vec4 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_4.xz * _TextureScale);
  highp vec4 v_5;
  v_5.x = unity_MatrixV[0].z;
  v_5.y = unity_MatrixV[1].z;
  v_5.z = unity_MatrixV[2].z;
  v_5.w = unity_MatrixV[3].z;
  highp float tmpvar_6;
  tmpvar_6 = clamp (((
    -(dot (v_5.xyz, ((tmpvar_4.xyz / tmpvar_4.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_6;
  gl_Position = tmpvar_2;
  xlv_TEXCOORD0 = tmpvar_1;
  xlv_TEXCOORD1 = ((tmpvar_2.z * unity_FogParams.z) + unity_FogParams.w);
}


#endif
#ifdef FRAGMENT
uniform lowp vec4 unity_FogColor;
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  highp float tmpvar_2;
  tmpvar_2 = clamp (xlv_TEXCOORD1, 0.0, 1.0);
  col_1.xyz = mix (unity_FogColor.xyz, col_1.xyz, vec3(tmpvar_2));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier00 " {
Keywords { "DIRECTIONAL" "FOG_LINEAR" "VERTEXLIGHT_ON" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 unity_FogParams;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  tmpvar_2 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  highp vec4 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_4.xz * _TextureScale);
  highp vec4 v_5;
  v_5.x = unity_MatrixV[0].z;
  v_5.y = unity_MatrixV[1].z;
  v_5.z = unity_MatrixV[2].z;
  v_5.w = unity_MatrixV[3].z;
  highp float tmpvar_6;
  tmpvar_6 = clamp (((
    -(dot (v_5.xyz, ((tmpvar_4.xyz / tmpvar_4.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_6;
  gl_Position = tmpvar_2;
  xlv_TEXCOORD0 = tmpvar_1;
  xlv_TEXCOORD1 = ((tmpvar_2.z * unity_FogParams.z) + unity_FogParams.w);
}


#endif
#ifdef FRAGMENT
uniform lowp vec4 unity_FogColor;
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  highp float tmpvar_2;
  tmpvar_2 = clamp (xlv_TEXCOORD1, 0.0, 1.0);
  col_1.xyz = mix (unity_FogColor.xyz, col_1.xyz, vec3(tmpvar_2));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier01 " {
Keywords { "DIRECTIONAL" "FOG_LINEAR" "VERTEXLIGHT_ON" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 unity_FogParams;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  tmpvar_2 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  highp vec4 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_4.xz * _TextureScale);
  highp vec4 v_5;
  v_5.x = unity_MatrixV[0].z;
  v_5.y = unity_MatrixV[1].z;
  v_5.z = unity_MatrixV[2].z;
  v_5.w = unity_MatrixV[3].z;
  highp float tmpvar_6;
  tmpvar_6 = clamp (((
    -(dot (v_5.xyz, ((tmpvar_4.xyz / tmpvar_4.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_6;
  gl_Position = tmpvar_2;
  xlv_TEXCOORD0 = tmpvar_1;
  xlv_TEXCOORD1 = ((tmpvar_2.z * unity_FogParams.z) + unity_FogParams.w);
}


#endif
#ifdef FRAGMENT
uniform lowp vec4 unity_FogColor;
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  highp float tmpvar_2;
  tmpvar_2 = clamp (xlv_TEXCOORD1, 0.0, 1.0);
  col_1.xyz = mix (unity_FogColor.xyz, col_1.xyz, vec3(tmpvar_2));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier02 " {
Keywords { "DIRECTIONAL" "FOG_LINEAR" "VERTEXLIGHT_ON" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 unity_FogParams;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  tmpvar_2 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  highp vec4 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_4.xz * _TextureScale);
  highp vec4 v_5;
  v_5.x = unity_MatrixV[0].z;
  v_5.y = unity_MatrixV[1].z;
  v_5.z = unity_MatrixV[2].z;
  v_5.w = unity_MatrixV[3].z;
  highp float tmpvar_6;
  tmpvar_6 = clamp (((
    -(dot (v_5.xyz, ((tmpvar_4.xyz / tmpvar_4.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_6;
  gl_Position = tmpvar_2;
  xlv_TEXCOORD0 = tmpvar_1;
  xlv_TEXCOORD1 = ((tmpvar_2.z * unity_FogParams.z) + unity_FogParams.w);
}


#endif
#ifdef FRAGMENT
uniform lowp vec4 unity_FogColor;
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  highp float tmpvar_2;
  tmpvar_2 = clamp (xlv_TEXCOORD1, 0.0, 1.0);
  col_1.xyz = mix (unity_FogColor.xyz, col_1.xyz, vec3(tmpvar_2));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier00 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "FOG_LINEAR" "VERTEXLIGHT_ON" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 unity_FogParams;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  tmpvar_2 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  highp vec4 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_4.xz * _TextureScale);
  highp vec4 v_5;
  v_5.x = unity_MatrixV[0].z;
  v_5.y = unity_MatrixV[1].z;
  v_5.z = unity_MatrixV[2].z;
  v_5.w = unity_MatrixV[3].z;
  highp float tmpvar_6;
  tmpvar_6 = clamp (((
    -(dot (v_5.xyz, ((tmpvar_4.xyz / tmpvar_4.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_6;
  gl_Position = tmpvar_2;
  xlv_TEXCOORD0 = tmpvar_1;
  xlv_TEXCOORD1 = ((tmpvar_2.z * unity_FogParams.z) + unity_FogParams.w);
}


#endif
#ifdef FRAGMENT
uniform lowp vec4 unity_FogColor;
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  highp float tmpvar_2;
  tmpvar_2 = clamp (xlv_TEXCOORD1, 0.0, 1.0);
  col_1.xyz = mix (unity_FogColor.xyz, col_1.xyz, vec3(tmpvar_2));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier01 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "FOG_LINEAR" "VERTEXLIGHT_ON" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 unity_FogParams;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  tmpvar_2 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  highp vec4 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_4.xz * _TextureScale);
  highp vec4 v_5;
  v_5.x = unity_MatrixV[0].z;
  v_5.y = unity_MatrixV[1].z;
  v_5.z = unity_MatrixV[2].z;
  v_5.w = unity_MatrixV[3].z;
  highp float tmpvar_6;
  tmpvar_6 = clamp (((
    -(dot (v_5.xyz, ((tmpvar_4.xyz / tmpvar_4.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_6;
  gl_Position = tmpvar_2;
  xlv_TEXCOORD0 = tmpvar_1;
  xlv_TEXCOORD1 = ((tmpvar_2.z * unity_FogParams.z) + unity_FogParams.w);
}


#endif
#ifdef FRAGMENT
uniform lowp vec4 unity_FogColor;
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  highp float tmpvar_2;
  tmpvar_2 = clamp (xlv_TEXCOORD1, 0.0, 1.0);
  col_1.xyz = mix (unity_FogColor.xyz, col_1.xyz, vec3(tmpvar_2));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier02 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "FOG_LINEAR" "VERTEXLIGHT_ON" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 unity_FogParams;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  tmpvar_2 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  highp vec4 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_4.xz * _TextureScale);
  highp vec4 v_5;
  v_5.x = unity_MatrixV[0].z;
  v_5.y = unity_MatrixV[1].z;
  v_5.z = unity_MatrixV[2].z;
  v_5.w = unity_MatrixV[3].z;
  highp float tmpvar_6;
  tmpvar_6 = clamp (((
    -(dot (v_5.xyz, ((tmpvar_4.xyz / tmpvar_4.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_6;
  gl_Position = tmpvar_2;
  xlv_TEXCOORD0 = tmpvar_1;
  xlv_TEXCOORD1 = ((tmpvar_2.z * unity_FogParams.z) + unity_FogParams.w);
}


#endif
#ifdef FRAGMENT
uniform lowp vec4 unity_FogColor;
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  highp float tmpvar_2;
  tmpvar_2 = clamp (xlv_TEXCOORD1, 0.0, 1.0);
  col_1.xyz = mix (unity_FogColor.xyz, col_1.xyz, vec3(tmpvar_2));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier00 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "FOG_LINEAR" "VERTEXLIGHT_ON" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 unity_FogParams;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  tmpvar_2 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  highp vec4 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_4.xz * _TextureScale);
  highp vec4 v_5;
  v_5.x = unity_MatrixV[0].z;
  v_5.y = unity_MatrixV[1].z;
  v_5.z = unity_MatrixV[2].z;
  v_5.w = unity_MatrixV[3].z;
  highp float tmpvar_6;
  tmpvar_6 = clamp (((
    -(dot (v_5.xyz, ((tmpvar_4.xyz / tmpvar_4.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_6;
  gl_Position = tmpvar_2;
  xlv_TEXCOORD0 = tmpvar_1;
  xlv_TEXCOORD1 = ((tmpvar_2.z * unity_FogParams.z) + unity_FogParams.w);
}


#endif
#ifdef FRAGMENT
uniform lowp vec4 unity_FogColor;
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  highp float tmpvar_2;
  tmpvar_2 = clamp (xlv_TEXCOORD1, 0.0, 1.0);
  col_1.xyz = mix (unity_FogColor.xyz, col_1.xyz, vec3(tmpvar_2));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier01 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "FOG_LINEAR" "VERTEXLIGHT_ON" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 unity_FogParams;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  tmpvar_2 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  highp vec4 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_4.xz * _TextureScale);
  highp vec4 v_5;
  v_5.x = unity_MatrixV[0].z;
  v_5.y = unity_MatrixV[1].z;
  v_5.z = unity_MatrixV[2].z;
  v_5.w = unity_MatrixV[3].z;
  highp float tmpvar_6;
  tmpvar_6 = clamp (((
    -(dot (v_5.xyz, ((tmpvar_4.xyz / tmpvar_4.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_6;
  gl_Position = tmpvar_2;
  xlv_TEXCOORD0 = tmpvar_1;
  xlv_TEXCOORD1 = ((tmpvar_2.z * unity_FogParams.z) + unity_FogParams.w);
}


#endif
#ifdef FRAGMENT
uniform lowp vec4 unity_FogColor;
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  highp float tmpvar_2;
  tmpvar_2 = clamp (xlv_TEXCOORD1, 0.0, 1.0);
  col_1.xyz = mix (unity_FogColor.xyz, col_1.xyz, vec3(tmpvar_2));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier02 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "FOG_LINEAR" "VERTEXLIGHT_ON" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 unity_FogParams;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  tmpvar_2 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  highp vec4 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_4.xz * _TextureScale);
  highp vec4 v_5;
  v_5.x = unity_MatrixV[0].z;
  v_5.y = unity_MatrixV[1].z;
  v_5.z = unity_MatrixV[2].z;
  v_5.w = unity_MatrixV[3].z;
  highp float tmpvar_6;
  tmpvar_6 = clamp (((
    -(dot (v_5.xyz, ((tmpvar_4.xyz / tmpvar_4.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_6;
  gl_Position = tmpvar_2;
  xlv_TEXCOORD0 = tmpvar_1;
  xlv_TEXCOORD1 = ((tmpvar_2.z * unity_FogParams.z) + unity_FogParams.w);
}


#endif
#ifdef FRAGMENT
uniform lowp vec4 unity_FogColor;
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  highp float tmpvar_2;
  tmpvar_2 = clamp (xlv_TEXCOORD1, 0.0, 1.0);
  col_1.xyz = mix (unity_FogColor.xyz, col_1.xyz, vec3(tmpvar_2));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier00 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" "FOG_LINEAR" "VERTEXLIGHT_ON" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 unity_FogParams;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  tmpvar_2 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  highp vec4 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_4.xz * _TextureScale);
  highp vec4 v_5;
  v_5.x = unity_MatrixV[0].z;
  v_5.y = unity_MatrixV[1].z;
  v_5.z = unity_MatrixV[2].z;
  v_5.w = unity_MatrixV[3].z;
  highp float tmpvar_6;
  tmpvar_6 = clamp (((
    -(dot (v_5.xyz, ((tmpvar_4.xyz / tmpvar_4.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_6;
  gl_Position = tmpvar_2;
  xlv_TEXCOORD0 = tmpvar_1;
  xlv_TEXCOORD1 = ((tmpvar_2.z * unity_FogParams.z) + unity_FogParams.w);
}


#endif
#ifdef FRAGMENT
uniform lowp vec4 unity_FogColor;
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  highp float tmpvar_2;
  tmpvar_2 = clamp (xlv_TEXCOORD1, 0.0, 1.0);
  col_1.xyz = mix (unity_FogColor.xyz, col_1.xyz, vec3(tmpvar_2));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier01 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" "FOG_LINEAR" "VERTEXLIGHT_ON" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 unity_FogParams;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  tmpvar_2 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  highp vec4 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_4.xz * _TextureScale);
  highp vec4 v_5;
  v_5.x = unity_MatrixV[0].z;
  v_5.y = unity_MatrixV[1].z;
  v_5.z = unity_MatrixV[2].z;
  v_5.w = unity_MatrixV[3].z;
  highp float tmpvar_6;
  tmpvar_6 = clamp (((
    -(dot (v_5.xyz, ((tmpvar_4.xyz / tmpvar_4.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_6;
  gl_Position = tmpvar_2;
  xlv_TEXCOORD0 = tmpvar_1;
  xlv_TEXCOORD1 = ((tmpvar_2.z * unity_FogParams.z) + unity_FogParams.w);
}


#endif
#ifdef FRAGMENT
uniform lowp vec4 unity_FogColor;
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  highp float tmpvar_2;
  tmpvar_2 = clamp (xlv_TEXCOORD1, 0.0, 1.0);
  col_1.xyz = mix (unity_FogColor.xyz, col_1.xyz, vec3(tmpvar_2));
  gl_FragData[0] = col_1;
}


#endif
"
}
SubProgram "gles hw_tier02 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" "FOG_LINEAR" "VERTEXLIGHT_ON" }
"#version 100

#ifdef VERTEX
attribute vec4 _glesVertex;
uniform highp vec3 _WorldSpaceCameraPos;
uniform highp mat4 unity_ObjectToWorld;
uniform highp mat4 unity_MatrixV;
uniform highp mat4 unity_MatrixVP;
uniform highp vec4 unity_FogParams;
uniform mediump float _NearDist;
uniform mediump float _FarDist;
uniform mediump float _TextureScale;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  mediump vec3 tmpvar_1;
  highp vec4 tmpvar_2;
  highp vec4 tmpvar_3;
  tmpvar_3.w = 1.0;
  tmpvar_3.xyz = _glesVertex.xyz;
  tmpvar_2 = (unity_MatrixVP * (unity_ObjectToWorld * tmpvar_3));
  highp vec4 tmpvar_4;
  tmpvar_4 = (unity_ObjectToWorld * _glesVertex);
  tmpvar_1.xy = (tmpvar_4.xz * _TextureScale);
  highp vec4 v_5;
  v_5.x = unity_MatrixV[0].z;
  v_5.y = unity_MatrixV[1].z;
  v_5.z = unity_MatrixV[2].z;
  v_5.w = unity_MatrixV[3].z;
  highp float tmpvar_6;
  tmpvar_6 = clamp (((
    -(dot (v_5.xyz, ((tmpvar_4.xyz / tmpvar_4.w) - _WorldSpaceCameraPos)))
   - _NearDist) / (_FarDist - _NearDist)), 0.0, 1.0);
  tmpvar_1.z = tmpvar_6;
  gl_Position = tmpvar_2;
  xlv_TEXCOORD0 = tmpvar_1;
  xlv_TEXCOORD1 = ((tmpvar_2.z * unity_FogParams.z) + unity_FogParams.w);
}


#endif
#ifdef FRAGMENT
uniform lowp vec4 unity_FogColor;
uniform sampler2D _MainTex;
uniform sampler2D _AdditiveRamp;
uniform sampler2D _MultiplyRamp;
varying mediump vec3 xlv_TEXCOORD0;
varying highp float xlv_TEXCOORD1;
void main ()
{
  lowp vec4 col_1;
  col_1 = (texture2D (_MainTex, xlv_TEXCOORD0.xy) + texture2D (_AdditiveRamp, xlv_TEXCOORD0.zz));
  col_1 = (col_1 * texture2D (_MultiplyRamp, xlv_TEXCOORD0.zz));
  highp float tmpvar_2;
  tmpvar_2 = clamp (xlv_TEXCOORD1, 0.0, 1.0);
  col_1.xyz = mix (unity_FogColor.xyz, col_1.xyz, vec3(tmpvar_2));
  gl_FragData[0] = col_1;
}


#endif
"
}
}
Program "fp" {
SubProgram "gles hw_tier00 " {
Keywords { "DIRECTIONAL" }
""
}
SubProgram "gles hw_tier01 " {
Keywords { "DIRECTIONAL" }
""
}
SubProgram "gles hw_tier02 " {
Keywords { "DIRECTIONAL" }
""
}
SubProgram "gles hw_tier00 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
""
}
SubProgram "gles hw_tier01 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
""
}
SubProgram "gles hw_tier02 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
""
}
SubProgram "gles hw_tier00 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
""
}
SubProgram "gles hw_tier01 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
""
}
SubProgram "gles hw_tier02 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
""
}
SubProgram "gles hw_tier00 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" }
""
}
SubProgram "gles hw_tier01 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" }
""
}
SubProgram "gles hw_tier02 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" }
""
}
SubProgram "gles hw_tier00 " {
Keywords { "DIRECTIONAL" "FOG_LINEAR" }
""
}
SubProgram "gles hw_tier01 " {
Keywords { "DIRECTIONAL" "FOG_LINEAR" }
""
}
SubProgram "gles hw_tier02 " {
Keywords { "DIRECTIONAL" "FOG_LINEAR" }
""
}
SubProgram "gles hw_tier00 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "FOG_LINEAR" }
""
}
SubProgram "gles hw_tier01 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "FOG_LINEAR" }
""
}
SubProgram "gles hw_tier02 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "FOG_LINEAR" }
""
}
SubProgram "gles hw_tier00 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "FOG_LINEAR" }
""
}
SubProgram "gles hw_tier01 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "FOG_LINEAR" }
""
}
SubProgram "gles hw_tier02 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "FOG_LINEAR" }
""
}
SubProgram "gles hw_tier00 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" "FOG_LINEAR" }
""
}
SubProgram "gles hw_tier01 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" "FOG_LINEAR" }
""
}
SubProgram "gles hw_tier02 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTPROBE_SH" "FOG_LINEAR" }
""
}
}
}
}
}