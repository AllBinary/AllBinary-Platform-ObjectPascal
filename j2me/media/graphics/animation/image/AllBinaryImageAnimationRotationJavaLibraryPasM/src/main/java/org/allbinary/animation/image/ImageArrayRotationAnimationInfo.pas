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
// package org.allbinary.animation.image
unit ImageArrayRotationAnimationInfo;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, AngleInfo;

type
  {AB:TYPES}
  TImageArrayRotationAnimationInfo = class(TObject)
  public
    imageArray: TArray<TImage>;
    angleIncrement: Integer;
    totalAngle: Integer;
    dx: Integer;
    dy: Integer;
    procedure InitFields;
        constructor Create(imageArray: TArray<TImage>; angleIncrement: Integer; totalAngle: Integer; dx: Integer; dy: Integer);
        procedure setImageArray(imageArray: TArray<TImage>); virtual;
        function getImageArray: TArray<TImage>; virtual;
        function getAngleInfoP: TAngleInfo; virtual;
        procedure setTotalAngle(totalAngle: Integer); virtual;
        function getTotalAngle: Integer; virtual;
        procedure setDx(dx: Integer); virtual;
        function getDx: Integer; virtual;
        procedure setDy(dy: Integer); virtual;
        function getDy: Integer; virtual;
  end;

implementation

{AB:CODE}

procedure TImageArrayRotationAnimationInfo.InitFields;
begin
  
  
  
  
  
end;
    

constructor TImageArrayRotationAnimationInfo.Create(imageArray: TArray<TImage>; angleIncrement: Integer; totalAngle: Integer; dx: Integer; dy: Integer);
begin
    inherited Create;
    InitFields;
        Self.imageArray := imageArray;
        Self.angleIncrement := angleIncrement;
        Self.totalAngle := totalAngle;
        Self.dx := dx;
        Self.dy := dy;
end;
    

procedure TImageArrayRotationAnimationInfo.setImageArray(imageArray: TArray<TImage>);
begin
        Self.imageArray := imageArray;
end;
    

function TImageArrayRotationAnimationInfo.getImageArray: TArray<TImage>;
begin
        Exit(Self.imageArray);
end;
    

function TImageArrayRotationAnimationInfo.getAngleInfoP: TAngleInfo;
begin
        Exit(TAngleInfo.getInstance(SmallInt(Self.angleIncrement)));
end;
    

procedure TImageArrayRotationAnimationInfo.setTotalAngle(totalAngle: Integer);
begin
        Self.totalAngle := totalAngle;
end;
    

function TImageArrayRotationAnimationInfo.getTotalAngle: Integer;
begin
        Exit(Self.totalAngle);
end;
    

procedure TImageArrayRotationAnimationInfo.setDx(dx: Integer);
begin
        Self.dx := dx;
end;
    

function TImageArrayRotationAnimationInfo.getDx: Integer;
begin
        Exit(Self.dx);
end;
    

procedure TImageArrayRotationAnimationInfo.setDy(dy: Integer);
begin
        Self.dy := dy;
end;
    

function TImageArrayRotationAnimationInfo.getDy: Integer;
begin
        Exit(Self.dy);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

