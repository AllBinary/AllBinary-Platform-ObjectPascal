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
// package org.allbinary.graphics.form
unit CommandCurrentSelectionForm;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Command, Graphics, Animation, BasicColor, UpdateMyFontInterface, ABCustomItem, ScrollCurrentSelectionForm;

type
  {AB:TYPES}
  TCommandCurrentSelectionForm = class(TScrollCurrentSelectionForm, IUpdateMyFontInterface)
  public
    selectedAnimationArray: TArray<TAnimation>;
    unSelectedAnimationArray: TArray<TAnimation>;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(title: string; items: TArray<TABCustomItem>; border: Integer; moveForSmallScreen: Boolean; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        procedure initAnimations;
        procedure addAll(items: TArray<TABCustomItem>);
        procedure addAt(index: Integer; item: TABCustomItem);
        procedure updateAll(graphics_: TGraphics; items: TArray<TABCustomItem>);
        procedure updateAt(index: Integer; item: TABCustomItem);
        function getSelectedCommand: TCommand; virtual;
        function append(item: TABCustomItem): Integer; virtual;
        procedure delete_(itemNum: Integer); virtual;
        procedure deleteAll; virtual;
        procedure insert(itemNum: Integer; item: TABCustomItem); virtual;
        procedure set_(itemNum: Integer; item: TABCustomItem); virtual;
        procedure paint(graphics_: TGraphics); virtual;
        function paintItem(graphics_: TGraphics; index: Integer; item: TABCustomItem; x: Integer; y: Integer): Integer; virtual;
        function paintUnselectedItem(graphics_: TGraphics; index: Integer; item: TABCustomItem; x: Integer; y: Integer): Integer; virtual;
  end;

implementation
uses
  ItemPaintableFactory, J2MEUtil, NullAnimationFactory, RectangleAdjustedAnimation, RectangleFilledAdjustedAnimation, BasicColorFactory, CommandTextItem;


{AB:CODE}

procedure TCommandCurrentSelectionForm.InitFields;
begin
  Self.selectedAnimationArray := TJava.NewArray<TAnimation>(16);
  Self.unSelectedAnimationArray := TJava.NewArray<TAnimation>(16);
end;

function TCommandCurrentSelectionForm.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCommandCurrentSelectionForm.Create(title: string; items: TArray<TABCustomItem>; border: Integer; moveForSmallScreen: Boolean; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
begin
        inherited Create(title, items, TItemPaintableFactory.getInstance(), border, -3, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor);
        InitFields;
        Self.initAnimations();
        Self.addAll(items);
end;
    

procedure TCommandCurrentSelectionForm.updateMeasurement(graphics_: TGraphics);
begin
        Self.updateAll(graphics_, Self.getAllitems());
        inherited updateMeasurement(graphics_);
end;
    

procedure TCommandCurrentSelectionForm.initAnimations;
var
  nullAnimation: TAnimation;
  index: Integer;
begin
        nullAnimation := TNullAnimationFactory.getFactoryInstance().getInstance(0);
        index := System.Length(Self.selectedAnimationArray);
        while (TJava.PreDec(index)) >= (0) do begin
            Self.selectedAnimationArray[index] := nullAnimation;
        end;
        index := System.Length(Self.unSelectedAnimationArray);
        while (TJava.PreDec(index)) >= (0) do begin
            Self.unSelectedAnimationArray[index] := nullAnimation;
        end;
end;
    

procedure TCommandCurrentSelectionForm.addAll(items: TArray<TABCustomItem>);
var
  index: Integer;
begin
        index := System.Length(items);
        while (TJava.PreDec(index)) >= (0) do begin
            Self.addAt(index, items[index]);
        end;
end;
    

procedure TCommandCurrentSelectionForm.addAt(index: Integer; item: TABCustomItem);
var
  basicColorFactory_: TBasicColorFactory;
  buttonColor: TBasicColor;
  selectedButtonColor: TBasicColor;
  width: Integer;
  height: Integer;
  adjustedBorder: Integer;
  offset: Integer;
  rectWidth: Integer;
  rectHeight: Integer;
begin
        basicColorFactory_ := TBasicColorFactory.getInstance();
        buttonColor := basicColorFactory_.TRANSPARENT_GREY;
        selectedButtonColor := basicColorFactory_.TRANSPARENT_RED;
        width := item.getMinimumWidth();
        height := item.getMinimumHeight();
        adjustedBorder := 3;
        offset := -((Self.halfBorder) + (adjustedBorder));
        rectWidth := ((width) + (Self.border)) - (adjustedBorder);
        rectHeight := ((height) + (Self.border)) - (adjustedBorder);
        if (TJ2MEUtil.isJ2ME()) or (TJ2MEUtil.isHTML()) then begin
            Self.selectedAnimationArray[index] := TRectangleAdjustedAnimation.Create(rectWidth, rectHeight, offset, offset, selectedButtonColor);
        end else begin
            Self.selectedAnimationArray[index] := TRectangleFilledAdjustedAnimation.Create(rectWidth, rectHeight, offset, offset, selectedButtonColor);
        end;
        adjustedBorder := 4;
        if (TJ2MEUtil.isJ2ME()) or (TJ2MEUtil.isHTML()) then begin
            Self.unSelectedAnimationArray[index] := TRectangleAdjustedAnimation.Create(rectWidth, rectHeight, offset, offset, buttonColor);
        end else begin
            Self.unSelectedAnimationArray[index] := TRectangleFilledAdjustedAnimation.Create(rectWidth, rectHeight, offset, offset, buttonColor);
        end;
end;
    

procedure TCommandCurrentSelectionForm.updateAll(graphics_: TGraphics; items: TArray<TABCustomItem>);
var
  index: Integer;
begin
        index := System.Length(items);
        while (TJava.PreDec(index)) >= (0) do begin
            items[index].preMeasurement(graphics_);
            Self.updateAt(index, items[index]);
        end;
end;
    

procedure TCommandCurrentSelectionForm.updateAt(index: Integer; item: TABCustomItem);
var
  basicColorFactory_: TBasicColorFactory;
  buttonColor: TBasicColor;
  selectedButtonColor: TBasicColor;
  width: Integer;
  height: Integer;
  adjustedBorder: Integer;
  offset: Integer;
  rectWidth: Integer;
  rectHeight: Integer;
  rectangleAdjustedAnimation_: TRectangleFilledAdjustedAnimation;
  rectangleAdjustedAnimation__2: TRectangleAdjustedAnimation;
  rectangleAdjustedAnimation__4: TRectangleAdjustedAnimation;
begin
        basicColorFactory_ := TBasicColorFactory.getInstance();
        buttonColor := basicColorFactory_.TRANSPARENT_GREY;
        selectedButtonColor := basicColorFactory_.TRANSPARENT_RED;
        width := item.getMinimumWidth();
        height := item.getMinimumHeight();
        adjustedBorder := 3;
        offset := -((Self.halfBorder) + (adjustedBorder));
        rectWidth := ((width) + (Self.border)) - (adjustedBorder);
        rectHeight := ((height) + (Self.border)) - (adjustedBorder);
        if (TJ2MEUtil.isJ2ME()) or (TJ2MEUtil.isHTML()) then begin
            rectangleAdjustedAnimation__2 := TRectangleAdjustedAnimation(TJava.ToObject(Self.selectedAnimationArray[index]));
            rectangleAdjustedAnimation__2.setWidth(rectWidth);
            rectangleAdjustedAnimation__2.setHeight(rectHeight);
            rectangleAdjustedAnimation__2.setOffsetX(offset);
            rectangleAdjustedAnimation__2.setOffsetY(offset);
            rectangleAdjustedAnimation__2.setBasicColorP(selectedButtonColor);
        end else begin
            rectangleAdjustedAnimation_ := TRectangleFilledAdjustedAnimation(TJava.ToObject(Self.selectedAnimationArray[index]));
            rectangleAdjustedAnimation_.setWidth(rectWidth);
            rectangleAdjustedAnimation_.setHeight(rectHeight);
            rectangleAdjustedAnimation_.setOffsetX(offset);
            rectangleAdjustedAnimation_.setOffsetY(offset);
            rectangleAdjustedAnimation_.setBasicColorP(selectedButtonColor);
        end;
        adjustedBorder := 4;
        if (TJ2MEUtil.isJ2ME()) or (TJ2MEUtil.isHTML()) then begin
            rectangleAdjustedAnimation__4 := TRectangleAdjustedAnimation(TJava.ToObject(Self.unSelectedAnimationArray[index]));
            rectangleAdjustedAnimation__4.setWidth(rectWidth);
            rectangleAdjustedAnimation__4.setHeight(rectHeight);
            rectangleAdjustedAnimation__4.setOffsetX(offset);
            rectangleAdjustedAnimation__4.setOffsetY(offset);
            rectangleAdjustedAnimation__4.setBasicColorP(buttonColor);
        end else begin
            rectangleAdjustedAnimation_ := TRectangleFilledAdjustedAnimation(TJava.ToObject(Self.unSelectedAnimationArray[index]));
            rectangleAdjustedAnimation_.setWidth(rectWidth);
            rectangleAdjustedAnimation_.setHeight(rectHeight);
            rectangleAdjustedAnimation_.setOffsetX(offset);
            rectangleAdjustedAnimation_.setOffsetY(offset);
            rectangleAdjustedAnimation_.setBasicColorP(buttonColor);
        end;
end;
    

function TCommandCurrentSelectionForm.getSelectedCommand: TCommand;
var
  index: Integer;
  commandTextItem_: TCommandTextItem;
begin
        index := inherited getSelectedIndex();
        commandTextItem_ := TCommandTextItem(TJava.ToObject(Self.get(index)));
        Exit(commandTextItem_.getCommand());
end;
    

function TCommandCurrentSelectionForm.append(item: TABCustomItem): Integer;
var
  result_: Integer;
begin
        result_ := inherited append(item);
        Self.addAt(result_, item);
        Exit(result_);
end;
    

procedure TCommandCurrentSelectionForm.delete_(itemNum: Integer);
begin
        inherited delete_(itemNum);
end;
    

procedure TCommandCurrentSelectionForm.deleteAll;
begin
        Self.initAnimations();
        inherited deleteAll();
end;
    

procedure TCommandCurrentSelectionForm.insert(itemNum: Integer; item: TABCustomItem);
begin
        inherited insert(itemNum, item);
end;
    

procedure TCommandCurrentSelectionForm.set_(itemNum: Integer; item: TABCustomItem);
begin
        inherited set_(itemNum, item);
end;
    

procedure TCommandCurrentSelectionForm.paint(graphics_: TGraphics);
begin
        Self.myFontProcessor.process(graphics_);
        inherited paint(graphics_);
end;
    

// throws Exception
function TCommandCurrentSelectionForm.paintItem(graphics_: TGraphics; index: Integer; item: TABCustomItem; x: Integer; y: Integer): Integer;
begin
        Self.selectedAnimationArray[index].paintXY(graphics_, x, y);
        Exit(inherited paintItem(graphics_, index, item, x, y));
end;
    

// throws Exception
function TCommandCurrentSelectionForm.paintUnselectedItem(graphics_: TGraphics; index: Integer; item: TABCustomItem; x: Integer; y: Integer): Integer;
begin
        Self.unSelectedAnimationArray[index].paintXY(graphics_, x, y);
        Exit(inherited paintUnselectedItem(graphics_, index, item, x, y));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

