// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles.shader
unit OpenGLObject3dProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL10, CommonStrings;

type
  {AB:TYPES}
  TOpenGLObject3dProcessor = class(TObject)
  public
    commonStrings: TCommonStrings;
    procedure InitFields;
    constructor Create;
        procedure process(gl: IGL10; object3d: TObject); overload; virtual;
        procedure process(gl: IGL10; object3d: TObject; index: Integer); overload; virtual;
  end;

implementation

{AB:CODE}

procedure TOpenGLObject3dProcessor.InitFields;
begin
  Self.commonStrings := TCommonStrings.getInstance();
end;

constructor TOpenGLObject3dProcessor.Create;
begin
  inherited Create;
  InitFields;
end;
    

procedure TOpenGLObject3dProcessor.process(gl: IGL10; object3d: TObject);
begin
end;
    

procedure TOpenGLObject3dProcessor.process(gl: IGL10; object3d: TObject; index: Integer);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

