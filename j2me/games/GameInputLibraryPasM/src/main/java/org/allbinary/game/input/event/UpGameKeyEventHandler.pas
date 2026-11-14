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
unit UpGameKeyEventHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LocalPlayerInputIdFactory, EventListenerInterface, UpGameKeyEventHandlerBase;

type
  {AB:TYPES}
  TUpGameKeyEventHandler = class(TUpGameKeyEventHandlerBase)
  public
    playerInputIdFactory: TLocalPlayerInputIdFactory;
    class var instance: TUpGameKeyEventHandler;
    class var instanceArray: TArray<TUpGameKeyEventHandlerBase>;
    procedure InitFields;
        class function getInstance: TUpGameKeyEventHandler; static;
        function getInstanceForDevice(deviceId: Integer): TUpGameKeyEventHandlerBase; virtual;
        function getInstanceForPlayer(playerInputId: Integer): TUpGameKeyEventHandlerBase; virtual;
        constructor Create;
        procedure removeAllListeners; override;
        procedure removeListenerSingleThreaded(eventListenerInterface_: IEventListenerInterface); override;
        procedure removeListener(eventListenerInterface_: IEventListenerInterface); override;
  end;

implementation

{AB:CODE}

procedure TUpGameKeyEventHandler.InitFields;
begin
  Self.playerInputIdFactory := TLocalPlayerInputIdFactory.getInstance();
end;
    

class function TUpGameKeyEventHandler.getInstance: TUpGameKeyEventHandler;
begin
        Exit(TUpGameKeyEventHandler.instance);
end;
    

function TUpGameKeyEventHandler.getInstanceForDevice(deviceId: Integer): TUpGameKeyEventHandlerBase;
var
  playerInputId: Integer;
begin
        playerInputId := Self.playerInputIdFactory.getPlayerForDevice(deviceId);
        Exit(TUpGameKeyEventHandler.instanceArray[playerInputId]);
end;
    

function TUpGameKeyEventHandler.getInstanceForPlayer(playerInputId: Integer): TUpGameKeyEventHandlerBase;
begin
        Exit(TUpGameKeyEventHandler.instanceArray[playerInputId]);
end;
    

constructor TUpGameKeyEventHandler.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TUpGameKeyEventHandler.removeAllListeners;
var
  index: Integer;
begin
        inherited removeAllListeners();
        for index := (System.Length(TUpGameKeyEventHandler.instanceArray)) - (1) downto 0 do begin
            TUpGameKeyEventHandler.instanceArray[index].removeAllListeners();
        end;
end;
    

procedure TUpGameKeyEventHandler.removeListenerSingleThreaded(eventListenerInterface_: IEventListenerInterface);
var
  index: Integer;
begin
        inherited removeListenerSingleThreaded(eventListenerInterface_);
        for index := (System.Length(TUpGameKeyEventHandler.instanceArray)) - (1) downto 0 do begin
            TUpGameKeyEventHandler.instanceArray[index].removeListenerSingleThreaded(eventListenerInterface_);
        end;
end;
    

procedure TUpGameKeyEventHandler.removeListener(eventListenerInterface_: IEventListenerInterface);
var
  index: Integer;
begin
        inherited removeListener(eventListenerInterface_);
        for index := (System.Length(TUpGameKeyEventHandler.instanceArray)) - (1) downto 0 do begin
            TUpGameKeyEventHandler.instanceArray[index].removeListener(eventListenerInterface_);
        end;
end;

initialization
  {AB:INITIALIZATION}
  TUpGameKeyEventHandler.instance := TUpGameKeyEventHandler.Create();
  TUpGameKeyEventHandler.instanceArray := TArray<TUpGameKeyEventHandlerBase>.Create(TUpGameKeyEventHandlerBase.Create(), TUpGameKeyEventHandlerBase.Create(), TUpGameKeyEventHandlerBase.Create(), TUpGameKeyEventHandlerBase.Create(), TUpGameKeyEventHandlerBase.Create(), TUpGameKeyEventHandlerBase.Create());
  {AB:END}

end.

