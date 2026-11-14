// Generated Code Do Not Modify
// package org.allbinary.game.input.analog
unit AnalogLocationInput;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CustomGPoint;

type
  {AB:TYPES}
  TAnalogLocationInput = class(TObject)
  public
    playerId: Integer;
    customGPoint: TCustomGPoint;
    rz: Integer;
    rightTrigger: Integer;
    leftTrigger: Integer;
    class var NULL_ANALOG_LOCATION_INPUT: TAnalogLocationInput;
    procedure InitFields;
        constructor Create(playerId: Integer);
        function getPlayerId: Integer; virtual;
        function getCustomGPoint: TCustomGPoint; virtual;
        function getRz: Integer; virtual;
        procedure setRz(rz: Integer); virtual;
        function getRightTrigger: Integer; virtual;
        procedure setRightTrigger(rightTrigger: Integer); virtual;
        function getLeftTrigger: Integer; virtual;
        procedure setLeftTrigger(leftTrigger: Integer); virtual;
  end;

implementation

{AB:CODE}

procedure TAnalogLocationInput.InitFields;
begin
  
  
  
  
  
end;
    

constructor TAnalogLocationInput.Create(playerId: Integer);
begin
    inherited Create;
    InitFields;
        Self.playerId := playerId;
        Self.customGPoint := TCustomGPoint.Create(0, 0, 0);
end;
    

function TAnalogLocationInput.getPlayerId: Integer;
begin
        Exit(Self.playerId);
end;
    

function TAnalogLocationInput.getCustomGPoint: TCustomGPoint;
begin
        Exit(Self.customGPoint);
end;
    

function TAnalogLocationInput.getRz: Integer;
begin
        Exit(Self.rz);
end;
    

procedure TAnalogLocationInput.setRz(rz: Integer);
begin
        Self.rz := rz;
end;
    

function TAnalogLocationInput.getRightTrigger: Integer;
begin
        Exit(Self.rightTrigger);
end;
    

procedure TAnalogLocationInput.setRightTrigger(rightTrigger: Integer);
begin
        Self.rightTrigger := rightTrigger;
end;
    

function TAnalogLocationInput.getLeftTrigger: Integer;
begin
        Exit(Self.leftTrigger);
end;
    

procedure TAnalogLocationInput.setLeftTrigger(leftTrigger: Integer);
begin
        Self.leftTrigger := leftTrigger;
end;

initialization
  {AB:INITIALIZATION}
  TAnalogLocationInput.NULL_ANALOG_LOCATION_INPUT := TAnalogLocationInput.Create(-1);
  {AB:END}

end.

