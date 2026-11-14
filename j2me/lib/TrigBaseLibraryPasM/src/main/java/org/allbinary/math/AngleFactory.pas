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
unit AngleFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, NamedAngle, FrameUtil, Angle;

type
  {AB:TYPES}
  TAngleFactory = class(TObject)
  public
    logUtil: TLogUtil;
    TOTAL_ANGLE: SmallInt;
    QUARTER_TOTAL_ANGLE: SmallInt;
    angleArray: TArray<TAngle>;
    NEGATIVE_ONE: SmallInt;
    NOT_ANGLE: TNamedAngle;
    DOWN: TNamedAngle;
    UP: TNamedAngle;
    LEFT: TNamedAngle;
    RIGHT: TNamedAngle;
    frameUtil: TFrameUtil;
    class var instance: TAngleFactory;
    procedure InitFields;
        class function getInstance: TAngleFactory; static;
        constructor Create;
        function getAt(index: Integer): TAngle; virtual;
        function getClosestDirection(angle_: Integer): TAngle; virtual;
        function getGeneralDirection: TAngle; virtual;
        class procedure main(args: TArray<string>); static;
  end;

implementation
uses
  JsType, StringMaker, CommonPhoneStrings, CommonSeps, CommonStrings, JsMethod, JsConstructor, JsProperty;


{AB:CODE}

procedure TAngleFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.TOTAL_ANGLE := 360;
  Self.QUARTER_TOTAL_ANGLE := 90;
  Self.angleArray := TJava.NewArray<TAngle>(Integer(Self.TOTAL_ANGLE));
  Self.NEGATIVE_ONE := SmallInt(-1);
  Self.NOT_ANGLE := TNamedAngle.Create(Self.NEGATIVE_ONE, TCommonStrings.getInstance().EMPTY);
  
  
  
  
  Self.frameUtil := TFrameUtil.getInstance();
end;
    

class function TAngleFactory.getInstance: TAngleFactory;
begin
        Exit(TAngleFactory.instance);
end;
    

constructor TAngleFactory.Create;
var
  commonPhoneStrings_: TCommonPhoneStrings;
  total: SmallInt;
  index: Integer;
begin
    inherited Create;
    InitFields;
        commonPhoneStrings_ := TCommonPhoneStrings.getInstance();
        total := SmallInt(System.Length(Self.angleArray));
        Self.UP := TNamedAngle.Create(SmallInt(0), commonPhoneStrings_.UP);
        Self.angleArray[0] := Self.UP;
        for index := 1 to 90 - 1 do begin
            Self.angleArray[index] := TAngle.Create(SmallInt(index));
        end;
        Self.RIGHT := TNamedAngle.Create(SmallInt(90), commonPhoneStrings_.RIGHT);
        Self.angleArray[90] := Self.RIGHT;
        for index := 91 to 180 - 1 do begin
            Self.angleArray[index] := TAngle.Create(SmallInt(index));
        end;
        Self.DOWN := TNamedAngle.Create(SmallInt(180), commonPhoneStrings_.DOWN);
        Self.angleArray[180] := Self.DOWN;
        for index := 181 to 270 - 1 do begin
            Self.angleArray[index] := TAngle.Create(SmallInt(index));
        end;
        Self.LEFT := TNamedAngle.Create(SmallInt(270), commonPhoneStrings_.LEFT);
        Self.angleArray[270] := Self.LEFT;
        for index := 271 to total - 1 do begin
            Self.angleArray[index] := TAngle.Create(SmallInt(index));
        end;
end;
    

function TAngleFactory.getAt(index: Integer): TAngle;
var
  adjustedIndex: Integer;
begin
        adjustedIndex := Integer(Trunc(Self.frameUtil.adjustAngleToFrameAngle(index)));
        Exit(Self.angleArray[adjustedIndex]);
end;
    

function TAngleFactory.getClosestDirection(angle_: Integer): TAngle;
begin
        if ((((angle_) >= (315)) and ((angle_) < (360)))) or ((((angle_) >= (0)) and ((angle_) < (45)))) then begin
            Exit(Self.UP);
        end else if ((angle_) >= (45)) and ((angle_) < (135)) then begin
            Exit(Self.RIGHT);
        end else if ((angle_) >= (135)) and ((angle_) < (225)) then begin
            Exit(Self.DOWN);
        end else if ((angle_) >= (225)) and ((angle_) < (315)) then begin
            Exit(Self.LEFT);
        end;
        raise SysUtils.Exception.Create('');
end;
    

function TAngleFactory.getGeneralDirection: TAngle;
begin
        Exit(Self.NOT_ANGLE);
end;
    

class procedure TAngleFactory.main(args: TArray<string>);
var
  stringMaker_: TStringMaker;
  angleFactory_: TAngleFactory;
  index: Integer;
begin
        stringMaker_ := TStringMaker.Create();
        angleFactory_ := TAngleFactory.getInstance();
        for index := 0 to 360 - 1 do begin
            stringMaker_.appendint(index).append(TCommonSeps.getInstance().FORWARD_SLASH).appendshort(SmallInt(Trunc(angleFactory_.getClosestDirection(index).getValue()))).append(TCommonSeps.getInstance().NEW_LINE);
        end;
        TLogUtil.getInstance().putFS(stringMaker_.toString(), 'main', 'main');
end;

initialization
  {AB:INITIALIZATION}
  TAngleFactory.instance := TAngleFactory.Create();
  {AB:END}

end.

