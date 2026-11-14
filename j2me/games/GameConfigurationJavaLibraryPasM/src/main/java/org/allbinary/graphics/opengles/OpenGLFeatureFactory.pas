{

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
}
// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles
unit OpenGLFeatureFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, OpenGLFeature;

type
  {AB:TYPES}
  TOpenGLFeatureFactory = class(TObject)
  public
    OPENGL_OPTIONS: TOpenGLFeature;
    OPENGL: TOpenGLFeature;
    OPENGL_SURFACE_VIEW: TOpenGLFeature;
    OPENGL_2D: TOpenGLFeature;
    OPENGL_3D: TOpenGLFeature;
    OPENGL_2D_AND_3D: TOpenGLFeature;
    OPENGL_AUTO_SELECT: TOpenGLFeature;
    OPENGL_MINIMUM: TOpenGLFeature;
    OPENGL_AS_GAME_THREAD: TOpenGLFeature;
    OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS: TOpenGLFeature;
    IMAGE_COLOR_DEPTH_4444: TOpenGLFeature;
    IMAGE_COLOR_DEPTH_8888: TOpenGLFeature;
    IMAGE_COLOR_DEPTH_565: TOpenGLFeature;
    OPENGL_COLOR_DEPTH_4444: TOpenGLFeature;
    OPENGL_COLOR_DEPTH_8888: TOpenGLFeature;
    OPENGL_COLOR_DEPTH_565: TOpenGLFeature;
    OPENGL_DRAW_TEXTURE: TOpenGLFeature;
    OPENGL_VERTEX_BUFFER_OBJECT: TOpenGLFeature;
    OPENGL_SIMPLE_OBJECT3D_PROCESSOR: TOpenGLFeature;
    OPENGL_COMPLEX_OBJECT3D_PROCESSOR: TOpenGLFeature;
    OPENGL_SIMPLE_TEXTURE_PROCESSOR: TOpenGLFeature;
    OPENGL_COMPLEX_TEXTURE_PROCESSOR: TOpenGLFeature;
    class var instance: TOpenGLFeatureFactory;
    procedure InitFields;
        class function getInstance: TOpenGLFeatureFactory; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TOpenGLFeatureFactory.InitFields;
begin
  Self.OPENGL_OPTIONS := TOpenGLFeature.Create('OpenGL Options');
  Self.OPENGL := TOpenGLFeature.Create('OpenGL');
  Self.OPENGL_SURFACE_VIEW := TOpenGLFeature.Create('GLSurfaceView');
  Self.OPENGL_2D := TOpenGLFeature.Create('OpenGL 2D');
  Self.OPENGL_3D := TOpenGLFeature.Create('OpenGL 3D');
  Self.OPENGL_2D_AND_3D := TOpenGLFeature.Create('OpenGL 2D/3D');
  Self.OPENGL_AUTO_SELECT := TOpenGLFeature.Create('Auto Select');
  Self.OPENGL_MINIMUM := TOpenGLFeature.Create('Minimum');
  Self.OPENGL_AS_GAME_THREAD := TOpenGLFeature.Create('As game thread');
  Self.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS := TOpenGLFeature.Create('As different threads');
  Self.IMAGE_COLOR_DEPTH_4444 := TOpenGLFeature.Create('4444');
  Self.IMAGE_COLOR_DEPTH_8888 := TOpenGLFeature.Create('8888');
  Self.IMAGE_COLOR_DEPTH_565 := TOpenGLFeature.Create('565');
  Self.OPENGL_COLOR_DEPTH_4444 := TOpenGLFeature.Create('4444');
  Self.OPENGL_COLOR_DEPTH_8888 := TOpenGLFeature.Create('8888');
  Self.OPENGL_COLOR_DEPTH_565 := TOpenGLFeature.Create('565');
  Self.OPENGL_DRAW_TEXTURE := TOpenGLFeature.Create('GL_OES_draw_texture');
  Self.OPENGL_VERTEX_BUFFER_OBJECT := TOpenGLFeature.Create('vertex_buffer_object');
  Self.OPENGL_SIMPLE_OBJECT3D_PROCESSOR := TOpenGLFeature.Create('Simple Object3d Processor');
  Self.OPENGL_COMPLEX_OBJECT3D_PROCESSOR := TOpenGLFeature.Create('Complex Object3d Processor');
  Self.OPENGL_SIMPLE_TEXTURE_PROCESSOR := TOpenGLFeature.Create('Simple Texture Processor');
  Self.OPENGL_COMPLEX_TEXTURE_PROCESSOR := TOpenGLFeature.Create('Complex Texture Processor');
end;
    

class function TOpenGLFeatureFactory.getInstance: TOpenGLFeatureFactory;
begin
        Exit(TOpenGLFeatureFactory.instance);
end;
    

constructor TOpenGLFeatureFactory.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TOpenGLFeatureFactory.instance := TOpenGLFeatureFactory.Create();
  {AB:END}

end.

