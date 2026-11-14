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
unit PlayerComposite;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Control, Controllable, Player, PlayerListener, TimeBase, LogUtil, CommonStrings, GameTickTimeDelayHelper, TimeDelayHelper;

type
  {AB:TYPES}
  // BasicPlayerMIDP2
  TPlayerComposite = class(TInterfacedObject, IControllable, IPlayer)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    player: IPlayer;
    timeElapsedHelper: TTimeDelayHelper;
    gameTickTimeDelayHelper: TGameTickTimeDelayHelper;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(player_: IPlayer; repeatTime: Integer);
        procedure addPlayerListener(playerListener_: IPlayerListener); virtual;
        procedure removePlayerListener(playerListener_: IPlayerListener); virtual;
        procedure close; virtual;
        procedure deallocate; virtual;
        function getContentType: string; virtual;
        function getDuration: Int64; virtual;
        function getMediaTime: Int64; virtual;
        function getTimeBase: ITimeBase; virtual;
        procedure setTimeBase(timeBase_: ITimeBase); virtual;
        procedure prefetch; virtual;
        procedure realize; virtual;
        function getState: Integer; virtual;
        procedure setLoopCount(count: Integer); virtual;
        function setMediaTime(now: Int64): Int64; virtual;
        procedure start; virtual;
        procedure stop; virtual;
        function getControl(controlType: string): IControl; virtual;
        function getControls: TArray<IControl>; virtual;
        procedure setVolume(leftVolume: Integer; rightVolume: Integer); virtual;
        function getPlayerP: IPlayer; virtual;
  end;

implementation
uses
  TimeBaseInterface, Controllable2, MediaException, GameTickTimeDelayHelperFactory;


{AB:CODE}

procedure TPlayerComposite.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  Self.timeElapsedHelper := TTimeDelayHelper.Create(0);
  Self.gameTickTimeDelayHelper := TGameTickTimeDelayHelperFactory.getInstance();
end;

function TPlayerComposite.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TPlayerComposite.Create(player_: IPlayer; repeatTime: Integer);
begin
    inherited Create;
    InitFields;
        Self.player := player_;
        Self.timeElapsedHelper.delay := repeatTime;
end;
    

procedure TPlayerComposite.addPlayerListener(playerListener_: IPlayerListener);
begin
    TJava.MonitorEnter(Self);
    try
        Self.player.addPlayerListener(playerListener_);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TPlayerComposite.removePlayerListener(playerListener_: IPlayerListener);
begin
        Self.player.removePlayerListener(playerListener_);
end;
    

procedure TPlayerComposite.close;
begin
        Self.player.close();
end;
    

procedure TPlayerComposite.deallocate;
begin
        Self.player.deallocate();
end;
    

function TPlayerComposite.getContentType: string;
begin
        Exit(Self.player.getContentType());
end;
    

function TPlayerComposite.getDuration: Int64;
begin
        Exit(Self.player.getDuration());
end;
    

function TPlayerComposite.getMediaTime: Int64;
begin
        Exit(Self.player.getMediaTime());
end;
    

function TPlayerComposite.getTimeBase: ITimeBase;
begin
        Exit(((TJava.ToObject(Self.player) as ITimeBaseInterface)).getTimeBase());
end;
    

// throws MediaException
procedure TPlayerComposite.setTimeBase(timeBase_: ITimeBase);
begin
    TJava.MonitorEnter(Self);
    try
        ((TJava.ToObject(Self.player) as ITimeBaseInterface)).setTimeBase(timeBase_);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TPlayerComposite.prefetch;
begin
        try
            Self.player.prefetch();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'prefetch', e);
            end;
        end;
end;
    

procedure TPlayerComposite.realize;
begin
        try
            Self.player.realize();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'realize', e);
            end;
        end;
end;
    

function TPlayerComposite.getState: Integer;
begin
        Exit(Self.player.getState());
end;
    

procedure TPlayerComposite.setLoopCount(count: Integer);
begin
        Self.player.setLoopCount(count);
end;
    

function TPlayerComposite.setMediaTime(now: Int64): Int64;
begin
        try
            Exit(Self.player.setMediaTime(now));
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'setMediaTime', e);
            Exit(Int64(-1));
            end;
        end;
end;
    

procedure TPlayerComposite.start;
begin
        try
            if Self.timeElapsedHelper.isTime(Self.gameTickTimeDelayHelper.startTime) then begin
                Self.player.start();
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.commonStrings.START_METHOD_NAME, e);
            end;
        end;
end;
    

procedure TPlayerComposite.stop;
begin
        try
            Self.player.stop();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'stop', e);
            end;
        end;
end;
    

function TPlayerComposite.getControl(controlType: string): IControl;
begin
        Exit(Self.player.getControl(controlType));
end;
    

function TPlayerComposite.getControls: TArray<IControl>;
begin
        raise SysUtils.Exception.Create('');
end;
    

procedure TPlayerComposite.setVolume(leftVolume: Integer; rightVolume: Integer);
var
  controllable2_: IControllable2;
begin
        controllable2_ := ((TJava.ToObject(Self.player) as IControllable2));
        controllable2_.setVolume(leftVolume, rightVolume);
end;
    

function TPlayerComposite.getPlayerP: IPlayer;
begin
        Exit(Self.player);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

