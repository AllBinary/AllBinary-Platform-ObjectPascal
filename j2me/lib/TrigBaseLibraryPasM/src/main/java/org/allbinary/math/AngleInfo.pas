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
unit AngleInfo;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AngleIncrementInfo, FrameUtil;

type
  {AB:TYPES}
  TAngleInfo = class(TObject)
  public
    angleIncrementInfo: TAngleIncrementInfo;
    angle: SmallInt;
    frameUtil: TFrameUtil;
    class var ANGLE_: string;
    procedure InitFields;
        class function getInstance(angleIncrement: SmallInt): TAngleInfo; static;
        constructor Create(angleIncrementInfo_: TAngleIncrementInfo);
        procedure adjustAngle(frame: Integer); virtual;
        function getAngle: SmallInt; virtual;
        procedure setAngle(angle: SmallInt); virtual;
        function getAngleIncrementInfo: TAngleIncrementInfo; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  AngleIncrementInfoFactory, JsType, StringMaker, StringUtil, CommonSeps, JsMethod, JsConstructor;


{AB:CODE}

procedure TAngleInfo.InitFields;
begin
  
  Self.angle := 0;
  Self.frameUtil := TFrameUtil.getInstance();
end;
    

class function TAngleInfo.getInstance(angleIncrement: SmallInt): TAngleInfo;
begin
        Exit(TAngleInfo.Create(TAngleIncrementInfoFactory.getInstance().getAt(angleIncrement)));
end;
    

constructor TAngleInfo.Create(angleIncrementInfo_: TAngleIncrementInfo);
begin
    inherited Create;
    InitFields;
        Self.angleIncrementInfo := angleIncrementInfo_;
end;
    

procedure TAngleInfo.adjustAngle(frame: Integer);
var
  newAngle: Integer;
begin
        newAngle := ((Self.angleIncrementInfo.getAngleIncrement()) * (frame)) - (90);
        Self.setAngle(SmallInt(Trunc(Self.frameUtil.adjustAngleToFrameAngle(newAngle))));
end;
    

function TAngleInfo.getAngle: SmallInt;
begin
        Exit(Self.angle);
end;
    

procedure TAngleInfo.setAngle(angle: SmallInt);
begin
        Self.angle := angle;
end;
    

function TAngleInfo.getAngleIncrementInfo: TAngleIncrementInfo;
begin
        Exit(Self.angleIncrementInfo);
end;
    

function TAngleInfo.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(TAngleInfo.ANGLE_);
        stringBuffer.appendshort(Self.angle);
        stringBuffer.append(TCommonSeps.getInstance().SPACE);
        stringBuffer.append(TStringUtil.getInstance().toString(Self.getAngleIncrementInfo()));
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  TAngleInfo.ANGLE_ := 'Angle: ';
  {AB:END}

end.

