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
// package org.allbinary.input
unit DirectionalAnalogLocationInputProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AnalogLocationInputProcessor, GameInputProcessor, GameKeyEventSourceInterface, GameKeyFactory, AnalogLocationInput, GameKeyEvent, AllBinaryLayerManager, LogUtil;

type
  {AB:TYPES}
  TDirectionalAnalogLocationInputProcessor = class(TAnalogLocationInputProcessor, IGameKeyEventSourceInterface)
  public
    logUtil: TLogUtil;
    inputProcessorArray: TArray<TGameInputProcessor>;
    gameKeyFactory: TGameKeyFactory;
    leftGameKeyEvent: TGameKeyEvent;
    rightGameKeyEvent: TGameKeyEvent;
    upGameKeyEvent: TGameKeyEvent;
    downGameKeyEvent: TGameKeyEvent;
    leftTriggerGameKeyEvent: TGameKeyEvent;
    rightTriggerGameKeyEvent: TGameKeyEvent;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(inputProcessorArray: TArray<TGameInputProcessor>);
        procedure process(allbinaryLayerManager_: TAllBinaryLayerManager; analogLocationInput_: TAnalogLocationInput); virtual;
        function getSourceId: Integer; virtual;
  end;

implementation
uses
  GameKeyEventFactory, CustomGPoint, CommonStrings;


{AB:CODE}

procedure TDirectionalAnalogLocationInputProcessor.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  Self.gameKeyFactory := TGameKeyFactory.getInstance();
  Self.leftGameKeyEvent := TGameKeyEvent.NONE;
  Self.rightGameKeyEvent := TGameKeyEvent.NONE;
  Self.upGameKeyEvent := TGameKeyEvent.NONE;
  Self.downGameKeyEvent := TGameKeyEvent.NONE;
  Self.leftTriggerGameKeyEvent := TGameKeyEvent.NONE;
  Self.rightTriggerGameKeyEvent := TGameKeyEvent.NONE;
end;

function TDirectionalAnalogLocationInputProcessor.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TDirectionalAnalogLocationInputProcessor.Create(inputProcessorArray: TArray<TGameInputProcessor>);
var
  commonStrings_: TCommonStrings;
begin
    inherited Create;
    InitFields;
        Self.inputProcessorArray := inputProcessorArray;
        try
            Self.leftGameKeyEvent := TGameKeyEventFactory.getInstance().getInstanceForInput(Self, Self.gameKeyFactory.LEFT);
            Self.rightGameKeyEvent := TGameKeyEventFactory.getInstance().getInstanceForInput(Self, Self.gameKeyFactory.RIGHT);
            Self.upGameKeyEvent := TGameKeyEventFactory.getInstance().getInstanceForInput(Self, Self.gameKeyFactory.UP);
            Self.downGameKeyEvent := TGameKeyEventFactory.getInstance().getInstanceForInput(Self, Self.gameKeyFactory.DOWN);
            Self.leftTriggerGameKeyEvent := TGameKeyEventFactory.getInstance().getInstanceForInput(Self, Self.gameKeyFactory.KEY_NUM0);
            Self.rightTriggerGameKeyEvent := TGameKeyEventFactory.getInstance().getInstanceForInput(Self, Self.gameKeyFactory.KEY_NUM5);
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.CONSTRUCTOR_, TJava.Box(e));
            end;
        end;
end;
    

procedure TDirectionalAnalogLocationInputProcessor.process(allbinaryLayerManager_: TAllBinaryLayerManager; analogLocationInput_: TAnalogLocationInput);
var
  customGPoint_: TCustomGPoint;
  x: Integer;
  y: Integer;
  leftTrigger: Integer;
  rightTrigger: Integer;
  commonStrings_: TCommonStrings;
begin
        try
            
            customGPoint_ := analogLocationInput_.getCustomGPoint();
            x := customGPoint_.getX();
            y := customGPoint_.getY();
            leftTrigger := analogLocationInput_.getLeftTrigger();
            rightTrigger := analogLocationInput_.getRightTrigger();
            if (x) < (0) then begin
                Self.inputProcessorArray[Self.leftGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager_, Self.leftGameKeyEvent, x);
            end else if (x) > (0) then begin
                Self.inputProcessorArray[Self.rightGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager_, Self.rightGameKeyEvent, x);
            end;
            if (y) < (0) then begin
                Self.inputProcessorArray[Self.downGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager_, Self.downGameKeyEvent, y);
            end else if (y) > (0) then begin
                Self.inputProcessorArray[Self.upGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager_, Self.upGameKeyEvent, y);
            end;
            if (leftTrigger) > (0) then begin
                Self.inputProcessorArray[Self.leftTriggerGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager_, Self.leftTriggerGameKeyEvent, leftTrigger);
            end;
            if (rightTrigger) > (0) then begin
                Self.inputProcessorArray[Self.rightTriggerGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager_, Self.rightTriggerGameKeyEvent, rightTrigger);
            end;
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put('Unable to process analog input', TJava.Box(Self), commonStrings_.PROCESS, TJava.Box(e));
            end;
        end;
end;
    

function TDirectionalAnalogLocationInputProcessor.getSourceId: Integer;
begin
        Exit(0);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

