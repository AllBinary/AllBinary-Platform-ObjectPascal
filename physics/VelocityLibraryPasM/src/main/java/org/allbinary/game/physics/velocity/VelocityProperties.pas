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
// package org.allbinary.game.physics.velocity
unit VelocityProperties;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicVelocityProperties, VelocityInterface, BasicVelocityInterface;

type
  {AB:TYPES}
  TVelocityProperties = class(TBasicVelocityProperties, IVelocityInterface, IBasicVelocityInterface)
  public
    maxForwardVelocity: Integer;
    maxReverseVelocity: Integer;
    class var NULL_VELOCITY_PROPERTIES: TVelocityProperties;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(maxForwardVelocity: Integer; maxReverseVelocity: Integer);
        function getMaxForwardVelocity: Integer; virtual;
        procedure setMaxForwardVelocity(maxForwardVelocity: Integer); virtual;
        function getMaxReverseVelocity: Integer; virtual;
        procedure setMaxReverseVelocity(maxReverseVelocity: Integer); virtual;
        procedure limitMaxXYForwardVelocity; virtual;
        procedure limitMaxXYReverseVelocity; virtual;
        procedure limitMaxYForwardVelocity; virtual;
        procedure limitMaxYReverseVelocity; virtual;
        procedure limitMaxXForwardVelocity; virtual;
        procedure limitMaxXReverseVelocity; virtual;
        function isOverXYMaxForwardVelocity: Boolean; virtual;
        function isOverXYMaxReverseVelocity: Boolean; virtual;
        procedure limitXYToForwardAndReverseMaxVelocity; virtual;
        procedure limitMaxXYVelocity(maxVelocity: Integer); virtual;
        procedure limitMaxPositiveYVelocity(maxVelocity: Integer); virtual;
        procedure limitMaxNegativeYVelocity(maxVelocity: Integer); virtual;
        procedure limitMaxYVelocity(maxVelocity: Integer); virtual;
        procedure limitMaxXVelocity(maxVelocity: Integer); virtual;
        function isOverXYMaxVelocity(maxVelocity: Integer): Boolean; virtual;
        procedure setVelocityi(magnitude: Int64; angle: Integer; otherAngle: Integer); virtual;
        procedure addVelocityi(magnitude: Int64; angle: Integer; otherAngle: Integer); virtual;
  end;

implementation

{AB:CODE}

procedure TVelocityProperties.InitFields;
begin
  
  
end;

function TVelocityProperties.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TVelocityProperties.Create(maxForwardVelocity: Integer; maxReverseVelocity: Integer);
begin
    inherited Create;
    InitFields;
        Self.setMaxForwardVelocity(maxForwardVelocity);
        Self.setMaxReverseVelocity(maxReverseVelocity);
end;
    

function TVelocityProperties.getMaxForwardVelocity: Integer;
begin
        Exit(Self.maxForwardVelocity);
end;
    

procedure TVelocityProperties.setMaxForwardVelocity(maxForwardVelocity: Integer);
begin
        Self.maxForwardVelocity := maxForwardVelocity;
end;
    

function TVelocityProperties.getMaxReverseVelocity: Integer;
begin
        Exit(Self.maxReverseVelocity);
end;
    

procedure TVelocityProperties.setMaxReverseVelocity(maxReverseVelocity: Integer);
begin
        Self.maxReverseVelocity := maxReverseVelocity;
end;
    

procedure TVelocityProperties.limitMaxXYForwardVelocity;
begin
        Self.limitMaxXYVelocity(Self.getMaxForwardVelocity());
end;
    

procedure TVelocityProperties.limitMaxXYReverseVelocity;
begin
        Self.limitMaxXYVelocity(Self.getMaxReverseVelocity());
end;
    

procedure TVelocityProperties.limitMaxYForwardVelocity;
begin
        Self.limitMaxYVelocity(Self.getMaxForwardVelocity());
end;
    

