// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item
unit ABCustomItem;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Screen, BasicColor;

type
  {AB:TYPES}
  TABCustomItem = class(TObject)
  public
    class var NULL_CUSTOM_ITEM: TObject;
        class function getNullInstance: TABCustomItem; static;
        constructor Create(label_: string; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
        procedure setOwner(owner: TScreen); virtual;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); virtual;
        procedure paintUnselected(graphics_: TGraphics; x: Integer; y: Integer); virtual;
        function isFocusable: Boolean; virtual;
        function getLabel: string; virtual;
        procedure setLabel(label_: string); virtual;
        function getHeight: Integer; virtual;
        procedure setHeight(height: Integer); virtual;
        function getValue: Single; virtual;
        procedure setValue(value: Single); virtual;
        function getMinimumWidth: Integer; virtual;
        function getMinimumHeight: Integer; virtual;
        procedure preMeasurement(graphics_: TGraphics); virtual;
  end;

implementation
uses
  BasicColorFactory, NullUtil, StringUtil;


{AB:CODE}
    

class function TABCustomItem.getNullInstance: TABCustomItem;
begin
        if (TABCustomItem.NULL_CUSTOM_ITEM) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TABCustomItem.NULL_CUSTOM_ITEM := TABCustomItem.Create(TStringUtil.getInstance().EMPTY_STRING, TBasicColorFactory.getInstance().BLACK, TBasicColorFactory.getInstance().WHITE);
        end;
        Exit(TABCustomItem(TJava.ToObject(TABCustomItem.NULL_CUSTOM_ITEM)));
end;
    

constructor TABCustomItem.Create(label_: string; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
begin
    inherited Create;
end;
    

procedure TABCustomItem.setOwner(owner: TScreen);
begin
end;
    

procedure TABCustomItem.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
end;
    

procedure TABCustomItem.paintUnselected(graphics_: TGraphics; x: Integer; y: Integer);
begin
end;
    

function TABCustomItem.isFocusable: Boolean;
begin
        Exit(False);
end;
    

function TABCustomItem.getLabel: string;
begin
        Exit(TStringUtil.getInstance().EMPTY_STRING);
end;
    

procedure TABCustomItem.setLabel(label_: string);
begin
end;
    

function TABCustomItem.getHeight: Integer;
begin
        Exit(0);
end;
    

procedure TABCustomItem.setHeight(height: Integer);
begin
end;
    

function TABCustomItem.getValue: Single;
begin
        Exit(0.0);
end;
    

procedure TABCustomItem.setValue(value: Single);
begin
end;
    

function TABCustomItem.getMinimumWidth: Integer;
begin
        Exit(0);
end;
    

function TABCustomItem.getMinimumHeight: Integer;
begin
        Exit(0);
end;
    

procedure TABCustomItem.preMeasurement(graphics_: TGraphics);
begin
end;

initialization
  {AB:INITIALIZATION}
  TABCustomItem.NULL_CUSTOM_ITEM := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

