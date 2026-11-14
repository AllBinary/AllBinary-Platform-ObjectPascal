// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles
unit OpenGLProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL10, LogUtil, CommonStrings;

type
  {AB:TYPES}
  TOpenGLProcessor = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    procedure InitFields;
    constructor Create;
        procedure process(gl: IGL10); virtual;
  end;

implementation

{AB:CODE}

procedure TOpenGLProcessor.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
end;

constructor TOpenGLProcessor.Create;
begin
  inherited Create;
  InitFields;
end;
    

procedure TOpenGLProcessor.process(gl: IGL10);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

