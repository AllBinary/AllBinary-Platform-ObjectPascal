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
// package org.allbinary.graphics.color
unit BasicColor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TBasicColor = class(TObject)
  public
    name: string;
    value: Integer;
    redComponent: Single;
    greenComponent: Single;
    blueComponent: Single;
    alphaComponent: Single;
    red: SmallInt;
    green: SmallInt;
    blue: SmallInt;
    alpha: SmallInt;
    procedure InitFields;
        constructor Create(alphaValue: Integer; value: Integer; name: string);
        function intValue: Integer; virtual;
        function toInt: Integer; virtual;
        function toString: string; virtual;
        function getName: string; virtual;
        function getRedComponent: Single; virtual;
        function getGreenComponent: Single; virtual;
        function getBlueComponent: Single; virtual;
        function getAlphaComponent: Single; virtual;
  end;

implementation
uses
  BasicColorUtil, JsType, StringMaker, JsMethod, JsConstructor, JsProperty;


{AB:CODE}

procedure TBasicColor.InitFields;
begin
  
  
  
  
  
  
  
  
  
  
end;
    

constructor TBasicColor.Create(alphaValue: Integer; value: Integer; name: string);
var
  tempValue: Integer;
  basicColorUtil_: TBasicColorUtil;
  alphaInt: Integer;
  redInt: Integer;
  greenInt: Integer;
  blueInt: Integer;
begin
    inherited Create;
    InitFields;
        Self.name := name;
        
        basicColorUtil_ := TBasicColorUtil.getInstance();
        if basicColorUtil_.isAlpha then begin
            if basicColorUtil_.ffOpaque then begin
                tempValue := (alphaValue) or (value);
            end else begin
                tempValue := ($00000000) or (value);
            end;
        end else begin
            tempValue := value;
        end;
        alphaInt := (((TJava.SignedRightShift(tempValue, 24))) and (255));
        Self.alpha := SmallInt(alphaInt);
        Self.alphaComponent := ((alphaInt)) / (255.0);
        redInt := (((TJava.SignedRightShift(tempValue, 16))) and (255));
        Self.red := SmallInt(redInt);
        Self.redComponent := ((redInt)) / (255.0);
        greenInt := (((TJava.SignedRightShift(tempValue, 8))) and (255));
        Self.green := SmallInt(greenInt);
        Self.greenComponent := ((greenInt)) / (255.0);
        blueInt := (((tempValue)) and (255));
        Self.blue := SmallInt(blueInt);
        Self.blueComponent := ((blueInt)) / (255.0);
        Self.value := tempValue;
end;
    

function TBasicColor.intValue: Integer;
begin
        Exit(Self.value);
end;
    

function TBasicColor.toInt: Integer;
begin
        Exit(Self.value);
end;
    

function TBasicColor.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('BasicColor: ');
        stringBuffer.append('Alpha: ');
        stringBuffer.appendshort(Self.alpha);
        stringBuffer.append(' Red: ');
        stringBuffer.appendshort(Self.red);
        stringBuffer.append(' Green: ');
        stringBuffer.appendshort(Self.green);
        stringBuffer.append(' Blue: ');
        stringBuffer.appendshort(Self.blue);
        stringBuffer.append(' Value: ');
        stringBuffer.appendint(Self.value);
        Exit(stringBuffer.toString());
end;
    

function TBasicColor.getName: string;
begin
        Exit(Self.name);
end;
    

function TBasicColor.getRedComponent: Single;
begin
        Exit(Self.redComponent);
end;
    

function TBasicColor.getGreenComponent: Single;
begin
        Exit(Self.greenComponent);
end;
    

function TBasicColor.getBlueComponent: Single;
begin
        Exit(Self.blueComponent);
end;
    

function TBasicColor.getAlphaComponent: Single;
begin
        Exit(Self.alphaComponent);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

