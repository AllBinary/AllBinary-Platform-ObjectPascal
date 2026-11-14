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
// package org.allbinary.game.displayable.canvas
unit GameCanvasInputProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Canvas, GameKey, InputProcessor, DownGameKeyEventHandler, DownKeyEventHandler, GameKeyEventFactory, UpGameKeyEventHandler, InputToGameKeyMapping, LogUtil, SmallIntegerSingletonFactory, AllBinaryGameCanvas;

type
  {AB:TYPES}
  TGameCanvasInputProcessor = class(TInputProcessor)
  public
    logUtil: TLogUtil;
    allBinaryGameCanvas: TAllBinaryGameCanvas;
    downGameKeyEventHandler: TDownGameKeyEventHandler;
    upGameKeyEventHandler: TUpGameKeyEventHandler;
    downKeyEventHandler: TDownKeyEventHandler;
    smallIntegerSingletonFactory: TSmallIntegerSingletonFactory;
    inputToGameKeyMapping: TInputToGameKeyMapping;
    NONE: TGameKey;
    gameKeyEventFactory: TGameKeyEventFactory;
    procedure InitFields;
        constructor Create(allBinaryGameCanvas_: TAllBinaryGameCanvas);
        procedure keyPressedByDevice(keyCode: Integer; deviceId: Integer); override;
        procedure keyReleasedByDevice(canvas_: TCanvas; keyCode: Integer; deviceId: Integer); override;
        procedure removeGameKeyEvent(canvas_: TCanvas; keyCode: Integer; deviceId: Integer; repeated: Boolean);
  end;

implementation
uses
  GameKeyEventSourceInterface, GameKeyFactory, PlatformInputMappingFactory, GameKeyEvent, StringMaker;


{AB:CODE}

procedure TGameCanvasInputProcessor.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  Self.downGameKeyEventHandler := TDownGameKeyEventHandler.getInstance();
  Self.upGameKeyEventHandler := TUpGameKeyEventHandler.getInstance();
  Self.downKeyEventHandler := TDownKeyEventHandler.getInstance();
  Self.smallIntegerSingletonFactory := TSmallIntegerSingletonFactory.getInstance();
  Self.inputToGameKeyMapping := TPlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping();
  Self.NONE := TGameKeyFactory.getInstance().NONE;
  Self.gameKeyEventFactory := TGameKeyEventFactory.getInstance();
end;
    

constructor TGameCanvasInputProcessor.Create(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
    inherited Create;
    InitFields;
        Self.allBinaryGameCanvas := allBinaryGameCanvas_;
        Self.inputToGameKeyMapping.init(Self.allBinaryGameCanvas);
end;
    

procedure TGameCanvasInputProcessor.keyPressedByDevice(keyCode: Integer; deviceId: Integer);
var
  gameKey_: TGameKey;
  gameKeyEvent_: TGameKeyEvent;
  keyCodeAsInteger: Integer;
begin
        try
            gameKey_ := Self.inputToGameKeyMapping.getInstanceForCanvas(Self.allBinaryGameCanvas, keyCode);
            if (gameKey_) <> (Self.NONE) then begin
                gameKeyEvent_ := Self.gameKeyEventFactory.getInstanceForInput(Self.allBinaryGameCanvas, gameKey_);
                Self.downGameKeyEventHandler.fireEvent(gameKeyEvent_);
                Self.downGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent_);
            end else begin
                Self.logUtil.putF(TStringMaker.Create().append(Self.gameInputStrings.NO_KEY).appendint(keyCode).toString(), TJava.Box(Self), Self.gameInputStrings.ADD_KEY_EVENT);
            end;
            keyCodeAsInteger := Self.smallIntegerSingletonFactory.getAtNoThrow(keyCode);
            Self.downKeyEventHandler.fireEventI(keyCodeAsInteger);
            Self.downKeyEventHandler.getInstanceForDevice(deviceId).fireEventI(keyCodeAsInteger);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put('Key Event Error', TJava.Box(Self), Self.gameInputStrings.ADD_KEY_EVENT, TJava.Box(e));
            end;
        end;
end;
    

procedure TGameCanvasInputProcessor.keyReleasedByDevice(canvas_: TCanvas; keyCode: Integer; deviceId: Integer);
begin
        Self.removeGameKeyEvent(canvas_, keyCode, deviceId, False);
end;
    

procedure TGameCanvasInputProcessor.removeGameKeyEvent(canvas_: TCanvas; keyCode: Integer; deviceId: Integer; repeated: Boolean);
var
  gameKey_: TGameKey;
  gameKeyEventSourceInterface_: IGameKeyEventSourceInterface;
  gameKeyEvent_: TGameKeyEvent;
begin
        try
            gameKey_ := Self.inputToGameKeyMapping.getInstanceForCanvas(canvas_, keyCode);
            if (gameKey_) <> (Self.NONE) then begin
                gameKeyEventSourceInterface_ := (TJava.ToObject(canvas_) as IGameKeyEventSourceInterface);
                gameKeyEvent_ := Self.gameKeyEventFactory.getInstanceForInput(gameKeyEventSourceInterface_, gameKey_);
                Self.upGameKeyEventHandler.fireEvent(gameKeyEvent_);
                Self.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent_);
            end else begin
                Self.logUtil.putF(TStringMaker.Create().append(Self.gameInputStrings.NO_KEY).appendint(keyCode).toString(), TJava.Box(Self), Self.gameInputStrings.REMOVE_KEY_EVENT);
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put('Key Event Error', TJava.Box(Self), Self.gameInputStrings.REMOVE_KEY_EVENT, TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