procedure TVelocityProperties.limitMaxYReverseVelocity;
begin
        Self.limitMaxYVelocity(Self.getMaxReverseVelocity());
end;
    

procedure TVelocityProperties.limitMaxXForwardVelocity;
begin
        Self.limitMaxXVelocity(Self.getMaxForwardVelocity());
end;
    

procedure TVelocityProperties.limitMaxXReverseVelocity;
begin
        Self.limitMaxXVelocity(Self.getMaxReverseVelocity());
end;
    

function TVelocityProperties.isOverXYMaxForwardVelocity: Boolean;
begin
        Exit(Self.isOverXYMaxVelocity(Self.getMaxForwardVelocity()));
end;
    

function TVelocityProperties.isOverXYMaxReverseVelocity: Boolean;
begin
        Exit(Self.isOverXYMaxVelocity(Self.getMaxReverseVelocity()));
end;
    

procedure TVelocityProperties.limitXYToForwardAndReverseMaxVelocity;
begin
        Self.limitMaxXYForwardVelocity();
        Self.limitMaxXYReverseVelocity();
end;
    

procedure TVelocityProperties.limitMaxXYVelocity(maxVelocity: Integer);
begin
        Self.limitMaxXVelocity(maxVelocity);
        Self.limitMaxYVelocity(maxVelocity);
end;
    

procedure TVelocityProperties.limitMaxPositiveYVelocity(maxVelocity: Integer);
begin
        if (Self.velocityYBasicDecimal.getUnscaled()) > (maxVelocity) then begin
            Self.velocityYBasicDecimal.setint(maxVelocity);
        end;
end;
    

procedure TVelocityProperties.limitMaxNegativeYVelocity(maxVelocity: Integer);
begin
        if (Self.velocityYBasicDecimal.getUnscaled()) < (-maxVelocity) then begin
            Self.velocityYBasicDecimal.setint(-maxVelocity);
        end;
end;
    

procedure TVelocityProperties.limitMaxYVelocity(maxVelocity: Integer);
begin
        Self.limitMaxPositiveYVelocity(maxVelocity);
        Self.limitMaxNegativeYVelocity(maxVelocity);
end;
    

procedure TVelocityProperties.limitMaxXVelocity(maxVelocity: Integer);
begin
        if (Self.velocityXBasicDecimal.getUnscaled()) > (maxVelocity) then begin
            Self.velocityXBasicDecimal.setint(maxVelocity);
        end;
        if (Self.velocityXBasicDecimal.getUnscaled()) < (-maxVelocity) then begin
            Self.velocityXBasicDecimal.setint(-maxVelocity);
        end;
end;
    

function TVelocityProperties.isOverXYMaxVelocity(maxVelocity: Integer): Boolean;
begin
        if (Self.velocityXBasicDecimal.getUnscaled()) > (maxVelocity) then begin
            Exit(True);
        end;
        if (Self.velocityXBasicDecimal.getUnscaled()) < (-maxVelocity) then begin
            Exit(True);
        end;
        if (Self.velocityYBasicDecimal.getUnscaled()) > (maxVelocity) then begin
            Exit(True);
        end;
        if (Self.velocityYBasicDecimal.getUnscaled()) < (-maxVelocity) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

procedure TVelocityProperties.setVelocityi(magnitude: Int64; angle: Integer; otherAngle: Integer);
begin
        inherited setVelocityi(magnitude, angle, otherAngle);
        Self.limitXYToForwardAndReverseMaxVelocity();
end;
    

procedure TVelocityProperties.addVelocityi(magnitude: Int64; angle: Integer; otherAngle: Integer);
begin
        inherited addVelocityi(magnitude, angle, otherAngle);
        Self.limitXYToForwardAndReverseMaxVelocity();
end;

initialization
  {AB:INITIALIZATION}
  TVelocityProperties.NULL_VELOCITY_PROPERTIES := TVelocityProperties.Create(0, 0);
  {AB:END}

end.

