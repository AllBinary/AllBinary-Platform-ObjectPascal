{

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer.special
unit AnalogInputBuilder;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameInputProcessor, CollidableDestroyableDamageableLayer;

type
  {AB:TYPES}
  TAnalogInputBuilder = class(TObject)
  public
    class var instance: TAnalogInputBuilder;
    constructor Create;
        class function getInstance: TAnalogInputBuilder; static;
        procedure disable(inputProcessorArray: TArray<TGameInputProcessor>; collidableDestroyableDamageableLayer_: TCollidableDestroyableDamageableLayer); virtual;
        procedure enable(inputProcessorArray: TArray<TGameInputProcessor>; collidableDestroyableDamageableLayer_: TCollidableDestroyableDamageableLayer); virtual;
  end;

implementation
uses
  SpecialUpGameInputProcessor, SpecialDownGameInputProcessor, SpecialRightGameInputProcessor, SpecialLeftGameInputProcessor, Special1GameInputProcessor, Special3GameInputProcessor, SpecialAnalogUpGameInputProcessor, SpecialAnalogDownGameInputProcessor, SpecialAnalogRightGameInputProcessor, SpecialAnalogLeftGameInputProcessor, SpecialAnalogLeftTriggerGameInputProcessor, SpecialAnalogRightTriggerGameInputProcessor, Canvas;


{AB:CODE}

constructor TAnalogInputBuilder.Create;
begin
  inherited Create;
end;
    

class function TAnalogInputBuilder.getInstance: TAnalogInputBuilder;
begin
        Exit(TAnalogInputBuilder.instance);
end;
    

procedure TAnalogInputBuilder.disable(inputProcessorArray: TArray<TGameInputProcessor>; collidableDestroyableDamageableLayer_: TCollidableDestroyableDamageableLayer);
begin
        inputProcessorArray[TCanvas.UP] := TSpecialUpGameInputProcessor.Create(collidableDestroyableDamageableLayer_);
        inputProcessorArray[TCanvas.DOWN] := TSpecialDownGameInputProcessor.Create(collidableDestroyableDamageableLayer_);
        inputProcessorArray[TCanvas.RIGHT] := TSpecialRightGameInputProcessor.Create(collidableDestroyableDamageableLayer_);
        inputProcessorArray[TCanvas.LEFT] := TSpecialLeftGameInputProcessor.Create(collidableDestroyableDamageableLayer_);
        inputProcessorArray[TCanvas.KEY_NUM0] := TSpecial1GameInputProcessor.Create(collidableDestroyableDamageableLayer_);
        inputProcessorArray[TCanvas.KEY_NUM5] := TSpecial3GameInputProcessor.Create(collidableDestroyableDamageableLayer_);
end;
    

procedure TAnalogInputBuilder.enable(inputProcessorArray: TArray<TGameInputProcessor>; collidableDestroyableDamageableLayer_: TCollidableDestroyableDamageableLayer);
begin
        inputProcessorArray[TCanvas.UP] := TSpecialAnalogUpGameInputProcessor.Create(collidableDestroyableDamageableLayer_);
        inputProcessorArray[TCanvas.DOWN] := TSpecialAnalogDownGameInputProcessor.Create(collidableDestroyableDamageableLayer_);
        inputProcessorArray[TCanvas.RIGHT] := TSpecialAnalogRightGameInputProcessor.Create(collidableDestroyableDamageableLayer_);
        inputProcessorArray[TCanvas.LEFT] := TSpecialAnalogLeftGameInputProcessor.Create(collidableDestroyableDamageableLayer_);
        inputProcessorArray[TCanvas.KEY_NUM0] := TSpecialAnalogLeftTriggerGameInputProcessor.Create(collidableDestroyableDamageableLayer_);
        inputProcessorArray[TCanvas.KEY_NUM5] := TSpecialAnalogRightTriggerGameInputProcessor.Create(collidableDestroyableDamageableLayer_);
end;

initialization
  {AB:INITIALIZATION}
  TAnalogInputBuilder.instance := TAnalogInputBuilder.Create();
  {AB:END}

end.

