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
// package org.allbinary.media.audio
unit BasicPlayer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Control, Player, PlayerListener, TimeBase, BasicArrayList, TimeBaseInterface, Controllable2, Controllable;

type
  {AB:TYPES}
  // BasicPlayerMIDP2JavaLibrary
  TBasicPlayer = class(TInterfacedObject, IPlayer, ITimeBaseInterface, IControllable2, IControllable)
  public
    listenersList: TBasicArrayList;
    timeBase: ITimeBase;
    stateP: Integer;
    loopCountP: Integer;
    class var CONTROL_TYPE: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        function getContentType: string; virtual;
        function getControl(controlType: string): IControl; virtual;
        function getControls: TArray<IControl>; virtual;
        procedure close; virtual;
        procedure addPlayerListener(playerListener_: IPlayerListener); virtual;
        procedure removePlayerListener(playerListener_: IPlayerListener); virtual;
        function getState: Integer; virtual;
        procedure setState(state: Integer); virtual;
        function getDuration: Int64; virtual;
        function getMediaTime: Int64; virtual;
        function getTimeBase: ITimeBase; virtual;
        procedure setTimeBase(timeBase_: ITimeBase); virtual;
        procedure deallocate; virtual;
        procedure prefetch; virtual;
        procedure realize; virtual;
        procedure setLoopCount(count: Integer); virtual;
        function getLoopCount: Integer; virtual;
        function setMediaTime(now: Int64): Int64; virtual;
        procedure start; virtual;
        procedure stop; virtual;
        procedure setVolume(leftVolume: Integer; rightVolume: Integer); virtual;
  end;

implementation
uses
  NullControl, MediaException, StringUtil, BasicArrayListD;


{AB:CODE}

procedure TBasicPlayer.InitFields;
begin
  Self.listenersList := TBasicArrayListD.Create();
  
  
  
end;

function TBasicPlayer.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TBasicPlayer.Create;
begin
    inherited Create;
    InitFields;
        Self.setLoopCount(0);
        Self.setState(IPlayer.UNREALIZED);
end;
    

function TBasicPlayer.getContentType: string;
begin
        Exit(TStringUtil.getInstance().EMPTY_STRING);
end;
    

function TBasicPlayer.getControl(controlType: string): IControl;
begin
        Exit(TNullControl.Create());
end;
    

function TBasicPlayer.getControls: TArray<IControl>;
begin
        Exit(nil);
end;
    

procedure TBasicPlayer.close;
begin
end;
    

procedure TBasicPlayer.addPlayerListener(playerListener_: IPlayerListener);
begin
    TJava.MonitorEnter(Self);
    try
        if not (Self.listenersList.contains(TJava.Box(playerListener_))) then begin
            Self.listenersList.add(TJava.Box(playerListener_));
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TBasicPlayer.removePlayerListener(playerListener_: IPlayerListener);
begin
        Self.listenersList.remove(TJava.ToObject(playerListener_));
end;
    

function TBasicPlayer.getState: Integer;
begin
        Exit(Self.stateP);
end;
    

procedure TBasicPlayer.setState(state: Integer);
begin
    TJava.MonitorEnter(Self);
    try
        Self.stateP := state;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TBasicPlayer.getDuration: Int64;
begin
        Exit(0);
end;
    

function TBasicPlayer.getMediaTime: Int64;
begin
        Exit(0);
end;
    

function TBasicPlayer.getTimeBase: ITimeBase;
begin
        Exit(Self.timeBase);
end;
    

procedure TBasicPlayer.setTimeBase(timeBase_: ITimeBase);
begin
    TJava.MonitorEnter(Self);
    try
        Self.timeBase := timeBase_;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TBasicPlayer.deallocate;
begin
end;
    

// throws MediaException
procedure TBasicPlayer.prefetch;
begin
end;
    

// throws MediaException
procedure TBasicPlayer.realize;
begin
end;
    

procedure TBasicPlayer.setLoopCount(count: Integer);
begin
    TJava.MonitorEnter(Self);
    try
        Self.loopCountP := count;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TBasicPlayer.getLoopCount: Integer;
begin
        Exit(Self.loopCountP);
end;
    

// throws MediaException
function TBasicPlayer.setMediaTime(now: Int64): Int64;
begin
    TJava.MonitorEnter(Self);
    try
        Exit(0);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws MediaException
procedure TBasicPlayer.start;
begin
    TJava.MonitorEnter(Self);
    try
        Self.setState(IPlayer.STARTED);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws MediaException
procedure TBasicPlayer.stop;
begin
    TJava.MonitorEnter(Self);
    try
        Self.setState(IPlayer.PREFETCHED);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TBasicPlayer.setVolume(leftVolume: Integer; rightVolume: Integer);
begin
end;

initialization
  {AB:INITIALIZATION}
  TBasicPlayer.CONTROL_TYPE := 'ToneControl';
  {AB:END}

end.

