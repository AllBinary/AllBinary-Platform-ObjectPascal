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
unit BasicColorFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicColor;

type
  {AB:TYPES}
  TBasicColorFactory = class(TObject)
  public
    NULL_COLOR: TBasicColor;
    TAN: TBasicColor;
    SKIN_PINK: TBasicColor;
    RED: TBasicColor;
    LIGHT_RED: TBasicColor;
    DARK_GREEN: TBasicColor;
    GREEN: TBasicColor;
    LIGHT_GREEN: TBasicColor;
    PURPLE: TBasicColor;
    BLUE: TBasicColor;
    LIGHT_BLUE: TBasicColor;
    VERY_LIGHT_BLUE: TBasicColor;
    PUCE: TBasicColor;
    AQUA: TBasicColor;
    YELLOW: TBasicColor;
    PINK: TBasicColor;
    BLACK: TBasicColor;
    GREY: TBasicColor;
    LIGHT_GREY: TBasicColor;
    DARK_GREY: TBasicColor;
    ORANGE: TBasicColor;
    BROWN: TBasicColor;
    WHITE: TBasicColor;
    TRANSPARENT_COLOR: TBasicColor;
    TRANSPARENT_GREY: TBasicColor;
    TRANSPARENT_BLACK: TBasicColor;
    TRANSPARENT_RED: TBasicColor;
    CLEAR_COLOR: TBasicColor;
    BORDER_COLOR: TBasicColor;
    class var instance: TBasicColorFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TBasicColorFactory; static;
        function createInstance(value: Integer): TBasicColor; virtual;
        function createInstanceA(alphaValue: Integer; value: Integer): TBasicColor; virtual;
        function createInstanceAN(alphaValue: Integer; value: Integer; name: string): TBasicColor; virtual;
        function createInstanceARGB(alphaValue: Integer; r: Integer; g: Integer; b: Integer; name: string): TBasicColor; virtual;
  end;

implementation
uses
  BasicColorUtil, JsType, StringUtil, JsMethod, JsProperty;


{AB:CODE}

procedure TBasicColorFactory.InitFields;
begin
  Self.NULL_COLOR := Self.createInstanceARGB(255, 255, 255, 255, 'null color');
  Self.TAN := Self.createInstance($E9D8B5);
  Self.SKIN_PINK := Self.createInstance($FDCECE);
  Self.RED := Self.createInstanceAN(TBasicColorUtil.getInstance().ALPHA, $FF0000, 'red');
  Self.LIGHT_RED := Self.createInstanceAN(TBasicColorUtil.getInstance().ALPHA, $FFA0A0, 'light red');
  Self.DARK_GREEN := Self.createInstance($00FF00);
  Self.GREEN := Self.createInstanceAN(TBasicColorUtil.getInstance().ALPHA, $00DD00, 'green');
  Self.LIGHT_GREEN := Self.createInstance($007700);
  Self.PURPLE := Self.createInstanceAN(TBasicColorUtil.getInstance().ALPHA, $400040, 'purple');
  Self.BLUE := Self.createInstanceAN(TBasicColorUtil.getInstance().ALPHA, $0000FF, 'blue');
  Self.LIGHT_BLUE := Self.createInstance($00aaff);
  Self.VERY_LIGHT_BLUE := Self.createInstance($000033);
  Self.PUCE := Self.createInstance($FF00AA);
  Self.AQUA := Self.createInstance($00FFFF);
  Self.YELLOW := Self.createInstanceAN(TBasicColorUtil.getInstance().ALPHA, $FFFF00, 'yellow');
  Self.PINK := Self.createInstance($FF00FF);
  Self.BLACK := Self.createInstanceAN(TBasicColorUtil.getInstance().ALPHA, $000000, 'black');
  Self.GREY := Self.createInstanceAN(TBasicColorUtil.getInstance().ALPHA, $AAAAAA, 'grey');
  Self.LIGHT_GREY := Self.createInstance($C0C0C0);
  Self.DARK_GREY := Self.createInstance($404040);
  Self.ORANGE := Self.createInstance($e07718);
  Self.BROWN := Self.createInstance($956B00);
  Self.WHITE := Self.createInstance($FFFFFF);
  Self.TRANSPARENT_COLOR := Self.createInstanceAN($00000000, $000000, TStringUtil.getInstance().EMPTY_STRING);
  Self.TRANSPARENT_GREY := Self.createInstanceAN($52000000, $ECECEC, TStringUtil.getInstance().EMPTY_STRING);
  Self.TRANSPARENT_BLACK := Self.createInstanceAN($52000000, $000000, TStringUtil.getInstance().EMPTY_STRING);
  Self.TRANSPARENT_RED := Self.createInstanceAN($52000000, $FF0000, TStringUtil.getInstance().EMPTY_STRING);
  Self.CLEAR_COLOR := Self.BLACK;
  Self.BORDER_COLOR := Self.WHITE;
end;

constructor TBasicColorFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TBasicColorFactory.getInstance: TBasicColorFactory;
begin
        Exit(TBasicColorFactory.instance);
end;
    

function TBasicColorFactory.createInstance(value: Integer): TBasicColor;
begin
        Exit(TBasicColor.Create(TBasicColorUtil.getInstance().ALPHA, value, TStringUtil.getInstance().EMPTY_STRING));
end;
    

function TBasicColorFactory.createInstanceA(alphaValue: Integer; value: Integer): TBasicColor;
begin
        Exit(TBasicColor.Create(alphaValue, value, TStringUtil.getInstance().EMPTY_STRING));
end;
    

function TBasicColorFactory.createInstanceAN(alphaValue: Integer; value: Integer; name: string): TBasicColor;
begin
        Exit(TBasicColor.Create(alphaValue, value, name));
end;
    

function TBasicColorFactory.createInstanceARGB(alphaValue: Integer; r: Integer; g: Integer; b: Integer; name: string): TBasicColor;
var
  ALPHA_MASK: Integer;
begin
        ALPHA_MASK := $FF000000;
        Exit(TBasicColor.Create(alphaValue, (((((((alphaValue) shl (24))) and (ALPHA_MASK))) + (((((r) shl (16))) and ($00FF0000)))) + (((((g) shl (8))) and ($0000FF00)))) + (((b) and ($000000FF))), TStringUtil.getInstance().EMPTY_STRING));
end;

initialization
  {AB:INITIALIZATION}
  TBasicColorFactory.instance := TBasicColorFactory.Create();
  {AB:END}

end.

