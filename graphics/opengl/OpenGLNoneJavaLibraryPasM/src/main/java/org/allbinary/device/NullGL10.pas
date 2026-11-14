{
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.device
unit NullGL10;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL10, GL;

type
  {AB:TYPES}
  TNullGL10 = class(TInterfacedObject, IGL10, IGL)
  public
    class var NULL_GL10: TNullGL10;
    function JavaObject: TObject;
    constructor Create;
        procedure glActiveTexture(texture: Integer); virtual;
        procedure glAlphaFunc(func: Integer; ref: Single); virtual;
        procedure glBindTexture(target: Integer; texture: Integer); virtual;
        procedure glBlendFunc(sfactor: Integer; dfactor: Integer); virtual;
        procedure glClear(mask: Integer); virtual;
        procedure glClearColor(red: Single; green: Single; blue: Single; alpha: Single); virtual;
        procedure glClearDepthf(depth: Single); virtual;
        procedure glClearStencil(s: Integer); virtual;
        procedure glClientActiveTexture(texture: Integer); virtual;
        procedure glColor4f(red: Single; green: Single; blue: Single; alpha: Single); virtual;
        procedure glColorMask(red: Boolean; green: Boolean; blue: Boolean; alpha: Boolean); virtual;
        procedure glColorPointer(size: Integer; type_: Integer; stride: Integer; pointer_: TBuffer); virtual;
        procedure glCompressedTexImage2D(target: Integer; level: Integer; internalformat: Integer; width: Integer; height: Integer; border: Integer; imageSize: Integer; data: TBuffer); virtual;
        procedure glCompressedTexSubImage2D(target: Integer; level: Integer; xoffset: Integer; yoffset: Integer; width: Integer; height: Integer; format: Integer; imageSize: Integer; data: TBuffer); virtual;
        procedure glCopyTexImage2D(target: Integer; level: Integer; internalformat: Integer; x: Integer; y: Integer; width: Integer; height: Integer; border: Integer); virtual;
        procedure glCopyTexSubImage2D(target: Integer; level: Integer; xoffset: Integer; yoffset: Integer; x: Integer; y: Integer; width: Integer; height: Integer); virtual;
        procedure glCullFace(mode: Integer); virtual;
        procedure glDeleteTextures(n: Integer; textures: TArray<Integer>; offset: Integer); overload; virtual;
        procedure glDeleteTextures(n: Integer; textures: TIntBuffer); overload; virtual;
        procedure glDepthFunc(func: Integer); virtual;
        procedure glDepthMask(flag: Boolean); virtual;
        procedure glDepthRangef(zNear: Single; zFar: Single); virtual;
        procedure glDisable(cap: Integer); virtual;
        procedure glDisableClientState(array_: Integer); virtual;
        procedure glDrawArrays(mode: Integer; first: Integer; count: Integer); virtual;
        procedure glDrawElements(mode: Integer; count: Integer; type_: Integer; indices: TBuffer); virtual;
        procedure glEnable(cap: Integer); virtual;
        procedure glEnableClientState(array_: Integer); virtual;
        procedure glFinish; virtual;
        procedure glFlush; virtual;
        procedure glFogf(pname: Integer; param: Single); virtual;
        procedure glFogfv(pname: Integer; params: TArray<Single>; offset: Integer); overload; virtual;
        procedure glFogfv(pname: Integer; params: TFloatBuffer); overload; virtual;
        procedure glFrontFace(mode: Integer); virtual;
        procedure glFrustumf(left: Single; right: Single; bottom: Single; top: Single; zNear: Single; zFar: Single); virtual;
        procedure glGenTextures(n: Integer; textures: TArray<Integer>; offset: Integer); overload; virtual;
        procedure glGenTextures(n: Integer; textures: TIntBuffer); overload; virtual;
        function glGetError: Integer; virtual;
        procedure glGetIntegerv(pname: Integer; params: TArray<Integer>; offset: Integer); overload; virtual;
        procedure glGetIntegerv(pname: Integer; params: TIntBuffer); overload; virtual;
        function glGetString(name: Integer): string; virtual;
        procedure glHint(target: Integer; mode: Integer); virtual;
        procedure glLightModelf(pname: Integer; param: Single); virtual;
        procedure glLightModelfv(pname: Integer; params: TArray<Single>; offset: Integer); overload; virtual;
        procedure glLightModelfv(pname: Integer; params: TFloatBuffer); overload; virtual;
        procedure glLightf(light: Integer; pname: Integer; param: Single); virtual;
        procedure glLightfv(light: Integer; pname: Integer; params: TArray<Single>; offset: Integer); overload; virtual;
        procedure glLightfv(light: Integer; pname: Integer; params: TFloatBuffer); overload; virtual;
        procedure glLineWidth(width: Single); virtual;
        procedure glLoadIdentity; virtual;
        procedure glLoadMatrixf(m: TArray<Single>; offset: Integer); overload; virtual;
        procedure glLoadMatrixf(m: TFloatBuffer); overload; virtual;
        procedure glLogicOp(opcode: Integer); virtual;
        procedure glMaterialf(face: Integer; pname: Integer; param: Single); virtual;
        procedure glMaterialfv(face: Integer; pname: Integer; params: TArray<Single>; offset: Integer); overload; virtual;
        procedure glMaterialfv(face: Integer; pname: Integer; params: TFloatBuffer); overload; virtual;
        procedure glMatrixMode(mode: Integer); virtual;
        procedure glMultMatrixf(m: TArray<Single>; offset: Integer); overload; virtual;
        procedure glMultMatrixf(m: TFloatBuffer); overload; virtual;
        procedure glMultiTexCoord4f(target: Integer; s: Single; t: Single; r: Single; q: Single); virtual;
        procedure glNormal3f(nx: Single; ny: Single; nz: Single); virtual;
        procedure glNormalPointer(type_: Integer; stride: Integer; pointer_: TBuffer); virtual;
        procedure glOrthof(left: Single; right: Single; bottom: Single; top: Single; zNear: Single; zFar: Single); virtual;
        procedure glPixelStorei(pname: Integer; param: Integer); virtual;
        procedure glPointSize(size: Single); virtual;
        procedure glPolygonOffset(factor: Single; units: Single); virtual;
        procedure glPopMatrix; virtual;
        procedure glPushMatrix; virtual;
        procedure glReadPixels(x: Integer; y: Integer; width: Integer; height: Integer; format: Integer; type_: Integer; pixels: TBuffer); virtual;
        procedure glRotatef(angle: Single; x: Single; y: Single; z: Single); virtual;
        procedure glRotatex(angle: Integer; x: Integer; y: Integer; z: Integer); virtual;
        procedure glSampleCoverage(value: Single; invert: Boolean); virtual;
        procedure glScalef(x: Single; y: Single; z: Single); virtual;
        procedure glScalex(x: Integer; y: Integer; z: Integer); virtual;
        procedure glScissor(x: Integer; y: Integer; width: Integer; height: Integer); virtual;
        procedure glShadeModel(mode: Integer); virtual;
        procedure glStencilFunc(func: Integer; ref: Integer; mask: Integer); virtual;
        procedure glStencilMask(mask: Integer); virtual;
        procedure glStencilOp(fail: Integer; zfail: Integer; zpass: Integer); virtual;
        procedure glTexCoordPointer(size: Integer; type_: Integer; stride: Integer; pointer_: TBuffer); virtual;
        procedure glTexEnvf(target: Integer; pname: Integer; param: Single); virtual;
        procedure glTexEnvfv(target: Integer; pname: Integer; params: TArray<Single>; offset: Integer); overload; virtual;
        procedure glTexEnvfv(target: Integer; pname: Integer; params: TFloatBuffer); overload; virtual;
        procedure glTexImage2D(target: Integer; level: Integer; internalformat: Integer; width: Integer; height: Integer; border: Integer; format: Integer; type_: Integer; pixels: TBuffer); virtual;
        procedure glTexParameterf(target: Integer; pname: Integer; param: Single); virtual;
        procedure glTexParameteri(target: Integer; pname: Integer; param: Integer); virtual;
        procedure glTexSubImage2D(target: Integer; level: Integer; xoffset: Integer; yoffset: Integer; width: Integer; height: Integer; format: Integer; type_: Integer; pixels: TBuffer); virtual;
        procedure glTranslatef(x: Single; y: Single; z: Single); virtual;
        procedure glVertexPointer(size: Integer; type_: Integer; stride: Integer; pointer_: TBuffer); virtual;
        procedure glViewport(x: Integer; y: Integer; width: Integer; height: Integer); virtual;
        procedure glBegin(i: Integer); virtual;
        procedure glEnd; virtual;
        procedure glVertex3f(f: Single; f2: Single; f3: Single); virtual;
        procedure glPolygonMode(i: Integer; i1: Integer); virtual;
  end;

implementation
uses
  StringUtil;


{AB:CODE}

function TNullGL10.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TNullGL10.Create;
begin
  inherited Create;
end;
    

procedure TNullGL10.glActiveTexture(texture: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glAlphaFunc(func: Integer; ref: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glBindTexture(target: Integer; texture: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glBlendFunc(sfactor: Integer; dfactor: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glClear(mask: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glClearColor(red: Single; green: Single; blue: Single; alpha: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glClearDepthf(depth: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glClearStencil(s: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glClientActiveTexture(texture: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glColor4f(red: Single; green: Single; blue: Single; alpha: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glColorMask(red: Boolean; green: Boolean; blue: Boolean; alpha: Boolean);
begin
        Exit;
end;
    

procedure TNullGL10.glColorPointer(size: Integer; type_: Integer; stride: Integer; pointer_: TBuffer);
begin
        Exit;
end;
    

procedure TNullGL10.glCompressedTexImage2D(target: Integer; level: Integer; internalformat: Integer; width: Integer; height: Integer; border: Integer; imageSize: Integer; data: TBuffer);
begin
        Exit;
end;
    

procedure TNullGL10.glCompressedTexSubImage2D(target: Integer; level: Integer; xoffset: Integer; yoffset: Integer; width: Integer; height: Integer; format: Integer; imageSize: Integer; data: TBuffer);
begin
        Exit;
end;
    

procedure TNullGL10.glCopyTexImage2D(target: Integer; level: Integer; internalformat: Integer; x: Integer; y: Integer; width: Integer; height: Integer; border: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glCopyTexSubImage2D(target: Integer; level: Integer; xoffset: Integer; yoffset: Integer; x: Integer; y: Integer; width: Integer; height: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glCullFace(mode: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glDeleteTextures(n: Integer; textures: TArray<Integer>; offset: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glDeleteTextures(n: Integer; textures: TIntBuffer);
begin
        Exit;
end;
    

procedure TNullGL10.glDepthFunc(func: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glDepthMask(flag: Boolean);
begin
        Exit;
end;
    

procedure TNullGL10.glDepthRangef(zNear: Single; zFar: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glDisable(cap: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glDisableClientState(array_: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glDrawArrays(mode: Integer; first: Integer; count: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glDrawElements(mode: Integer; count: Integer; type_: Integer; indices: TBuffer);
begin
        Exit;
end;
    

procedure TNullGL10.glEnable(cap: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glEnableClientState(array_: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glFinish;
begin
        Exit;
end;
    

procedure TNullGL10.glFlush;
begin
        Exit;
end;
    

procedure TNullGL10.glFogf(pname: Integer; param: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glFogfv(pname: Integer; params: TArray<Single>; offset: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glFogfv(pname: Integer; params: TFloatBuffer);
begin
        Exit;
end;
    

procedure TNullGL10.glFrontFace(mode: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glFrustumf(left: Single; right: Single; bottom: Single; top: Single; zNear: Single; zFar: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glGenTextures(n: Integer; textures: TArray<Integer>; offset: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glGenTextures(n: Integer; textures: TIntBuffer);
begin
        Exit;
end;
    

function TNullGL10.glGetError: Integer;
begin
        Exit(0);
end;
    

procedure TNullGL10.glGetIntegerv(pname: Integer; params: TArray<Integer>; offset: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glGetIntegerv(pname: Integer; params: TIntBuffer);
begin
        Exit;
end;
    

function TNullGL10.glGetString(name: Integer): string;
begin
        Exit(TStringUtil.getInstance().EMPTY_STRING);
end;
    

procedure TNullGL10.glHint(target: Integer; mode: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glLightModelf(pname: Integer; param: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glLightModelfv(pname: Integer; params: TArray<Single>; offset: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glLightModelfv(pname: Integer; params: TFloatBuffer);
begin
        Exit;
end;
    

procedure TNullGL10.glLightf(light: Integer; pname: Integer; param: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glLightfv(light: Integer; pname: Integer; params: TArray<Single>; offset: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glLightfv(light: Integer; pname: Integer; params: TFloatBuffer);
begin
        Exit;
end;
    

procedure TNullGL10.glLineWidth(width: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glLoadIdentity;
begin
        Exit;
end;
    

procedure TNullGL10.glLoadMatrixf(m: TArray<Single>; offset: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glLoadMatrixf(m: TFloatBuffer);
begin
        Exit;
end;
    

procedure TNullGL10.glLogicOp(opcode: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glMaterialf(face: Integer; pname: Integer; param: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glMaterialfv(face: Integer; pname: Integer; params: TArray<Single>; offset: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glMaterialfv(face: Integer; pname: Integer; params: TFloatBuffer);
begin
        Exit;
end;
    

procedure TNullGL10.glMatrixMode(mode: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glMultMatrixf(m: TArray<Single>; offset: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glMultMatrixf(m: TFloatBuffer);
begin
        Exit;
end;
    

procedure TNullGL10.glMultiTexCoord4f(target: Integer; s: Single; t: Single; r: Single; q: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glNormal3f(nx: Single; ny: Single; nz: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glNormalPointer(type_: Integer; stride: Integer; pointer_: TBuffer);
begin
        Exit;
end;
    

procedure TNullGL10.glOrthof(left: Single; right: Single; bottom: Single; top: Single; zNear: Single; zFar: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glPixelStorei(pname: Integer; param: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glPointSize(size: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glPolygonOffset(factor: Single; units: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glPopMatrix;
begin
        Exit;
end;
    

procedure TNullGL10.glPushMatrix;
begin
        Exit;
end;
    

procedure TNullGL10.glReadPixels(x: Integer; y: Integer; width: Integer; height: Integer; format: Integer; type_: Integer; pixels: TBuffer);
begin
        Exit;
end;
    

procedure TNullGL10.glRotatef(angle: Single; x: Single; y: Single; z: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glRotatex(angle: Integer; x: Integer; y: Integer; z: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glSampleCoverage(value: Single; invert: Boolean);
begin
        Exit;
end;
    

procedure TNullGL10.glScalef(x: Single; y: Single; z: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glScalex(x: Integer; y: Integer; z: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glScissor(x: Integer; y: Integer; width: Integer; height: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glShadeModel(mode: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glStencilFunc(func: Integer; ref: Integer; mask: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glStencilMask(mask: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glStencilOp(fail: Integer; zfail: Integer; zpass: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glTexCoordPointer(size: Integer; type_: Integer; stride: Integer; pointer_: TBuffer);
begin
        Exit;
end;
    

procedure TNullGL10.glTexEnvf(target: Integer; pname: Integer; param: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glTexEnvfv(target: Integer; pname: Integer; params: TArray<Single>; offset: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glTexEnvfv(target: Integer; pname: Integer; params: TFloatBuffer);
begin
        Exit;
end;
    

procedure TNullGL10.glTexImage2D(target: Integer; level: Integer; internalformat: Integer; width: Integer; height: Integer; border: Integer; format: Integer; type_: Integer; pixels: TBuffer);
begin
        Exit;
end;
    

procedure TNullGL10.glTexParameterf(target: Integer; pname: Integer; param: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glTexParameteri(target: Integer; pname: Integer; param: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glTexSubImage2D(target: Integer; level: Integer; xoffset: Integer; yoffset: Integer; width: Integer; height: Integer; format: Integer; type_: Integer; pixels: TBuffer);
begin
        Exit;
end;
    

procedure TNullGL10.glTranslatef(x: Single; y: Single; z: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glVertexPointer(size: Integer; type_: Integer; stride: Integer; pointer_: TBuffer);
begin
        Exit;
end;
    

procedure TNullGL10.glViewport(x: Integer; y: Integer; width: Integer; height: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glBegin(i: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glEnd;
begin
        Exit;
end;
    

procedure TNullGL10.glVertex3f(f: Single; f2: Single; f3: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glPolygonMode(i: Integer; i1: Integer);
begin
        Exit;
end;

initialization
  {AB:INITIALIZATION}
  TNullGL10.NULL_GL10 := TNullGL10.Create();
  {AB:END}

end.

