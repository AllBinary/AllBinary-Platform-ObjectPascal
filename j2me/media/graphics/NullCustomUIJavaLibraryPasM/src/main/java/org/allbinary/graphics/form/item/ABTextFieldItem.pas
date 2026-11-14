// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item
unit ABTextFieldItem;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Canvas, Font, BasicColor, Visitor, ABTextItem;

type
  {AB:TYPES}
  TABTextFieldItem = class(TABTextItem)
  public
    font: TFont;
    procedure InitFields;
        constructor Create(canvas_: TCanvas; visitor_: TVisitor; label_: string; value: string; maxSize: Integer; layout: Integer; altText: string; font_: TFont; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
        function getLabel: string; override;
        procedure setLabel(label_: string); override;
        function getString: string; virtual;
        procedure setString(string_: string); virtual;
        procedure setFocus(state: Boolean); virtual;
        function getFontHeight: Integer; virtual;
        procedure setBackgroundBasicColorP(basicColor_: TBasicColor); virtual;
        procedure setForegroundBasicColorP(basicColor_: TBasicColor); virtual;
  end;

implementation
uses
  StringUtil;


{AB:CODE}

procedure TABTextFieldItem.InitFields;
begin
  
end;
    

constructor TABTextFieldItem.Create(canvas_: TCanvas; visitor_: TVisitor; label_: string; value: string; maxSize: Integer; layout: Integer; altText: string; font_: TFont; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
begin
        inherited Create(label_, layout, altText, backgroundBasicColor, foregroundBasicColor);
        InitFields;
        Self.font := font_;
end;
    

function TABTextFieldItem.getLabel: string;
begin
        Exit(TStringUtil.getInstance().EMPTY_STRING);
end;
    

procedure TABTextFieldItem.setLabel(label_: string);
begin
end;
    

function TABTextFieldItem.getString: string;
begin
        Exit(TStringUtil.getInstance().EMPTY_STRING);
end;
    

procedure TABTextFieldItem.setString(string_: string);
begin
end;
    

procedure TABTextFieldItem.setFocus(state: Boolean);
begin
end;
    

function TABTextFieldItem.getFontHeight: Integer;
begin
        Exit(Self.font.getHeight());
end;
    

procedure TABTextFieldItem.setBackgroundBasicColorP(basicColor_: TBasicColor);
begin
end;
    

procedure TABTextFieldItem.setForegroundBasicColorP(basicColor_: TBasicColor);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

