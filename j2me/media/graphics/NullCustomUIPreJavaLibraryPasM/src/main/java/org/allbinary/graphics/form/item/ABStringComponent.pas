// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item
unit ABStringComponent;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicColor;

type
  {AB:TYPES}
  TABStringComponent = class(TObject)
  public
    class var NULL_STRING_COMPONENT: TABStringComponent;
        function getBackgroundBasicColor: TBasicColor; virtual;
        constructor Create(backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
        function getForegroundBasicColor: TBasicColor; virtual;
        procedure setForegroundBasicColor(foregroundBasicColor: TBasicColor); virtual;
  end;

implementation
uses
  BasicColorFactory;


{AB:CODE}
    

function TABStringComponent.getBackgroundBasicColor: TBasicColor;
begin
        Exit(TBasicColorFactory.getInstance().WHITE);
end;
    

constructor TABStringComponent.Create(backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
begin
    inherited Create;
end;
    

function TABStringComponent.getForegroundBasicColor: TBasicColor;
begin
        Exit(TBasicColorFactory.getInstance().WHITE);
end;
    

procedure TABStringComponent.setForegroundBasicColor(foregroundBasicColor: TBasicColor);
begin
end;

initialization
  {AB:INITIALIZATION}
  TABStringComponent.NULL_STRING_COMPONENT := TABStringComponent.Create(TBasicColorFactory.getInstance().BLACK, TBasicColorFactory.getInstance().WHITE);
  {AB:END}

end.

