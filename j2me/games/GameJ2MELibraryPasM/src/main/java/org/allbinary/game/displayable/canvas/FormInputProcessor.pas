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
unit FormInputProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Canvas, InputFactory, InputProcessor, PlatformKeyFactory, DownKeyEventHandler, GameKeyEventFactory, UpGameKeyEventHandler, LogUtil, CommonStrings, AllBinaryGameCanvas;

type
  {AB:TYPES}
  TFormInputProcessor = class(TInputProcessor)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    gameKeyEventFactory: TGameKeyEventFactory;
    downKeyEventHandler: TDownKeyEventHandler;
    upGameKeyEventHandler: TUpGameKeyEventHandler;
    inputFactory: TInputFactory;
    platformKeyFactory: TPlatformKeyFactory;
    allBinaryGameCanvas: TAllBinaryGameCanvas;
    procedure InitFields;
        constructor Create(allBinaryGameCanvas_: TAllBinaryGameCanvas);
        procedure keyPressedByDevice(keyCode: Integer; deviceId: Integer); override;
        procedure keyReleasedByDevice(canvas_: TCanvas; keyCode: Integer; deviceId: Integer); override;
  end;

implementation
uses
  GameKey, GameKeyEventSourceInterface, GameKeyFactory, Input, GameKeyEvent, PreLogUtil, StringMaker, CommonSeps;


{AB:CODE}

procedure TFormInputProcessor.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.gameKeyEventFactory := TGameKeyEventFactory.getInstance();
  Self.downKeyEventHandler := TDownKeyEventHandler.getInstance();
  Self.upGameKeyEventHandler := TUpGameKeyEventHandler.getInstance();
  Self.inputFactory := TInputFactory.getInstance();
  Self.platformKeyFactory := TPlatformKeyFactory.getInstance();
  
end;
    

constructor TFormInputProcessor.Create(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
    inherited Create;
    InitFields;
        Self.allBinaryGameCanvas := allBinaryGameCanvas_;
end;
    

procedure TFormInputProcessor.keyPressedByDevice(keyCode: Integer; deviceId: Integer);
var
  input_: TInput;
  gameKeyEvent_: TGameKeyEvent;
begin
        try
            TPreLogUtil.put(TStringMaker.Create().append(Self.inputFactory.KEY_CODE_LABEL).appendint(keyCode).append(TCommonSeps.getInstance().SPACE).append(Self.inputFactory.DEVICE_ID_LABEL).appendint(deviceId).toString(), TJava.Box(Self), Self.gameInputStrings.KEY_PRESSED);
            input_ := Self.inputFactory.getInstanceById(keyCode);
            gameKeyEvent_ := Self.gameKeyEventFactory.getInstanceForInput(Self.allBinaryGameCanvas, input_);
            Self.downKeyEventHandler.fireEventForGameKeyEvent(gameKeyEvent_);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.gameInputStrings.ADD_KEY_EVENT, TJava.Box(e));
            end;
        end;
end;
    

procedure TFormInputProcessor.keyReleasedByDevice(canvas_: TCanvas; keyCode: Integer; deviceId: Integer);
var
  input_: TInput;
  gameKey_: TGameKey;
  gameKeyEventSourceInterface_: IGameKeyEventSourceInterface;
  gameKeyEvent_: TGameKeyEvent;
begin
        try
            input_ := Self.inputFactory.getInstanceById(keyCode);
            if Self.platformKeyFactory.isEnter(input_) then begin
                TPreLogUtil.put(TStringMaker.Create().append(Self.inputFactory.KEY_CODE_LABEL).appendint(keyCode).append(TCommonSeps.getInstance().SPACE).append(Self.inputFactory.DEVICE_ID_LABEL).appendint(deviceId).toString(), TJava.Box(Self), Self.gameInputStrings.KEY_RELEASED);
                gameKey_ := TGameKeyFactory.getInstance().KEY_NUM0;
                gameKeyEventSourceInterface_ := (TJava.ToObject(canvas_) as IGameKeyEventSourceInterface);
                gameKeyEvent_ := Self.gameKeyEventFactory.getInstanceForInput(gameKeyEventSourceInterface_, gameKey_);
                Self.upGameKeyEventHandler.fireEvent(gameKeyEvent_);
                Self.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent_);
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.gameInputStrings.ADD_KEY_EVENT, TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

