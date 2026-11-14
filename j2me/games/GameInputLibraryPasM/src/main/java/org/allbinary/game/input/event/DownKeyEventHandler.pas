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
unit DownKeyEventHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LocalPlayerInputIdFactory, EventListenerInterface, DownKeyEventHandlerBase;

type
  {AB:TYPES}
  TDownKeyEventHandler = class(TDownKeyEventHandlerBase)
  public
    playerInputIdFactory: TLocalPlayerInputIdFactory;
    class var instance: TDownKeyEventHandler;
    class var instanceArray: TArray<TDownKeyEventHandlerBase>;
    procedure InitFields;
        class function getInstance: TDownKeyEventHandler; static;
        function getInstanceForDevice(deviceId: Integer): TDownKeyEventHandlerBase; virtual;
        function getInstanceForPlayer(playerInputId: Integer): TDownKeyEventHandlerBase; virtual;
        constructor Create;
        procedure removeAllListeners; override;
        procedure removeListenerSingleThreaded(eventListenerInterface_: IEventListenerInterface); override;
        procedure removeListener(eventListenerInterface_: IEventListenerInterface); override;
  end;

implementation

{AB:CODE}

procedure TDownKeyEventHandler.InitFields;
begin
  Self.playerInputIdFactory := TLocalPlayerInputIdFactory.getInstance();
end;
    

class function TDownKeyEventHandler.getInstance: TDownKeyEventHandler;
begin
        Exit(TDownKeyEventHandler.instance);
end;
    

function TDownKeyEventHandler.getInstanceForDevice(deviceId: Integer): TDownKeyEventHandlerBase;
var
  playerInputId: Integer;
begin
        playerInputId := Self.playerInputIdFactory.getPlayerForDevice(deviceId);
        Exit(TDownKeyEventHandler.instanceArray[playerInputId]);
end;
    

function TDownKeyEventHandler.getInstanceForPlayer(playerInputId: Integer): TDownKeyEventHandlerBase;
begin
        Exit(TDownKeyEventHandler.instanceArray[playerInputId]);
end;
    

constructor TDownKeyEventHandler.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TDownKeyEventHandler.removeAllListeners;
var
  index: Integer;
begin
        inherited removeAllListeners();
        for index := (System.Length(TDownKeyEventHandler.instanceArray)) - (1) downto 0 do begin
            TDownKeyEventHandler.instanceArray[index].removeAllListeners();
        end;
end;
    

procedure TDownKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface_: IEventListenerInterface);
var
  index: Integer;
begin
        inherited removeListenerSingleThreaded(eventListenerInterface_);
        for index := (System.Length(TDownKeyEventHandler.instanceArray)) - (1) downto 0 do begin
            TDownKeyEventHandler.instanceArray[index].removeListenerSingleThreaded(eventListenerInterface_);
        end;
end;
    

procedure TDownKeyEventHandler.removeListener(eventListenerInterface_: IEventListenerInterface);
var
  index: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        inherited removeListener(eventListenerInterface_);
        for index := (System.Length(TDownKeyEventHandler.instanceArray)) - (1) downto 0 do begin
            TDownKeyEventHandler.instanceArray[index].removeListener(eventListenerInterface_);
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  TDownKeyEventHandler.instance := TDownKeyEventHandler.Create();
  TDownKeyEventHandler.instanceArray := TArray<TDownKeyEventHandlerBase>.Create(TDownKeyEventHandlerBase.Create(), TDownKeyEventHandlerBase.Create(), TDownKeyEventHandlerBase.Create(), TDownKeyEventHandlerBase.Create(), TDownKeyEventHandlerBase.Create(), TDownKeyEventHandlerBase.Create());
  {AB:END}

end.

