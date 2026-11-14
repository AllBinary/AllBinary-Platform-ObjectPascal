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
unit BasicColorUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicColor;

type
  {AB:TYPES}
  TBasicColorUtil = class(TObject)
  public
    ZERO_ARRAY: TArray<TBasicColor>;
    ALPHA: Integer;
    isAlpha: Boolean;
    ffOpaque: Boolean;
    class var instance: TBasicColorUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TBasicColorUtil; static;
        function getRGB(red: Integer; green: Integer; blue: Integer): Integer; virtual;
        function getARGB(alphaValue: Integer; r: Integer; g: Integer; b: Integer): Integer; virtual;
        function get(alphaValue: Integer; color: Integer): Integer; virtual;
        function invert(color: Integer): Integer; virtual;
  end;

implementation

{AB:CODE}

procedure TBasicColorUtil.InitFields;
begin
  Self.ZERO_ARRAY := nil;
  Self.ALPHA := $FF000000;
  Self.isAlpha := True;
  Self.ffOpaque := True;
end;

constructor TBasicColorUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TBasicColorUtil.getInstance: TBasicColorUtil;
begin
        Exit(TBasicColorUtil.instance);
end;
    

function TBasicColorUtil.getRGB(red: Integer; green: Integer; blue: Integer): Integer;
var
  value: Integer;
begin
        value := 0;
        if Self.isAlpha then begin
            if Self.ffOpaque then begin
                value := Self.ALPHA;
            end;
        end;
        value := (((red) shl (16))) or (value);
        value := (((green) shl (8))) or (value);
        value := (blue) or (value);
        Exit(value);
end;
    

function TBasicColorUtil.getARGB(alphaValue: Integer; r: Integer; g: Integer; b: Integer): Integer;
begin
        Exit((((((((alphaValue) shl (24))) and (Self.ALPHA))) + (((((r) shl (16))) and ($00FF0000)))) + (((((g) shl (8))) and ($0000FF00)))) + (((b) and ($000000FF))));
end;
    

function TBasicColorUtil.get(alphaValue: Integer; color: Integer): Integer;
begin
        Exit((((((alphaValue) shl (24))) and (Self.ALPHA))) + (color));
end;
    

function TBasicColorUtil.invert(color: Integer): Integer;
begin
        Exit(((($FFFFFF) - (color))) or (Self.ALPHA));
end;

initialization
  {AB:INITIALIZATION}
  TBasicColorUtil.instance := TBasicColorUtil.Create();
  {AB:END}

end.

