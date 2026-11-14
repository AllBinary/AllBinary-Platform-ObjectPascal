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
unit DownGameKeyEventHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LocalPlayerInputIdFactory, EventListenerInterface, DownGameKeyEventHandlerBase;

type
  {AB:TYPES}
  TDownGameKeyEventHandler = class(TDownGameKeyEventHandlerBase)
  public
    playerInputIdFactory: TLocalPlayerInputIdFactory;
    class var instance: TDownGameKeyEventHandler;
    class var instanceArray: TArray<TDownGameKeyEventHandlerBase>;
    procedure InitFields;
        class function getInstance: TDownGameKeyEventHandler; static;
        function getInstanceForDevice(deviceId: Integer): TDownGameKeyEventHandlerBase; virtual;
        function getInstanceForPlayer(playerInputId: Integer): TDownGameKeyEventHandlerBase; virtual;
        constructor Create;
        procedure removeAllListeners; override;
        procedure removeListenerSingleThreaded(eventListenerInterface_: IEventListenerInterface); override;
        procedure removeListener(eventListenerInterface_: IEventListenerInterface); override;
  end;

implementation

{AB:CODE}

procedure TDownGameKeyEventHandler.InitFields;
begin
  Self.playerInputIdFactory := TLocalPlayerInputIdFactory.getInstance();
end;
    

class function TDownGameKeyEventHandler.getInstance: TDownGameKeyEventHandler;
begin
        Exit(TDownGameKeyEventHandler.instance);
end;
    

function TDownGameKeyEventHandler.getInstanceForDevice(deviceId: Integer): TDownGameKeyEventHandlerBase;
var
  playerInputId: Integer;
begin
        playerInputId := Self.playerInputIdFactory.getPlayerForDevice(deviceId);
        Exit(TDownGameKeyEventHandler.instanceArray[playerInputId]);
end;
    

function TDownGameKeyEventHandler.getInstanceForPlayer(playerInputId: Integer): TDownGameKeyEventHandlerBase;
begin
        Exit(TDownGameKeyEventHandler.instanceArray[playerInputId]);
end;
    

constructor TDownGameKeyEventHandler.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TDownGameKeyEventHandler.removeAllListeners;
var
  index: Integer;
begin
        inherited removeAllListeners();
        for index := (System.Length(TDownGameKeyEventHandler.instanceArray)) - (1) downto 0 do begin
            TDownGameKeyEventHandler.instanceArray[index].removeAllListeners();
        end;
end;
    

procedure TDownGameKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface_: IEventListenerInterface);
var
  index: Integer;
begin
        inherited removeListenerSingleThreaded(eventListenerInterface_);
        for index := (System.Length(TDownGameKeyEventHandler.instanceArray)) - (1) downto 0 do begin
            TDownGameKeyEventHandler.instanceArray[index].removeListenerSingleThreaded(eventListenerInterface_);
        end;
end;
    

procedure TDownGameKeyEventHandler.removeListener(eventListenerInterface_: IEventListenerInterface);
var
  index: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        inherited removeListener(eventListenerInterface_);
        for index := (System.Length(TDownGameKeyEventHandler.instanceArray)) - (1) downto 0 do begin
            TDownGameKeyEventHandler.instanceArray[index].removeListener(eventListenerInterface_);
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  TDownGameKeyEventHandler.instance := TDownGameKeyEventHandler.Create();
  TDownGameKeyEventHandler.instanceArray := TArray<TDownGameKeyEventHandlerBase>.Create(TDownGameKeyEventHandlerBase.Create(), TDownGameKeyEventHandlerBase.Create(), TDownGameKeyEventHandlerBase.Create(), TDownGameKeyEventHandlerBase.Create(), TDownGameKeyEventHandlerBase.Create(), TDownGameKeyEventHandlerBase.Create());
  {AB:END}

end.

