// Generated Code Do Not Modify
// package org.allbinary.device
unit OpenGLESGraphicsFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, OpenGLESGraphics;

type
  {AB:TYPES}
  TOpenGLESGraphicsFactory = class(TObject)
  public
    constructor Create;
        function getOpenGLESGraphicsInstance: TOpenGLESGraphics; virtual;
  end;

implementation
uses
  OpenGLESNullGraphicsFactory;


{AB:CODE}

constructor TOpenGLESGraphicsFactory.Create;
begin
  inherited Create;
end;
    

function TOpenGLESGraphicsFactory.getOpenGLESGraphicsInstance: TOpenGLESGraphics;
begin
        Exit(TOpenGLESNullGraphicsFactory.getInstance());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

