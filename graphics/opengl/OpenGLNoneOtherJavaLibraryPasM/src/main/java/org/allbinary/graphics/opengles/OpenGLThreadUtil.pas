// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles
unit OpenGLThreadUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TOpenGLThreadUtil = class(TObject)
  public
    class var instance: TOpenGLThreadUtil;
    constructor Create;
        class function getInstance: TOpenGLThreadUtil; static;
        procedure set_(glSurfaceView: TObject); virtual;
        procedure onPause; virtual;
        procedure onResume; virtual;
  end;

implementation

{AB:CODE}

constructor TOpenGLThreadUtil.Create;
begin
  inherited Create;
end;
    

class function TOpenGLThreadUtil.getInstance: TOpenGLThreadUtil;
begin
        Exit(TOpenGLThreadUtil.instance);
end;
    

procedure TOpenGLThreadUtil.set_(glSurfaceView: TObject);
begin
end;
    

procedure TOpenGLThreadUtil.onPause;
begin
end;
    

procedure TOpenGLThreadUtil.onResume;
begin
end;

initialization
  {AB:INITIALIZATION}
  TOpenGLThreadUtil.instance := TOpenGLThreadUtil.Create();
  {AB:END}

end.

