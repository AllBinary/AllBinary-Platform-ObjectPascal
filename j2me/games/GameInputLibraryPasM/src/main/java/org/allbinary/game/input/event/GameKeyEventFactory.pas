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
// package org.allbinary.game.input.event
unit GameKeyEventFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameKeyEventSourceInterface, Input, LogUtil, GameKeyEvent;

type
  {AB:TYPES}
  TGameKeyEventFactory = class(TObject)
  public
    logUtil: TLogUtil;
    TOUCH_BUTTON_SOURCE_ID: Integer;
    MOTION_GESTURE_SOURCE_ID: Integer;
    MAX_SOURCES: Integer;
    ARRAY_: TArray<TArray<TGameKeyEvent>>;
    class var instance: TObject;
    procedure InitFields;
        class function getInstance: TGameKeyEventFactory; static;
        constructor Create;
        procedure init; virtual;
        function getInstanceForKey(anyType: IGameKeyEventSourceInterface; key: Integer): TGameKeyEvent; virtual;
        function getInstanceForInput(anyType: IGameKeyEventSourceInterface; input_: TInput): TGameKeyEvent; virtual;
  end;

implementation
uses
  InputFactory, NullUtil;


{AB:CODE}

procedure TGameKeyEventFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.TOUCH_BUTTON_SOURCE_ID := 2;
  Self.MOTION_GESTURE_SOURCE_ID := 3;
  Self.MAX_SOURCES := 4;
  Self.ARRAY_ := TJava.NewArray2<TGameKeyEvent>(Self.MAX_SOURCES, TInputFactory.getInstance().MAX);
end;
    

class function TGameKeyEventFactory.getInstance: TGameKeyEventFactory;
begin
        if (TGameKeyEventFactory.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TGameKeyEventFactory.instance := TGameKeyEventFactory.Create();
        end;
        Exit(TGameKeyEventFactory(TJava.ToObject(TGameKeyEventFactory.instance)));
end;
    

constructor TGameKeyEventFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TGameKeyEventFactory.init;
var
  nullUtil_: TNullUtil;
  size: Integer;
  index2: Integer;
  index: Integer;
begin
        nullUtil_ := TNullUtil.getInstance();
        size := TInputFactory.getInstance().MAX;
        index := Self.MAX_SOURCES;
        while (TJava.PreDec(index)) >= (0) do begin
            index2 := size;
            while (TJava.PreDec(index2)) >= (0) do begin
                Self.ARRAY_[index][index2] := TGameKeyEvent.createEvent(TJava.Box(nullUtil_.NULL_OBJECT), index, index2);
            end;
        end;
end;
    

// throws Exception
function TGameKeyEventFactory.getInstanceForKey(anyType: IGameKeyEventSourceInterface; key: Integer): TGameKeyEvent;
var
  gameKeyEvent_: TGameKeyEvent;
begin
        gameKeyEvent_ := Self.ARRAY_[anyType.getSourceId()][key];
        Exit(gameKeyEvent_);
end;
    

// throws Exception
function TGameKeyEventFactory.getInstanceForInput(anyType: IGameKeyEventSourceInterface; input_: TInput): TGameKeyEvent;
var
  gameKeyEvent_: TGameKeyEvent;
begin
        gameKeyEvent_ := Self.ARRAY_[anyType.getSourceId()][input_.getId()];
        Exit(gameKeyEvent_);
end;

initialization
  {AB:INITIALIZATION}
  TGameKeyEventFactory.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

