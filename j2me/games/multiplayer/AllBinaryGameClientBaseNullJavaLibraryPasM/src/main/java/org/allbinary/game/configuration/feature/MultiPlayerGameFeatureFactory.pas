// Generated Code Do Not Modify
// package org.allbinary.game.configuration.feature
unit MultiPlayerGameFeatureFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TMultiPlayerGameFeatureFactory = class(TObject)
  public
    class var instance: TMultiPlayerGameFeatureFactory;
        class function getInstance: TMultiPlayerGameFeatureFactory; static;
        constructor Create;
        procedure addCommands(anyType: TObject); virtual;
  end;

implementation
uses
  Canvas, GameCommandsFactory;


{AB:CODE}
    

class function TMultiPlayerGameFeatureFactory.getInstance: TMultiPlayerGameFeatureFactory;
begin
        Exit(TMultiPlayerGameFeatureFactory.instance);
end;
    

constructor TMultiPlayerGameFeatureFactory.Create;
begin
    inherited Create;
end;
    

procedure TMultiPlayerGameFeatureFactory.addCommands(anyType: TObject);
var
  gameCommandsFactory_: TGameCommandsFactory;
  canvas_: TCanvas;
begin
        gameCommandsFactory_ := TGameCommandsFactory.getInstance();
        canvas_ := TCanvas(TJava.ToObject(anyType));
        canvas_.addCommand(gameCommandsFactory_.QUIT_COMMAND);
end;

initialization
  {AB:INITIALIZATION}
  TMultiPlayerGameFeatureFactory.instance := TMultiPlayerGameFeatureFactory.Create();
  {AB:END}

end.

