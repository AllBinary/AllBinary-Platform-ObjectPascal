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
unit TextNotificationUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameNotificationEventHandler;

type
  {AB:TYPES}
  TTextNotificationUtil = class(TObject)
  public
    TWO: Integer;
    FALSE_: Boolean;
    gameNotificationEventHandler: TGameNotificationEventHandler;
    class var instance: TTextNotificationUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TTextNotificationUtil; static;
        procedure fireError(message: string); virtual;
        procedure fireNew(message: string); virtual;
        procedure fireSuccess(message: string); virtual;
        procedure fire(message: string); virtual;
  end;

implementation
uses
  GameNotificationEvent, BasicColorFactory, BooleanFactory, SmallIntegerSingletonFactory, ErrorSound, PrimaryPlayerQueueFactory, SelectSound;


{AB:CODE}

procedure TTextNotificationUtil.InitFields;
begin
  Self.TWO := TSmallIntegerSingletonFactory.getInstance().getAt(2);
  Self.FALSE_ := TBooleanFactory.getInstance().FALSE_;
  Self.gameNotificationEventHandler := TGameNotificationEventHandler.getInstance();
end;

constructor TTextNotificationUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TTextNotificationUtil.getInstance: TTextNotificationUtil;
begin
        Exit(TTextNotificationUtil.instance);
end;
    

// throws Exception
procedure TTextNotificationUtil.fireError(message: string);
begin
        TPrimaryPlayerQueueFactory.getInstance().add(TErrorSound.getInstance());
        Self.fire(message);
end;
    

// throws Exception
procedure TTextNotificationUtil.fireNew(message: string);
begin
        TPrimaryPlayerQueueFactory.getInstance().add(TSelectSound.getInstance());
        Self.fire(message);
end;
    

// throws Exception
procedure TTextNotificationUtil.fireSuccess(message: string);
begin
        TPrimaryPlayerQueueFactory.getInstance().add(TSelectSound.getInstance());
        Self.fire(message);
end;
    

// throws Exception
procedure TTextNotificationUtil.fire(message: string);
var
  gameNotificationEvent_: TGameNotificationEvent;
begin
        gameNotificationEvent_ := TGameNotificationEvent.Create(TJava.Box(Self), message, Self.TWO, TBasicColorFactory.getInstance().RED, Self.FALSE_);
        Self.gameNotificationEventHandler.fireEvent(gameNotificationEvent_);
end;

initialization
  {AB:INITIALIZATION}
  TTextNotificationUtil.instance := TTextNotificationUtil.Create();
  {AB:END}

end.

