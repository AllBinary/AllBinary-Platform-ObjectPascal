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
// package org.allbinary.game.ag.layer.hud.basic.time
unit HudTimer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PrimitiveLongUtil, GameTickTimeDelayHelper;

type
  {AB:TYPES}
  THudTimer = class(TObject)
  public
    startTime: Int64;
    hundredthTime: Int64;
    maxTime: Int64;
    modifier: Int64;
    hundrethsString: TArray<WideChar>;
    totalDigits: Integer;
    primitiveLongUtil: TPrimitiveLongUtil;
    MAX: TArray<WideChar>;
    gameTickTimeDelayHelper: TGameTickTimeDelayHelper;
    procedure InitFields;
        constructor Create(maxTime: Integer);
        procedure start; virtual;
        function get: Int64; virtual;
        procedure update; virtual;
        procedure reduce(value: Integer); virtual;
        procedure add(value: Integer); virtual;
        function getTimeChars: TArray<WideChar>; virtual;
        function getCurrentTotalDigits: Integer; virtual;
  end;

implementation
uses
  PrimitiveLongSingleton, GameTickTimeDelayHelperFactory;


{AB:CODE}

procedure THudTimer.InitFields;
begin
  Self.startTime := Int64(-1);
  
  
  
  Self.hundrethsString := TPrimitiveLongSingleton.getInstance().ZERO;
  Self.totalDigits := 1;
  
  Self.MAX := TArray<WideChar>.Create('L', 'O', 'L');
  Self.gameTickTimeDelayHelper := TGameTickTimeDelayHelperFactory.getInstance();
end;
    

constructor THudTimer.Create(maxTime: Integer);
begin
    inherited Create;
    InitFields;
        Self.primitiveLongUtil := TPrimitiveLongUtil.createPowerOfTen(maxTime);
        Self.maxTime := Int64(maxTime);
end;
    

procedure THudTimer.start;
begin
        Self.hundredthTime := 0;
        Self.startTime := Self.gameTickTimeDelayHelper.startTime;
end;
    

function THudTimer.get: Int64;
begin
        Exit(Self.hundredthTime);
end;
    

procedure THudTimer.update;
var
  lastLowerTime: Int64;
  currentTime: Int64;
begin
        lastLowerTime := Self.hundredthTime;
        currentTime := ((((Self.modifier) + (Self.gameTickTimeDelayHelper.startTime))) - (Self.startTime));
        if (currentTime) < (0) then begin
            currentTime := 0;
        end;
        Self.hundredthTime := (currentTime) div (100);
        if (Self.hundredthTime) >= (Self.maxTime) then begin
            if (Self.startTime) > (0) then begin
                Self.hundrethsString := Self.MAX;
            end;
        end else if (lastLowerTime) <> (Self.hundredthTime) then begin
            Self.hundrethsString := Self.primitiveLongUtil.getCharArray(Integer(Self.hundredthTime));
            Self.totalDigits := Self.primitiveLongUtil.getCurrentTotalDigits();
        end;
end;
    

procedure THudTimer.reduce(value: Integer);
begin
        Self.modifier := (Self.modifier) - (Int64(value));
end;
    

procedure THudTimer.add(value: Integer);
begin
        Self.modifier := (Self.modifier) + (Int64(value));
end;
    

function THudTimer.getTimeChars: TArray<WideChar>;
begin
        Exit(Self.hundrethsString);
end;
    

function THudTimer.getCurrentTotalDigits: Integer;
begin
        Exit(Self.totalDigits);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

