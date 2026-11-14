// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item
unit ABTextItem;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, BasicColor, ABStringComponent, CustomCustomItem, ABCustomItemInterface;

type
  {AB:TYPES}
  TABTextItem = class(TCustomCustomItem, IABCustomItemInterface)
  public
    function JavaObject: TObject;
        constructor Create(label_: string; layout: Integer; altText: string; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
        procedure keyPressed(keyCode: Integer); virtual;
        procedure paintUnselected(graphics_: TGraphics; x: Integer; y: Integer); virtual;
        function getLabelStringComponent: TABStringComponent; virtual;
        function getMinimumWidth: Integer; virtual;
        function getMinimumHeight: Integer; virtual;
        function getLabel: string; virtual;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); virtual;
  end;

implementation

{AB:CODE}

function TABTextItem.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TABTextItem.Create(label_: string; layout: Integer; altText: string; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
begin
        inherited Create(label_, backgroundBasicColor, foregroundBasicColor);
end;
    

procedure TABTextItem.keyPressed(keyCode: Integer);
begin
end;
    

procedure TABTextItem.paintUnselected(graphics_: TGraphics; x: Integer; y: Integer);
begin
end;
    

function TABTextItem.getLabelStringComponent: TABStringComponent;
begin
        Exit(TABStringComponent.NULL_STRING_COMPONENT);
end;
    

function TABTextItem.getMinimumWidth: Integer;
begin
        Exit(inherited getMinimumWidth());
end;
    

function TABTextItem.getMinimumHeight: Integer;
begin
        Exit(inherited getMinimumHeight());
end;
    

function TABTextItem.getLabel: string;
begin
        Exit(inherited getLabel());
end;
    

procedure TABTextItem.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        inherited paintXY(graphics_, x, y);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

