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
unit LocalPlayerInputIdFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil;

type
  {AB:TYPES}
  TLocalPlayerInputIdFactory = class(TObject)
  public
    logUtil: TLogUtil;
    MAX_NUMBER_OF_PLAYERS: Integer;
    MAX_FAST_DEVICEID: Integer;
    deviceIdToplayerId: TArray<Integer>;
    playerIdToDeviceId: TArray<Integer>;
    playersInPlay: TArray<Boolean>;
    totalDevicesMapped: Integer;
    class var instance: TLocalPlayerInputIdFactory;
    procedure InitFields;
        constructor Create;
        class function getInstance: TLocalPlayerInputIdFactory; static;
        function getDeviceId(playerInputId: Integer): Integer; virtual;
        function getPlayerForDevice(deviceId: Integer): Integer; virtual;
        function getTotalDevicesInPlay: Integer; virtual;
        function isPlayerInPlay(playerInputId: Integer): Boolean; virtual;
        procedure setPlayerInPlay(playerInputId: Integer); virtual;
        procedure setPlayerOutOfPlay(playerInputId: Integer); virtual;
        function getPlayersInPlay: TArray<Boolean>; virtual;
  end;

implementation
uses
  AnalogLocationInputFactory, StringMaker;


{AB:CODE}

procedure TLocalPlayerInputIdFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.MAX_NUMBER_OF_PLAYERS := 6;
  Self.MAX_FAST_DEVICEID := 65;
  Self.deviceIdToplayerId := TJava.NewArray<Integer>(Self.MAX_FAST_DEVICEID);
  Self.playerIdToDeviceId := TJava.NewArray<Integer>(Self.MAX_NUMBER_OF_PLAYERS);
  Self.playersInPlay := TJava.NewArray<Boolean>(Self.MAX_NUMBER_OF_PLAYERS);
  Self.totalDevicesMapped := 0;
end;
    

constructor TLocalPlayerInputIdFactory.Create;
var
  index: Integer;
begin
    inherited Create;
    InitFields;
        for index := (System.Length(Self.deviceIdToplayerId)) - (1) downto 0 do begin
            Self.deviceIdToplayerId[index] := -1;
        end;
end;
    

class function TLocalPlayerInputIdFactory.getInstance: TLocalPlayerInputIdFactory;
begin
        Exit(TLocalPlayerInputIdFactory.instance);
end;
    

function TLocalPlayerInputIdFactory.getDeviceId(playerInputId: Integer): Integer;
begin
        Exit(Self.playerIdToDeviceId[playerInputId]);
end;
    

function TLocalPlayerInputIdFactory.getPlayerForDevice(deviceId: Integer): Integer;
var
  index: Integer;
  playerInputId: Integer;
begin
        
        if (deviceId) < (Self.MAX_FAST_DEVICEID) then begin
            playerInputId := Self.deviceIdToplayerId[deviceId];
            if (playerInputId) <> (-1) then begin
                Exit(playerInputId);
            end;
        end else begin
            for index := (Self.totalDevicesMapped) - (1) downto 0 do begin
                if (Self.playerIdToDeviceId[index]) = (deviceId) then begin
                    Exit(index);
                end;
            end;
        end;
        index := Self.totalDevicesMapped;
        if (deviceId) < (Self.MAX_FAST_DEVICEID) then begin
            Self.deviceIdToplayerId[deviceId] := index;
        end else begin
            Self.logUtil.putF(TStringMaker.Create().append('Added DeviceId: ').appendint(deviceId).append(' beyond fast Id list').toString(), TJava.Box(Self), 'getPlayerForDevice');
        end;
        Self.playerIdToDeviceId[index] := deviceId;
        TAnalogLocationInputFactory.getInstance().addPlayer(Self.totalDevicesMapped);
        Inc(Self.totalDevicesMapped);
        Self.logUtil.putF(TStringMaker.Create().append('Added DeviceId: ').appendint(deviceId).append(' at: ').appendint(index).append(' Total: ').appendint(Self.totalDevicesMapped).toString(), TJava.Box(Self), 'getPlayerForDevice');
        Exit(index);
end;
    

function TLocalPlayerInputIdFactory.getTotalDevicesInPlay: Integer;
var
  total: Integer;
  index: Integer;
begin
        total := 0;
        for index := (Self.totalDevicesMapped) - (1) downto 0 do begin
            if (Self.playersInPlay[index]) = (True) then begin
                Inc(total);
            end;
        end;
        Exit(total);
end;
    

function TLocalPlayerInputIdFactory.isPlayerInPlay(playerInputId: Integer): Boolean;
begin
        Exit(Self.playersInPlay[playerInputId]);
end;
    

procedure TLocalPlayerInputIdFactory.setPlayerInPlay(playerInputId: Integer);
begin
        Self.logUtil.putF(TStringMaker.Create().append('Setting PlayerInPlay with playerInputId: ').appendint(playerInputId).toString(), TJava.Box(Self), 'setPlayerInPlay');
        Self.playersInPlay[playerInputId] := True;
end;
    

procedure TLocalPlayerInputIdFactory.setPlayerOutOfPlay(playerInputId: Integer);
begin
        Self.logUtil.putF(TStringMaker.Create().append('Setting PlayerOutOfPlay with playerInputId: ').appendint(playerInputId).toString(), TJava.Box(Self), 'setPlayerOutOfPlay');
        Self.playersInPlay[playerInputId] := False;
end;
    

function TLocalPlayerInputIdFactory.getPlayersInPlay: TArray<Boolean>;
begin
        Exit(Self.playersInPlay);
end;

initialization
  {AB:INITIALIZATION}
  TLocalPlayerInputIdFactory.instance := TLocalPlayerInputIdFactory.Create();
  {AB:END}

end.

