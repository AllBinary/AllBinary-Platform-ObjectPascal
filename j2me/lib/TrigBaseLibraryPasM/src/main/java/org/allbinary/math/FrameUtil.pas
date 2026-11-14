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
unit FrameUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TFrameUtil = class(TObject)
  public
    class var instance: TFrameUtil;
        class function getInstance: TFrameUtil; static;
        constructor Create;
        function getFrameForAngle(angle: SmallInt; angleIncrement: Integer): Integer; virtual;
        function getFrameAngle(frame: Integer; angleIncrement: Integer): Integer; virtual;
        function adjustAngleToFrameAngle(currentAngle: Integer): Integer; virtual;
  end;

implementation
uses
  AngleFactory, JsType, JsMethod, JsConstructor;


{AB:CODE}
    

class function TFrameUtil.getInstance: TFrameUtil;
begin
        Exit(TFrameUtil.instance);
end;
    

constructor TFrameUtil.Create;
begin
    inherited Create;
end;
    

function TFrameUtil.getFrameForAngle(angle: SmallInt; angleIncrement: Integer): Integer;
begin
        Exit((Self.adjustAngleToFrameAngle(Integer(angle))) div (angleIncrement));
end;
    

function TFrameUtil.getFrameAngle(frame: Integer; angleIncrement: Integer): Integer;
var
  frameAngle: Integer;
begin
        frameAngle := ((angleIncrement) * (frame)) - (90);
        Exit(Self.adjustAngleToFrameAngle(frameAngle));
end;
    

function TFrameUtil.adjustAngleToFrameAngle(currentAngle: Integer): Integer;
var
  angleFactory_: TAngleFactory;
begin
        angleFactory_ := TAngleFactory.getInstance();
        if (currentAngle) > (359) then begin
            currentAngle := ((currentAngle) - (angleFactory_.TOTAL_ANGLE));
            while (currentAngle) > (359) do begin
                currentAngle := ((currentAngle) - (angleFactory_.TOTAL_ANGLE));
            end;
        end;
        if (currentAngle) < (0) then begin
            currentAngle := ((currentAngle) + (angleFactory_.TOTAL_ANGLE));
            while (currentAngle) < (0) do begin
                currentAngle := ((currentAngle) + (angleFactory_.TOTAL_ANGLE));
            end;
        end;
        Exit(currentAngle);
end;

initialization
  {AB:INITIALIZATION}
  TFrameUtil.instance := TFrameUtil.Create();
  {AB:END}

end.

