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
unit UpKeyEventHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LocalPlayerInputIdFactory, EventListenerInterface, UpKeyEventHandlerBase;

type
  {AB:TYPES}
  TUpKeyEventHandler = class(TUpKeyEventHandlerBase)
  public
    playerInputIdFactory: TLocalPlayerInputIdFactory;
    class var instance: TUpKeyEventHandler;
    class var instanceArray: TArray<TUpKeyEventHandlerBase>;
    procedure InitFields;
        class function getInstance: TUpKeyEventHandler; static;
        function getInstanceForDevice(deviceId: Integer): TUpKeyEventHandlerBase; virtual;
        function getInstanceForPlayer(playerInputId: Integer): TUpKeyEventHandlerBase; virtual;
        constructor Create;
        procedure removeAllListeners; override;
        procedure removeListenerSingleThreaded(eventListenerInterface_: IEventListenerInterface); override;
        procedure removeListener(eventListenerInterface_: IEventListenerInterface); override;
  end;

implementation

{AB:CODE}

procedure TUpKeyEventHandler.InitFields;
begin
  Self.playerInputIdFactory := TLocalPlayerInputIdFactory.getInstance();
end;
    

class function TUpKeyEventHandler.getInstance: TUpKeyEventHandler;
begin
        Exit(TUpKeyEventHandler.instance);
end;
    

function TUpKeyEventHandler.getInstanceForDevice(deviceId: Integer): TUpKeyEventHandlerBase;
var
  playerInputId: Integer;
begin
        playerInputId := Self.playerInputIdFactory.getPlayerForDevice(deviceId);
        Exit(TUpKeyEventHandler.instanceArray[playerInputId]);
end;
    

function TUpKeyEventHandler.getInstanceForPlayer(playerInputId: Integer): TUpKeyEventHandlerBase;
begin
        Exit(TUpKeyEventHandler.instanceArray[playerInputId]);
end;
    

constructor TUpKeyEventHandler.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TUpKeyEventHandler.removeAllListeners;
var
  index: Integer;
begin
        inherited removeAllListeners();
        for index := (System.Length(TUpKeyEventHandler.instanceArray)) - (1) downto 0 do begin
            TUpKeyEventHandler.instanceArray[index].removeAllListeners();
        end;
end;
    

procedure TUpKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface_: IEventListenerInterface);
var
  index: Integer;
begin
        inherited removeListenerSingleThreaded(eventListenerInterface_);
        for index := (System.Length(TUpKeyEventHandler.instanceArray)) - (1) downto 0 do begin
            TUpKeyEventHandler.instanceArray[index].removeListenerSingleThreaded(eventListenerInterface_);
        end;
end;
    

procedure TUpKeyEventHandler.removeListener(eventListenerInterface_: IEventListenerInterface);
var
  index: Integer;
begin
        inherited removeListener(eventListenerInterface_);
        for index := (System.Length(TUpKeyEventHandler.instanceArray)) - (1) downto 0 do begin
            TUpKeyEventHandler.instanceArray[index].removeListener(eventListenerInterface_);
        end;
end;

initialization
  {AB:INITIALIZATION}
  TUpKeyEventHandler.instance := TUpKeyEventHandler.Create();
  TUpKeyEventHandler.instanceArray := TArray<TUpKeyEventHandlerBase>.Create(TUpKeyEventHandlerBase.Create(), TUpKeyEventHandlerBase.Create(), TUpKeyEventHandlerBase.Create(), TUpKeyEventHandlerBase.Create(), TUpKeyEventHandlerBase.Create(), TUpKeyEventHandlerBase.Create());
  {AB:END}

end.

