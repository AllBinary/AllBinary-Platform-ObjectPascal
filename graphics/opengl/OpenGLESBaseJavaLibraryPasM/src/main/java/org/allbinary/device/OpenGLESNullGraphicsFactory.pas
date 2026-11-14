// Generated Code Do Not Modify
// package org.allbinary.device
unit OpenGLESNullGraphicsFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, OpenGLESGraphics;

type
  {AB:TYPES}
  TOpenGLESNullGraphicsFactory = class(TObject)
  public
    class var instance: TOpenGLESGraphics;
    constructor Create;
        class function getInstance: TOpenGLESGraphics; static;
  end;

implementation

{AB:CODE}

constructor TOpenGLESNullGraphicsFactory.Create;
begin
  inherited Create;
end;
    

class function TOpenGLESNullGraphicsFactory.getInstance: TOpenGLESGraphics;
begin
        Exit(TOpenGLESNullGraphicsFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TOpenGLESNullGraphicsFactory.instance := TOpenGLESGraphics.Create();
  {AB:END}

end.

