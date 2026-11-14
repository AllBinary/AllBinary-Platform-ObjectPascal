// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles
unit NullOpenGLProcessorFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, OpenGLProcessor;

type
  {AB:TYPES}
  TNullOpenGLProcessorFactory = class(TObject)
  public
    class var instance: TOpenGLProcessor;
    constructor Create;
        class function getInstance: TOpenGLProcessor; static;
  end;

implementation

{AB:CODE}

constructor TNullOpenGLProcessorFactory.Create;
begin
  inherited Create;
end;
    

class function TNullOpenGLProcessorFactory.getInstance: TOpenGLProcessor;
begin
        Exit(TNullOpenGLProcessorFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TNullOpenGLProcessorFactory.instance := TOpenGLProcessor.Create();
  {AB:END}

end.

