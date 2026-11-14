// Generated Code Do Not Modify
// package org.allbinary.device
unit OpenGLESGraphics;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL, GL10, Font, Graphics, FontDebugBase, OpenGLSurfaceChangedInterface, CommonStrings, GraphicsInterface;

type
  {AB:TYPES}
  TOpenGLESGraphics = class(TGraphics, IOpenGLSurfaceChangedInterface, IGraphicsInterface)
  public
    commonStrings: TCommonStrings;
    gl: IGL10;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure updateGL(gl_: IGL); virtual;
        procedure set_(gl_: IGL); virtual;
        procedure init; virtual;
        procedure update; virtual;
        procedure setOrthoginalMode; virtual;
        procedure setCameraMode; virtual;
        function getGl10: IGL10; virtual;
        procedure setFontDebug(font_: TFont; fontDebug: TFontDebugBase); virtual;
  end;

implementation
uses
  NullGL10;


{AB:CODE}

procedure TOpenGLESGraphics.InitFields;
begin
  Self.commonStrings := TCommonStrings.getInstance();
  Self.gl := TNullGL10.NULL_GL10;
end;

function TOpenGLESGraphics.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TOpenGLESGraphics.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TOpenGLESGraphics.updateGL(gl_: IGL);
begin
end;
    

procedure TOpenGLESGraphics.set_(gl_: IGL);
begin
end;
    

// throws Exception
procedure TOpenGLESGraphics.init;
begin
end;
    

// throws Exception
procedure TOpenGLESGraphics.update;
begin
end;
    

procedure TOpenGLESGraphics.setOrthoginalMode;
begin
end;
    

procedure TOpenGLESGraphics.setCameraMode;
begin
end;
    

function TOpenGLESGraphics.getGl10: IGL10;
begin
        Exit(Self.gl);
end;
    

procedure TOpenGLESGraphics.setFontDebug(font_: TFont; fontDebug: TFontDebugBase);
begin
        raise SysUtils.Exception.Create('');
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

