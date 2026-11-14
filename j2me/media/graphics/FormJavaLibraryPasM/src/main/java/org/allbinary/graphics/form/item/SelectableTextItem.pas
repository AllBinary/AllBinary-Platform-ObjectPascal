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
// package org.allbinary.graphics.form.item
unit SelectableTextItem;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, BasicColor, ABTextItem;

type
  {AB:TYPES}
  TSelectableTextItem = class(TABTextItem)
  public
        constructor Create(label_: string; layout: Integer; altText: string; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
        function isFocusable: Boolean; override;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); override;
  end;

implementation
uses
  ABStringComponent;


{AB:CODE}
    

constructor TSelectableTextItem.Create(label_: string; layout: Integer; altText: string; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
begin
        inherited Create(label_, layout, altText, backgroundBasicColor, foregroundBasicColor);
end;
    

function TSelectableTextItem.isFocusable: Boolean;
begin
        Exit(True);
end;
    

procedure TSelectableTextItem.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
var
  stringComponent: TABStringComponent;
begin
        Self.myFontProcessor.process(graphics_);
        stringComponent := Self.getLabelStringComponent();
        if (stringComponent) <> (nil) then begin
            graphics_.setColor(stringComponent.getForegroundBasicColor().intValue());
        end;
        graphics_.drawString(Self.getLabel(), (x) + (2), y, 0);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

