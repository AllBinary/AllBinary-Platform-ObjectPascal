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
// package org.allbinary.game.input
unit GameInput;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameKeyEvent, LogUtil, CommonStrings, BasicArrayList;

type
  {AB:TYPES}
  TGameInput = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    gameKeyEventList: TBasicArrayList;
    removalGameKeyEventList: TBasicArrayList;
    isRemoveDuplicateKeyPresses: Boolean;
    procedure InitFields;
        constructor Create(gameKeyEventList: TBasicArrayList; removalGameKeyEventList: TBasicArrayList);
        procedure add(gameKeyEvent_: TGameKeyEvent); virtual;
        procedure addForRemoval(gameKeyEvent_: TGameKeyEvent); virtual;
        function isForRemoval(gameKeyEvent_: TGameKeyEvent): Boolean; virtual;
        procedure clear; virtual;
        procedure removeNonAIInputGameKeyEvents; virtual;
        procedure update; virtual;
        function getRemovalGameKeyEventList: TBasicArrayList; virtual;
        function getGameKeyEventList: TBasicArrayList; virtual;
  end;

implementation
uses
  Features, InputFeatureFactory;


{AB:CODE}

procedure TGameInput.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
end;
    

constructor TGameInput.Create(gameKeyEventList: TBasicArrayList; removalGameKeyEventList: TBasicArrayList);
begin
    inherited Create;
    InitFields;
        Self.gameKeyEventList := gameKeyEventList;
        Self.removalGameKeyEventList := removalGameKeyEventList;
        Self.isRemoveDuplicateKeyPresses := TFeatures.getInstance().isFeature(TInputFeatureFactory.getInstance().REMOVE_DUPLICATE_KEY_PRESSES);
end;
    

procedure TGameInput.add(gameKeyEvent_: TGameKeyEvent);
begin
    TJava.MonitorEnter(Self);
    try
        if (Self.isRemoveDuplicateKeyPresses) and (Self.gameKeyEventList.contains(TJava.Box(gameKeyEvent_))) then begin
            Exit;
        end;
        if (gameKeyEvent_) <> (nil) then begin
            Self.gameKeyEventList.add(TJava.Box(gameKeyEvent_));
        end else begin
            Self.logUtil.putF('Danger Passed Null GameKeyEvent', TJava.Box(Self), Self.commonStrings.ADD);
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TGameInput.addForRemoval(gameKeyEvent_: TGameKeyEvent);
begin
    TJava.MonitorEnter(Self);
    try
        Self.removalGameKeyEventList.add(TJava.Box(gameKeyEvent_));
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TGameInput.isForRemoval(gameKeyEvent_: TGameKeyEvent): Boolean;
begin
    TJava.MonitorEnter(Self);
    try
        Exit(Self.removalGameKeyEventList.contains(TJava.Box(gameKeyEvent_)));
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TGameInput.clear;
begin
    TJava.MonitorEnter(Self);
    try
        Self.gameKeyEventList.clear();
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TGameInput.removeNonAIInputGameKeyEvents;
var
  list: TBasicArrayList;
  gameKeyEvent_: TGameKeyEvent;
  index: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        list := Self.gameKeyEventList;
        
        index := list.size();
        while (TJava.PreDec(index)) >= (0) do begin
            gameKeyEvent_ := TGameKeyEvent(TJava.ToObject(list.objectArray[index]));
            if (gameKeyEvent_.getSourceId()) <> (1) then begin
                list.removeAt(index);
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TGameInput.update;
var
  removeList: TBasicArrayList;
  list: TBasicArrayList;
  size: Integer;
  anyType: TObject;
  index2: Integer;
  index: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        removeList := Self.removalGameKeyEventList;
        list := Self.gameKeyEventList;
        size := removeList.size();
        for index := 0 to size - 1 do begin
            anyType := TJava.Box(removeList.objectArray[index]);
            index2 := list.size();
            while (TJava.PreDec(index2)) >= (0) do begin
                if (list.objectArray[index2]) = (anyType) then begin
                    list.removeAt(index2);
                end;
            end;
        end;
        removeList.clear();
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TGameInput.getRemovalGameKeyEventList: TBasicArrayList;
begin
        Exit(Self.removalGameKeyEventList);
end;
    

function TGameInput.getGameKeyEventList: TBasicArrayList;
begin
        Exit(Self.gameKeyEventList);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

