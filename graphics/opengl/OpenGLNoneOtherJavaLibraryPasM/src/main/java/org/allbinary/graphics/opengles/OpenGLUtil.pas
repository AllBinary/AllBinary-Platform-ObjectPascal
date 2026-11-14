// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles
unit OpenGLUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image;

type
  {AB:TYPES}
  TOpenGLUtil = class(TObject)
  public
    class var instance: TOpenGLUtil;
    constructor Create;
        class function getInstance: TOpenGLUtil; static;
        function addImage(image_: TImage): TImage; virtual;
        procedure clear; virtual;
        procedure addRunnable(runnable: IRunnable); virtual;
  end;

implementation

{AB:CODE}

constructor TOpenGLUtil.Create;
begin
  inherited Create;
end;
    

class function TOpenGLUtil.getInstance: TOpenGLUtil;
begin
        Exit(TOpenGLUtil.instance);
end;
    

function TOpenGLUtil.addImage(image_: TImage): TImage;
begin
        Exit(image_);
end;
    

procedure TOpenGLUtil.clear;
begin
end;
    

procedure TOpenGLUtil.addRunnable(runnable: IRunnable);
begin
end;

initialization
  {AB:INITIALIZATION}
  TOpenGLUtil.instance := TOpenGLUtil.Create();
  {AB:END}

end.

