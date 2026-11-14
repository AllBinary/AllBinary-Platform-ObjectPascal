// Generated Code Do Not Modify
// package org.allbinary.graphics.displayable
unit ScreenRelationalUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image;

type
  {AB:TYPES}
  TScreenRelationalUtil = class(TObject)
  public
    class var instance: TScreenRelationalUtil;
    constructor Create;
        class function getInstance: TScreenRelationalUtil; static;
        function getScaleImage(image_: TImage): Single; virtual;
        function getScaleWH(aWidth: Integer; aHeight: Integer): Single; virtual;
        function getScaleWHA(aWidth: Integer; aHeight: Integer; add: Integer): Single; virtual;
        function getScaledHeight(aWidth: Integer; aHeight: Integer): Integer; virtual;
        function getScaledHeightAdd(aWidth: Integer; aHeight: Integer; add: Integer): Integer; virtual;
  end;

implementation
uses
  DisplayInfoSingleton;


{AB:CODE}

constructor TScreenRelationalUtil.Create;
begin
  inherited Create;
end;
    

class function TScreenRelationalUtil.getInstance: TScreenRelationalUtil;
begin
        Exit(TScreenRelationalUtil.instance);
end;
    

function TScreenRelationalUtil.getScaleImage(image_: TImage): Single;
begin
        Exit(Self.getScaleWH(image_.getWidth(), image_.getHeight()));
end;
    

function TScreenRelationalUtil.getScaleWH(aWidth: Integer; aHeight: Integer): Single;
begin
        Exit(Self.getScaleWHA(aWidth, aHeight, 20));
end;
    

function TScreenRelationalUtil.getScaleWHA(aWidth: Integer; aHeight: Integer; add: Integer): Single;
var
  displayInfoSingleton_: TDisplayInfoSingleton;
  last: TArray<Integer>;
  width: Single;
  height: Single;
  largestSize: Single;
  scale: Single;
begin
        displayInfoSingleton_ := TDisplayInfoSingleton.getInstance();
        last := displayInfoSingleton_.getLast();
        width := last[displayInfoSingleton_.WIDTH];
        height := last[displayInfoSingleton_.HEIGHT];
        largestSize := width;
        if (largestSize) < (height) then begin
            largestSize := height;
        end;
        scale := ((largestSize)) / (aWidth);
        Exit(scale);
end;
    

function TScreenRelationalUtil.getScaledHeight(aWidth: Integer; aHeight: Integer): Integer;
begin
        Exit(Integer(Trunc(((Self.getScaleWH(aWidth, aHeight)) * (aHeight)))));
end;
    

function TScreenRelationalUtil.getScaledHeightAdd(aWidth: Integer; aHeight: Integer; add: Integer): Integer;
begin
        Exit(Integer(Trunc(((Self.getScaleWHA(aWidth, aHeight, add)) * (aHeight)))));
end;

initialization
  {AB:INITIALIZATION}
  TScreenRelationalUtil.instance := TScreenRelationalUtil.Create();
  {AB:END}

end.

