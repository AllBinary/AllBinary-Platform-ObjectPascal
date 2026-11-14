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
unit ScrollCurrentSelectionForm;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Processor, Rectangle, BasicColor, MyFontProcessor, UpdateMyFontInterface, ABCustomItem, ItemIndexDx, ItemPaintableFactory, FormType, ScrollSelectionForm;

type
  {AB:TYPES}
  TScrollCurrentSelectionForm = class(TScrollSelectionForm, IUpdateMyFontInterface)
  public
    moveForSmallScreen: Boolean;
    updateMyFontProcessor: TMyFontProcessor;
    myFontProcessor: TMyFontProcessor;
    processor: TProcessor;
    preItemIndexDx: TItemIndexDx;
    dx: Integer;
    dy: Integer;
    maxWidth: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(title: string; items: TArray<TABCustomItem>; formPaintableFactory: TItemPaintableFactory; border: Integer; adjustedExtraBorder: Integer; moveForSmallScreen: Boolean; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
        procedure init(rectangle_: TRectangle; formType_: TFormType); virtual;
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        procedure processTempHorizontalForm; virtual;
        procedure processHorizontalForm; virtual;
        procedure processVerticalForm; virtual;
        function getXTempHorizontalForm(index: Integer; item: TABCustomItem; dx: Integer; dy: Integer): Integer; virtual;
        function getXHorizontalForm(index: Integer; item: TABCustomItem; dx: Integer; dy: Integer): Integer; virtual;
        function getXVerticalForm(index: Integer; item: TABCustomItem; dx: Integer; dy: Integer): Integer; virtual;
        function getDiffX(item: TABCustomItem): Integer; virtual;
        function getDx: Integer; virtual;
        function getDy: Integer; virtual;
        procedure paint(graphics_: TGraphics); virtual;
  end;

implementation
uses
  FormTypeFactory, VerticalFormProcessor, VerticalItemIndexDx, HorizontalFormProcessor, HorizontalItemIndexDx, TempHorizontalFormProcessor, TempHorizontalItemIndexDx, UpdateMyFontProcessor;


{AB:CODE}

procedure TScrollCurrentSelectionForm.InitFields;
begin
  
  Self.updateMyFontProcessor := TUpdateMyFontProcessor.Create(Self);
  Self.myFontProcessor := Self.updateMyFontProcessor;
  Self.processor := TProcessor.getInstance();
  Self.preItemIndexDx := TItemIndexDx.getInstance();
  
  
  Self.maxWidth := 0;
end;

function TScrollCurrentSelectionForm.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TScrollCurrentSelectionForm.Create(title: string; items: TArray<TABCustomItem>; formPaintableFactory: TItemPaintableFactory; border: Integer; adjustedExtraBorder: Integer; moveForSmallScreen: Boolean; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
begin
        inherited Create(title, items, formPaintableFactory, border, adjustedExtraBorder, backgroundBasicColor, foregroundBasicColor);
        InitFields;
        Self.moveForSmallScreen := moveForSmallScreen;
end;
    

// throws Exception
procedure TScrollCurrentSelectionForm.init(rectangle_: TRectangle; formType_: TFormType);
var
  formTypeFactory_: TFormTypeFactory;
begin
        inherited init(rectangle_, formType_);
        formTypeFactory_ := TFormTypeFactory.getInstance();
        if (formType_) = (formTypeFactory_.TEMP_HORIZONTAL_FORM) then begin
            Self.processor := TTempHorizontalFormProcessor.Create(Self);
            Self.preItemIndexDx := TTempHorizontalItemIndexDx.Create(Self);
        end else if (formType_) = (formTypeFactory_.HORIZONTAL_FORM) then begin
            Self.processor := THorizontalFormProcessor.Create(Self);
            Self.preItemIndexDx := THorizontalItemIndexDx.Create(Self);
        end else if (formType_) = (formTypeFactory_.VERTICAL_CENTER_FORM) then begin
            Self.processor := TVerticalFormProcessor.Create(Self);
            Self.preItemIndexDx := TVerticalItemIndexDx.Create(Self);
        end else if (formType_) = (formTypeFactory_.NULL_FORM_TYPE) then begin
        end else begin
            Self.logUtil.putF(formTypeFactory_.UNK, TJava.Box(Self), Self.commonStrings.INIT);
        end;
        Self.myFontProcessor := Self.updateMyFontProcessor;
end;
    

procedure TScrollCurrentSelectionForm.updateMeasurement(graphics_: TGraphics);
begin
        Self.myFontProcessor := TMyFontProcessor.getInstance();
end;
    

procedure TScrollCurrentSelectionForm.processTempHorizontalForm;
begin
        Self.dx := ((Self.x) - (30)) + ((TJava.SignedRightShift(Self.rectangle.getWidth(), 1)));
        Self.dy := Self.y;
end;
    

procedure TScrollCurrentSelectionForm.processHorizontalForm;
var
  size: Integer;
  totalWidth: Integer;
  item: TABCustomItem;
  index: Integer;
  maxTitleHeight: Integer;
begin
        size := Self.size();
        totalWidth := 0;
        
        for index := 0 to size - 1 do begin
            item := Self.get(index);
            totalWidth := (totalWidth) + ((item.getMinimumWidth()) + (Self.border));
        end;
        Self.dx := ((Self.x) + ((TJava.SignedRightShift(Self.rectangle.getWidth(), 1)))) - ((TJava.SignedRightShift(totalWidth, 1)));
        Self.dy := (Self.y) + ((TJava.SignedRightShift(Self.rectangle.getHeight(), 1)));
        if Self.moveForSmallScreen then begin
            maxTitleHeight := 175;
            if (Self.dy) < (maxTitleHeight) then begin
                Self.dy := maxTitleHeight;
            end;
        end;
end;
    

procedure TScrollCurrentSelectionForm.processVerticalForm;
var
  totalHeight: Integer;
  size: Integer;
  item2: TABCustomItem;
  index: Integer;
  maxTitleHeight: Integer;
begin
        totalHeight := 0;
        size := Self.size();
        
        for index := 0 to size - 1 do begin
            item2 := Self.get(index);
            if (Self.maxWidth) < (item2.getMinimumWidth()) then begin
                Self.maxWidth := item2.getMinimumWidth();
            end;
            totalHeight := (totalHeight) + ((item2.getMinimumHeight()) + (Self.border));
        end;
        Self.dx := (TJava.Divide(((Self.rectangle.getWidth()) - (Self.maxWidth)), 2));
        if (Self.size()) > (0) then begin
            Self.dy := (Self.y) + ((TJava.Divide(((Self.rectangle.getHeight()) - (totalHeight)), 2)));
            if Self.moveForSmallScreen then begin
                maxTitleHeight := 175;
                if (Self.dy) < (maxTitleHeight) then begin
                    Self.dy := maxTitleHeight;
                end;
            end;
        end else begin
            Self.dy := Self.y;
        end;
end;
    

function TScrollCurrentSelectionForm.getXTempHorizontalForm(index: Integer; item: TABCustomItem; dx: Integer; dy: Integer): Integer;
begin
        Exit(Self.getDiffX(item));
end;
    

function TScrollCurrentSelectionForm.getXHorizontalForm(index: Integer; item: TABCustomItem; dx: Integer; dy: Integer): Integer;
begin
        Exit(0);
end;
    

function TScrollCurrentSelectionForm.getXVerticalForm(index: Integer; item: TABCustomItem; dx: Integer; dy: Integer): Integer;
begin
        Exit((Self.getDiffX(item)) + (Self.halfBorder));
end;
    

function TScrollCurrentSelectionForm.getDiffX(item: TABCustomItem): Integer;
begin
        Exit((TJava.SignedRightShift(((Self.maxWidth) - (item.getMinimumWidth())), 1)));
end;
    

function TScrollCurrentSelectionForm.getDx: Integer;
begin
        Exit(Self.dx);
end;
    

function TScrollCurrentSelectionForm.getDy: Integer;
begin
        Exit(Self.dy);
end;
    

procedure TScrollCurrentSelectionForm.paint(graphics_: TGraphics);
var
  delta: Integer;
  deltaX: Integer;
  deltaY: Integer;
  size: Integer;
  formTypeFactory_: TFormTypeFactory;
  item: TABCustomItem;
  diffX: Integer;
  index: Integer;
begin
        try
            Self.processor.process();
            delta := 0;
            deltaX := Self.getDx();
            deltaY := Self.getDy();
            size := Self.size();
            formTypeFactory_ := TFormTypeFactory.getInstance();
            
            for index := 0 to size - 1 do begin
                item := Self.get(index);
                diffX := Self.preItemIndexDx.getDx(index, item, Self.dx, Self.dy);
                if (index) = (Self.getSelectedIndex()) then begin
                    delta := Self.paintItem(graphics_, index, item, (deltaX) + (diffX), deltaY);
                    Self.paintable.paint(graphics_, index, (deltaX) + (diffX), deltaY);
                end else begin
                    delta := Self.paintUnselectedItem(graphics_, index, item, (deltaX) + (diffX), deltaY);
                    Self.paintable.paint(graphics_, index, (deltaX) + (diffX), deltaY);
                end;
                if (Self.formType) = (formTypeFactory_.TEMP_HORIZONTAL_FORM) then begin
                end else if (Self.formType) = (formTypeFactory_.HORIZONTAL_FORM) then begin
                    deltaX := delta;
                end else if (Self.formType) = (formTypeFactory_.VERTICAL_CENTER_FORM) then begin
                    deltaY := delta;
                end else begin
                    raise SysUtils.Exception.Create(formTypeFactory_.UNK);
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.canvasStrings.PAINT, TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

