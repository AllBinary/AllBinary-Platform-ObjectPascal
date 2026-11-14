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
// package org.allbinary.direction
unit DirectionUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Angle, Direction;

type
  {AB:TYPES}
  TDirectionUtil = class(TObject)
  public
    directionArray: TArray<TAngle>;
    directionArray2: TArray<TAngle>;
    class var instance: TDirectionUtil;
    procedure InitFields;
        class function getInstance: TDirectionUtil; static;
        constructor Create;
        function getAngle(direction_: TDirection): TAngle; virtual;
        function getFrameAngle(direction_: TDirection): TAngle; virtual;
  end;

implementation
uses
  DirectionFactory, AngleFactory;


{AB:CODE}

procedure TDirectionUtil.InitFields;
begin
  Self.directionArray := TJava.NewArray<TAngle>(10);
  Self.directionArray2 := TJava.NewArray<TAngle>(10);
end;
    

class function TDirectionUtil.getInstance: TDirectionUtil;
begin
        Exit(TDirectionUtil.instance);
end;
    

constructor TDirectionUtil.Create;
var
  angleFactory_: TAngleFactory;
  directionFactory_: TDirectionFactory;
begin
    inherited Create;
    InitFields;
        angleFactory_ := TAngleFactory.getInstance();
        directionFactory_ := TDirectionFactory.getInstance();
        Self.directionArray[directionFactory_.LEFT.getValue()] := angleFactory_.LEFT;
        Self.directionArray[directionFactory_.RIGHT.getValue()] := angleFactory_.RIGHT;
        Self.directionArray[directionFactory_.UP.getValue()] := angleFactory_.UP;
        Self.directionArray[directionFactory_.DOWN.getValue()] := angleFactory_.DOWN;
        Self.directionArray2[directionFactory_.LEFT.getValue()] := angleFactory_.LEFT;
        Self.directionArray2[directionFactory_.RIGHT.getValue()] := angleFactory_.RIGHT;
        Self.directionArray2[directionFactory_.UP.getValue()] := angleFactory_.UP;
        Self.directionArray2[directionFactory_.DOWN.getValue()] := angleFactory_.DOWN;
end;
    

function TDirectionUtil.getAngle(direction_: TDirection): TAngle;
begin
        Exit(Self.directionArray2[direction_.getValue()]);
end;
    

function TDirectionUtil.getFrameAngle(direction_: TDirection): TAngle;
begin
        Exit(Self.directionArray[direction_.getValue()]);
end;

initialization
  {AB:INITIALIZATION}
  TDirectionUtil.instance := TDirectionUtil.Create();
  {AB:END}

end.

