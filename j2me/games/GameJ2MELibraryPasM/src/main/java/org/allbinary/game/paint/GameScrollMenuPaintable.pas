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
// package org.allbinary.game.paint
unit GameScrollMenuPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicColor, ColorChangeListener, Paintable, AllBinaryEventObject, BasicGameDemoPaintable, EventListenerInterface;

type
  {AB:TYPES}
  TGameScrollMenuPaintable = class(TBasicGameDemoPaintable, IColorChangeListener, IEventListenerInterface)
  public
    function JavaObject: TObject;
        constructor Create(mainDemoStatePaintable: TPaintable; ownershipPaintable: TPaintable; helpPaintableInterface: TPaintable; basicColor_: TBasicColor);
        procedure setState(state: Integer); virtual;
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure setColor(basicColor_: TBasicColor); virtual;
  end;

implementation
uses
  MainGameDemoStatePaintable, ColorChangeEventHandler, FormPaintable, ScrollSelectionForm, ABStringComponent, ABTextItem;


{AB:CODE}

function TGameScrollMenuPaintable.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TGameScrollMenuPaintable.Create(mainDemoStatePaintable: TPaintable; ownershipPaintable: TPaintable; helpPaintableInterface: TPaintable; basicColor_: TBasicColor);
begin
        inherited Create(mainDemoStatePaintable, ownershipPaintable, helpPaintableInterface);
        Self.setColor(basicColor_);
        TColorChangeEventHandler.getInstance().addListenerInterface(Self);
end;
    

procedure TGameScrollMenuPaintable.setState(state: Integer);
begin
        Self.setCurrentStatePaintable(Self.getMainDemoStatePaintable());
end;
    

procedure TGameScrollMenuPaintable.onEvent(eventObject: TAllBinaryEventObject);
begin
end;
    

procedure TGameScrollMenuPaintable.setColor(basicColor_: TBasicColor);
var
  mainGameDemoStatePaintable_: TMainGameDemoStatePaintable;
  formPaintable_: TFormPaintable;
  scrollSelectionForm_: TScrollSelectionForm;
  item: TABTextItem;
  stringComponent: TABStringComponent;
  index: Integer;
begin
        mainGameDemoStatePaintable_ := TMainGameDemoStatePaintable(TJava.ToObject(Self.getMainDemoStatePaintable()));
        formPaintable_ := TFormPaintable(TJava.ToObject(mainGameDemoStatePaintable_.getMenuPaintableInterface()));
        scrollSelectionForm_ := TScrollSelectionForm(TJava.ToObject(formPaintable_.getForm()));
        mainGameDemoStatePaintable_.getOwnershipPaintableInterface().setBasicColorP(basicColor_);
        scrollSelectionForm_.setButtonBasicColor(basicColor_);
        
        
        for index := (scrollSelectionForm_.size()) - (1) downto 0 do begin
            item := TABTextItem(TJava.ToObject(scrollSelectionForm_.get(index)));
            stringComponent := item.getLabelStringComponent();
            if (stringComponent) <> (nil) then begin
                stringComponent.setForegroundBasicColor(basicColor_);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

