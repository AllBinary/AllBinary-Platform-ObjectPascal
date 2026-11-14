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
// package org.allbinary.game.input.motion.action
unit GameKeyCompleteMotionGestureInputEventFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, BasicArrayList, GameKeyCompleteMotionGestureInputEvent;

type
  {AB:TYPES}
  TGameKeyCompleteMotionGestureInputEventFactory = class(TObject)
  public
    logUtil: TLogUtil;
    eventList: TBasicArrayList;
    class var SINGLETON: TGameKeyCompleteMotionGestureInputEventFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TGameKeyCompleteMotionGestureInputEventFactory; static;
        procedure add(gameKeyCompleteMotionGestureInputEvent_: TGameKeyCompleteMotionGestureInputEvent); virtual;
        procedure updateAll; virtual;
  end;

implementation
uses
  StringMaker, CommonLabels, BasicArrayListD;


{AB:CODE}

procedure TGameKeyCompleteMotionGestureInputEventFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.eventList := TBasicArrayListD.Create();
end;

constructor TGameKeyCompleteMotionGestureInputEventFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TGameKeyCompleteMotionGestureInputEventFactory.getInstance: TGameKeyCompleteMotionGestureInputEventFactory;
begin
        Exit(TGameKeyCompleteMotionGestureInputEventFactory.SINGLETON);
end;
    

procedure TGameKeyCompleteMotionGestureInputEventFactory.add(gameKeyCompleteMotionGestureInputEvent_: TGameKeyCompleteMotionGestureInputEvent);
begin
        Self.eventList.add(TJava.Box(gameKeyCompleteMotionGestureInputEvent_));
end;
    

procedure TGameKeyCompleteMotionGestureInputEventFactory.updateAll;
var
  gameKeyCompleteMotionGestureInputEvent_: TGameKeyCompleteMotionGestureInputEvent;
  index: Integer;
begin
        Self.logUtil.putF(TStringMaker.Create().append(TCommonLabels.getInstance().START_LABEL).appendint(Self.eventList.size()).toString(), TJava.Box(Self), 'updateAll');
        for index := (Self.eventList.size()) - (1) downto 0 do begin
            gameKeyCompleteMotionGestureInputEvent_ := TGameKeyCompleteMotionGestureInputEvent(TJava.ToObject(Self.eventList.objectArray[index]));
            gameKeyCompleteMotionGestureInputEvent_.update();
        end;
end;

initialization
  {AB:INITIALIZATION}
  TGameKeyCompleteMotionGestureInputEventFactory.SINGLETON := TGameKeyCompleteMotionGestureInputEventFactory.Create();
  {AB:END}

end.

