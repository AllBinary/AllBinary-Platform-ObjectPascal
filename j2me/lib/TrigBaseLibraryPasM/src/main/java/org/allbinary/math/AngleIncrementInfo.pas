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
// package org.allbinary.math
unit AngleIncrementInfo;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, FrameUtil;

type
  {AB:TYPES}
  TAngleIncrementInfo = class(TObject)
  public
    angleIncrement: SmallInt;
    DOWN_FRAME: Integer;
    UP_FRAME: Integer;
    LEFT_FRAME: Integer;
    RIGHT_FRAME: Integer;
    frameUtil: TFrameUtil;
    class var INCREMENT: string;
    procedure InitFields;
        constructor Create(angleIncrement: SmallInt);
        function getFrameAngle(frame: Integer): Integer; virtual;
        function getAngleIncrement: SmallInt; virtual;
        function toString: string; virtual;
        function getClosestGeneralDirection(angle: SmallInt): Integer; virtual;
  end;

implementation
uses
  AngleFactory, JsType, SmallIntegerSingletonFactory, StringMaker, JsProperty, JsMethod, JsConstructor;


{AB:CODE}

procedure TAngleIncrementInfo.InitFields;
begin
  
  
  
  
  
  Self.frameUtil := TFrameUtil.getInstance();
end;
    

constructor TAngleIncrementInfo.Create(angleIncrement: SmallInt);
var
  angleFactory_: TAngleFactory;
  smallIntegerSingletonFactory_: TSmallIntegerSingletonFactory;
begin
    inherited Create;
    InitFields;
        Self.angleIncrement := angleIncrement;
        angleFactory_ := TAngleFactory.getInstance();
        smallIntegerSingletonFactory_ := TSmallIntegerSingletonFactory.getInstance();
        Self.DOWN_FRAME := smallIntegerSingletonFactory_.getAt(Integer(Trunc(TJava.Divide(angleFactory_.DOWN.getValue(), Self.angleIncrement))));
        Self.UP_FRAME := smallIntegerSingletonFactory_.getAt(Integer(Trunc(angleFactory_.UP.getValue())));
        Self.LEFT_FRAME := smallIntegerSingletonFactory_.getAt(Integer(Trunc(TJava.Divide(angleFactory_.LEFT.getValue(), Self.angleIncrement))));
        Self.RIGHT_FRAME := smallIntegerSingletonFactory_.getAt(Integer(Trunc(TJava.Divide(angleFactory_.RIGHT.getValue(), Self.angleIncrement))));
end;
    

function TAngleIncrementInfo.getFrameAngle(frame: Integer): Integer;
begin
        Exit(Self.frameUtil.getFrameAngle(frame, Integer(Self.angleIncrement)));
end;
    

function TAngleIncrementInfo.getAngleIncrement: SmallInt;
begin
        Exit(Self.angleIncrement);
end;
    

function TAngleIncrementInfo.toString: string;
begin
        Exit(TStringMaker.Create().append(TAngleIncrementInfo.INCREMENT).appendshort(Self.angleIncrement).toString());
end;
    

function TAngleIncrementInfo.getClosestGeneralDirection(angle: SmallInt): Integer;
var
  closestDirection: Integer;
begin
        closestDirection := TSmallIntegerSingletonFactory.getInstance().getAt(360);
        if (((Self.UP_FRAME)) - (Integer(angle))) < (((closestDirection)) - (Integer(angle))) then begin
            closestDirection := Self.UP_FRAME;
        end;
        if (((Self.DOWN_FRAME)) - (Integer(angle))) < (((closestDirection)) - (Integer(angle))) then begin
            closestDirection := Self.DOWN_FRAME;
        end;
        if (((Self.LEFT_FRAME)) - (Integer(angle))) < (((closestDirection)) - (Integer(angle))) then begin
            closestDirection := Self.LEFT_FRAME;
        end;
        if (((Self.RIGHT_FRAME)) - (Integer(angle))) < (((closestDirection)) - (Integer(angle))) then begin
            closestDirection := Self.RIGHT_FRAME;
        end;
        Exit((closestDirection));
end;

initialization
  {AB:INITIALIZATION}
  TAngleIncrementInfo.INCREMENT := 'Inc: ';
  {AB:END}

end.

