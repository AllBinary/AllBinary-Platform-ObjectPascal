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
// package org.allbinary.input.motion.button
unit TouchButtonInput;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameKeyEventSourceInterface, Input, GameKeyEvent, GameKeyEventFactory, InputToGameKeyMapping, LogUtil;

type
  {AB:TYPES}
  TTouchButtonInput = class(TInput, IGameKeyEventSourceInterface)
  public
    logUtil: TLogUtil;
    gameKeyEventFactory: TGameKeyEventFactory;
    TOUCH_BUTTON_SOURCE_ID: Integer;
    gameKeyEvent: TGameKeyEvent;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(id: Integer; name: string);
        procedure update(inputToGameKeyMapping_: TInputToGameKeyMapping); virtual;
        function getSourceId: Integer; virtual;
        function getGameKeyEvent: TGameKeyEvent; virtual;
  end;

implementation
uses
  GameKey, InputFactory, CommonStrings;


{AB:CODE}

procedure TTouchButtonInput.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.gameKeyEventFactory := TGameKeyEventFactory.getInstance();
  Self.TOUCH_BUTTON_SOURCE_ID := Self.gameKeyEventFactory.TOUCH_BUTTON_SOURCE_ID;
  Self.gameKeyEvent := TGameKeyEvent.NONE;
end;

function TTouchButtonInput.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TTouchButtonInput.Create(id: Integer; name: string);
var
  inputFactory_: TInputFactory;
begin
        inherited Create(id, name);
        InitFields;
        inputFactory_ := TInputFactory.getInstance();
        inputFactory_.add(Self.getId(), Self);
end;
    

procedure TTouchButtonInput.update(inputToGameKeyMapping_: TInputToGameKeyMapping);
var
  gameKey_: TGameKey;
  commonStrings_: TCommonStrings;
begin
        try
            gameKey_ := inputToGameKeyMapping_.getInstance(Self.getId());
            Self.gameKeyEvent := Self.gameKeyEventFactory.getInstanceForInput(Self, gameKey_);
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.UPDATE, TJava.Box(e));
            end;
        end;
end;
    

function TTouchButtonInput.getSourceId: Integer;
begin
        Exit(Self.TOUCH_BUTTON_SOURCE_ID);
end;
    

function TTouchButtonInput.getGameKeyEvent: TGameKeyEvent;
begin
        Exit(Self.gameKeyEvent);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

