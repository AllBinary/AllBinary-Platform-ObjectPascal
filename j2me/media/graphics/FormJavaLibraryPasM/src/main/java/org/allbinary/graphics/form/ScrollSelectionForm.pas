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
unit ScrollSelectionForm;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, GPoint, Rectangle, BasicColor, ABCustomItem, RectangleCollisionUtil, PaintableForm, ItemPaintableFactory, ItemIndexPaintable, ItemIndexDx, ItemPaintable, FormType;

type
  {AB:TYPES}
  TScrollSelectionForm = class(TPaintableForm)
  public
    rectangleCollisionUtil: TRectangleCollisionUtil;
    border: Integer;
    halfBorder: Integer;
    buttonBasicColor: TBasicColor;
    scrollSelectionFormFormTypeItemIndexPaintable: TItemIndexPaintable;
    formTypeItemIndexDx: TItemIndexDx;
    paintable: TItemPaintable;
    adjustedExtraBorder: Integer;
    class var NULL_SCROLL_SELECTION_FORM: TObject;
    class var NULL_SCROLL_SELECTION_HORIZONTAL_FORM: TObject;
    class var INSIDE_FORM: string;
    class var IS_IN_FORM: string;
    class var GET_SELECTED_INDEX: string;
    procedure InitFields;
        class function createForm(title: string; items: TArray<TABCustomItem>; formPaintableFactory: TItemPaintableFactory; border: Integer; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor): TPaintableForm; static;
        class function getNullScrollSelectionForm: TScrollSelectionForm; static;
        class function getNullScrollSelectionFormHorizontal: TScrollSelectionForm; static;
        constructor Create(title: string; items: TArray<TABCustomItem>; formPaintableFactory: TItemPaintableFactory; border: Integer; adjustedExtraBorder: Integer; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
        procedure init(rectangle_: TRectangle; formType_: TFormType); override;
        function paintItemHorizontal(graphics_: TGraphics; index: Integer; item: TABCustomItem; x: Integer; y: Integer): Integer; virtual;
        function paintItemVertical(graphics_: TGraphics; index: Integer; item: TABCustomItem; x: Integer; y: Integer): Integer; virtual;
        function paintItemTempHorizontal(graphics_: TGraphics; index: Integer; item: TABCustomItem; x: Integer; y: Integer): Integer; virtual;
        function getSelectedIndexForPointHorizontalDx(index: Integer; item: TABCustomItem; dx: Integer; dy: Integer): Integer; virtual;
        function getSelectedIndexForPointVerticalDx(index: Integer; item: TABCustomItem; dx: Integer; dy: Integer): Integer; virtual;
        function getSelectedIndexForPointTempHorizontalDx(index: Integer; item: TABCustomItem; dx: Integer; dy: Integer): Integer; virtual;
        function append(item: TABCustomItem): Integer; override;
        function getSelectedItem(point: TGPoint): TABCustomItem; virtual;
        function getItemIndex(item: TABCustomItem): Integer; virtual;
        function getStartIndex: Integer; virtual;
        function getSelectedIndexForPoint(point: TGPoint): Integer; virtual;
        function processInputKey(gameKeyCode: Integer): Integer; virtual;
        function isInForm(point: TGPoint): Boolean; virtual;
        function paintItem(graphics_: TGraphics; index: Integer; item: TABCustomItem; x: Integer; y: Integer): Integer; virtual;
        function paintUnselectedItem(graphics_: TGraphics; index: Integer; item: TABCustomItem; x: Integer; y: Integer): Integer; virtual;
        function getDiffX(item: TABCustomItem): Integer; virtual;
        function getDx: Integer; virtual;
        function getDy: Integer; virtual;
        procedure setButtonBasicColor(buttonBasicColor: TBasicColor); virtual;
        function getButtonBasicColor: TBasicColor;
  end;

implementation
uses
  FormTypeFactory, ScrollSelectionFormTempHorizontalPaintable, ScrollSelectionFormTempHorizontalDx, ScrollSelectionFormVerticalPaintable, ScrollSelectionFormVericalDx, ScrollSelectionFormHorizontalPaintable, ScrollSelectionFormHorizontalDx, Canvas, BasicColorFactory, NullUtil, LogUtil, StringMaker, StringUtil, CommonLabels, CommonSeps, CommonStrings;


{AB:CODE}

procedure TScrollSelectionForm.InitFields;
begin
  Self.rectangleCollisionUtil := TRectangleCollisionUtil.getInstance();
  
  
  
  Self.scrollSelectionFormFormTypeItemIndexPaintable := TItemIndexPaintable.getInstance();
  Self.formTypeItemIndexDx := TItemIndexDx.getInstance();
  Self.paintable := TItemPaintableFactory.getInstance();
  
end;
    

class function TScrollSelectionForm.createForm(title: string; items: TArray<TABCustomItem>; formPaintableFactory: TItemPaintableFactory; border: Integer; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor): TPaintableForm;
var
  commonStrings_: TCommonStrings;
  logUtil_: TLogUtil;
begin
        try
            if (formPaintableFactory) = (TItemPaintableFactory.getInstance()) then begin
                Exit(TScrollSelectionForm.Create(title, items, formPaintableFactory, border, -3, backgroundBasicColor, foregroundBasicColor));
            end else begin
                commonStrings_ := TCommonStrings.getInstance();
                logUtil_ := TLogUtil.getInstance();
                logUtil_.putF(commonStrings_.EXCEPTION, TJava.Box(logUtil_), commonStrings_.EXCEPTION);
                Exit(TPaintableForm.getNullPaintableForm());
            end;
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            logUtil_ := TLogUtil.getInstance();
            logUtil_.put(commonStrings_.EXCEPTION, TJava.Box(logUtil_), commonStrings_.EXCEPTION, TJava.Box(e));
            Exit(TPaintableForm.getNullPaintableForm());
            end;
        end;
end;
    

class function TScrollSelectionForm.getNullScrollSelectionForm: TScrollSelectionForm;
begin
        if (TScrollSelectionForm.NULL_SCROLL_SELECTION_FORM) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TScrollSelectionForm.NULL_SCROLL_SELECTION_FORM := TScrollSelectionForm.createForm(TStringUtil.getInstance().EMPTY_STRING, nil, TItemPaintableFactory.getInstance(), 0, TBasicColorFactory.getInstance().BLACK, TBasicColorFactory.getInstance().WHITE);
        end;
        Exit(TScrollSelectionForm(TJava.ToObject(TScrollSelectionForm.NULL_SCROLL_SELECTION_FORM)));
end;
    

class function TScrollSelectionForm.getNullScrollSelectionFormHorizontal: TScrollSelectionForm;
begin
        if (TScrollSelectionForm.NULL_SCROLL_SELECTION_HORIZONTAL_FORM) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TScrollSelectionForm.NULL_SCROLL_SELECTION_HORIZONTAL_FORM := TScrollSelectionForm.createForm(TStringUtil.getInstance().EMPTY_STRING, nil, TItemPaintableFactory.getInstance(), 0, TBasicColorFactory.getInstance().BLACK, TBasicColorFactory.getInstance().WHITE);
        end;
        Exit(TScrollSelectionForm(TJava.ToObject(TScrollSelectionForm.NULL_SCROLL_SELECTION_HORIZONTAL_FORM)));
end;
    

constructor TScrollSelectionForm.Create(title: string; items: TArray<TABCustomItem>; formPaintableFactory: TItemPaintableFactory; border: Integer; adjustedExtraBorder: Integer; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
begin
        inherited Create(title, items, backgroundBasicColor, foregroundBasicColor);
        InitFields;
        Self.adjustedExtraBorder := adjustedExtraBorder;
        Self.buttonBasicColor := foregroundBasicColor;
        Self.border := border;
        Self.halfBorder := (TJava.SignedRightShift(border, 1));
        Self.paintable := formPaintableFactory.getInstanceItemPaintable(Self);
end;
    

// throws Exception
procedure TScrollSelectionForm.init(rectangle_: TRectangle; formType_: TFormType);
var
  formTypeFactory_: TFormTypeFactory;
begin
        inherited init(rectangle_, formType_);
        formTypeFactory_ := TFormTypeFactory.getInstance();
        if (formType_) = (formTypeFactory_.HORIZONTAL_FORM) then begin
            Self.scrollSelectionFormFormTypeItemIndexPaintable := TScrollSelectionFormHorizontalPaintable.Create(Self);
            Self.formTypeItemIndexDx := TScrollSelectionFormHorizontalDx.Create(Self);
        end else if (formType_) = (formTypeFactory_.VERTICAL_CENTER_FORM) then begin
            Self.scrollSelectionFormFormTypeItemIndexPaintable := TScrollSelectionFormVerticalPaintable.Create(Self);
            Self.formTypeItemIndexDx := TScrollSelectionFormVericalDx.Create(Self);
        end else if (formType_) = (formTypeFactory_.TEMP_HORIZONTAL_FORM) then begin
            Self.scrollSelectionFormFormTypeItemIndexPaintable := TScrollSelectionFormTempHorizontalPaintable.Create(Self);
            Self.formTypeItemIndexDx := TScrollSelectionFormTempHorizontalDx.Create(Self);
        end else if (formType_) = (formTypeFactory_.NULL_FORM_TYPE) then begin
        end else begin
            raise SysUtils.Exception.Create(formTypeFactory_.UNK);
        end;
end;
    

function TScrollSelectionForm.paintItemHorizontal(graphics_: TGraphics; index: Integer; item: TABCustomItem; x: Integer; y: Integer): Integer;
var
  width: Integer;
begin
        width := item.getMinimumWidth();
        Exit(((x) + (width)) + (Self.border));
end;
    

function TScrollSelectionForm.paintItemVertical(graphics_: TGraphics; index: Integer; item: TABCustomItem; x: Integer; y: Integer): Integer;
var
  height: Integer;
begin
        height := item.getMinimumHeight();
        Exit(((y) + (height)) + (Self.border));
end;
    

function TScrollSelectionForm.paintItemTempHorizontal(graphics_: TGraphics; index: Integer; item: TABCustomItem; x: Integer; y: Integer): Integer;
begin
        Exit(0);
end;
    

function TScrollSelectionForm.getSelectedIndexForPointHorizontalDx(index: Integer; item: TABCustomItem; dx: Integer; dy: Integer): Integer;
begin
        Exit((dx) - (Self.halfBorder));
end;
    

function TScrollSelectionForm.getSelectedIndexForPointVerticalDx(index: Integer; item: TABCustomItem; dx: Integer; dy: Integer): Integer;
begin
        Exit((dx) + (Self.getDiffX(item)));
end;
    

function TScrollSelectionForm.getSelectedIndexForPointTempHorizontalDx(index: Integer; item: TABCustomItem; dx: Integer; dy: Integer): Integer;
begin
        Exit((dx) + (Self.getDiffX(item)));
end;
    

function TScrollSelectionForm.append(item: TABCustomItem): Integer;
begin
        Exit(inherited append(item));
end;
    

// throws Exception
function TScrollSelectionForm.getSelectedItem(point: TGPoint): TABCustomItem;
var
  index: Integer;
begin
        index := Self.getSelectedIndexForPoint(point);
        if (index) <> (-1) then begin
            Exit(Self.get(index));
        end else begin
            Exit(TABCustomItem.getNullInstance());
        end;
end;
    

// throws Exception
function TScrollSelectionForm.getItemIndex(item: TABCustomItem): Integer;
var
  nextItem: TABCustomItem;
  size: Integer;
  index: Integer;
begin
        
        size := Self.size();
        for index := 0 to size - 1 do begin
            nextItem := TABCustomItem(TJava.ToObject(Self.get(index)));
            if (nextItem) = (item) then begin
                Exit(index);
            end;
        end;
        Exit(-1);
end;
    

function TScrollSelectionForm.getStartIndex: Integer;
begin
        Exit(0);
end;
    

// throws Exception
function TScrollSelectionForm.getSelectedIndexForPoint(point: TGPoint): Integer;
var
  start: Integer;
  size: Integer;
  dx: Integer;
  dy: Integer;
  formTypeFactory_: TFormTypeFactory;
  commonLabels_: TCommonLabels;
  stringBuffer: TStringMaker;
  item: TABCustomItem;
  width: Integer;
  height: Integer;
  diffX: Integer;
  index: Integer;
begin
        start := Self.getStartIndex();
        size := Self.size();
        dx := Self.getDx();
        dy := Self.getDy();
        formTypeFactory_ := TFormTypeFactory.getInstance();
        commonLabels_ := TCommonLabels.getInstance();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(commonLabels_.START_LABEL);
        stringBuffer.appendint(start);
        stringBuffer.append(TCommonSeps.getInstance().SPACE);
        stringBuffer.append(commonLabels_.TOTAL_LABEL);
        stringBuffer.appendint(size);
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), TScrollSelectionForm.GET_SELECTED_INDEX);
        
        
        
        
        for index := start to size - 1 do begin
            item := Self.get(index);
            width := item.getMinimumWidth();
            height := item.getMinimumHeight();
            diffX := Self.formTypeItemIndexDx.getDx(index, item, dx, dy);
            if Self.rectangleCollisionUtil.isInside(diffX, (dy) - (Self.halfBorder), ((diffX) + (width)) + (Self.border), (((dy) + (height)) + (Self.halfBorder)) + (1), point.getX(), point.getY()) then begin
                stringBuffer.delete_(0, stringBuffer.length());
                stringBuffer.append(commonLabels_.ITEM_LABEL);
                stringBuffer.append(item.getLabel());
                stringBuffer.append(TCommonSeps.getInstance().SPACE);
                stringBuffer.append(commonLabels_.INDEX_LABEL);
                stringBuffer.appendint(index);
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), TScrollSelectionForm.GET_SELECTED_INDEX);
                Exit(index);
            end;
            if (Self.formType) = (formTypeFactory_.HORIZONTAL_FORM) then begin
                dx := ((dx) + (width)) + (Self.border);
                if (dx) > (Self.rectangle.getMaxX()) then begin
                    Break;
                end;
            end else if (Self.formType) = (formTypeFactory_.VERTICAL_CENTER_FORM) then begin
                dy := ((dy) + (height)) + (Self.border);
                if (dy) > (Self.rectangle.getMaxY()) then begin
                    Break;
                end;
            end else if (Self.formType) = (formTypeFactory_.NULL_FORM_TYPE) then begin
            end else begin
                raise SysUtils.Exception.Create(formTypeFactory_.UNK);
            end;
        end;
        Exit(-1);
end;
    

// throws Exception
function TScrollSelectionForm.processInputKey(gameKeyCode: Integer): Integer;
var
  formTypeFactory_: TFormTypeFactory;
  index: Integer;
  max: Integer;
begin
        formTypeFactory_ := TFormTypeFactory.getInstance();
        if (Self.size()) = (0) then begin
            Exit(-1);
        end;
        index := Self.getSelectedIndex();
        if ((Self.formType) = (formTypeFactory_.HORIZONTAL_FORM)) or ((Self.formType) = (formTypeFactory_.TEMP_HORIZONTAL_FORM)) then begin
            if (gameKeyCode) = (TCanvas.RIGHT) then begin
                Inc(index);
            end else if (gameKeyCode) = (TCanvas.LEFT) then begin
                Dec(index);
            end;
        end else if (Self.formType) = (formTypeFactory_.VERTICAL_CENTER_FORM) then begin
            if (gameKeyCode) = (TCanvas.DOWN) then begin
                Inc(index);
            end else if (gameKeyCode) = (TCanvas.UP) then begin
                Dec(index);
            end;
        end else if (Self.formType) = (formTypeFactory_.NULL_FORM_TYPE) then begin
        end else begin
            raise SysUtils.Exception.Create(formTypeFactory_.UNK);
        end;
        max := (Self.size()) - (1);
        if (index) < (0) then begin
            Self.setSelectedIndex(0);
        end else if (index) > (max) then begin
            Self.setSelectedIndex(max);
        end else begin
            Self.setSelectedIndex(index);
        end;
        Exit(-1);
end;
    

function TScrollSelectionForm.isInForm(point: TGPoint): Boolean;
begin
        if Self.rectangleCollisionUtil.isInside(Self.x, (Self.y) - (Self.halfBorder), (Self.rectangle.getMaxX()) + (Self.border), (Self.rectangle.getMaxY()) + (Self.border), point.getX(), point.getY()) then begin
            Self.logUtil.putF(TStringMaker.Create().append(TStringUtil.getInstance().toString(point)).append(TScrollSelectionForm.INSIDE_FORM).toString(), TJava.Box(Self), TScrollSelectionForm.IS_IN_FORM);
            Exit(True);
        end;
        Exit(False);
end;
    

// throws Exception
function TScrollSelectionForm.paintItem(graphics_: TGraphics; index: Integer; item: TABCustomItem; x: Integer; y: Integer): Integer;
var
  width: Integer;
  height: Integer;
  adjustedBorder: Integer;
begin
        item.paintXY(graphics_, x, y);
        width := item.getMinimumWidth();
        height := item.getMinimumHeight();
        graphics_.setColor(Self.getButtonBasicColor().intValue());
        adjustedBorder := 3;
        graphics_.drawRect(((x) - (Self.halfBorder)) - (adjustedBorder), ((y) - (Self.halfBorder)) - (adjustedBorder), ((width) + (Self.border)) + (Self.adjustedExtraBorder), ((height) + (Self.border)) + (Self.adjustedExtraBorder));
        Exit(Self.scrollSelectionFormFormTypeItemIndexPaintable.paint(graphics_, index, item, x, y));
end;
    

// throws Exception
function TScrollSelectionForm.paintUnselectedItem(graphics_: TGraphics; index: Integer; item: TABCustomItem; x: Integer; y: Integer): Integer;
begin
        graphics_.setColor(Self.getButtonBasicColor().intValue());
        item.paintUnselected(graphics_, x, y);
        Exit(Self.scrollSelectionFormFormTypeItemIndexPaintable.paint(graphics_, index, item, x, y));
end;
    

function TScrollSelectionForm.getDiffX(item: TABCustomItem): Integer;
begin
        Exit(0);
end;
    

function TScrollSelectionForm.getDx: Integer;
begin
        Exit(Self.x);
end;
    

function TScrollSelectionForm.getDy: Integer;
begin
        Exit(Self.y);
end;
    

procedure TScrollSelectionForm.setButtonBasicColor(buttonBasicColor: TBasicColor);
begin
        Self.buttonBasicColor := buttonBasicColor;
end;
    

function TScrollSelectionForm.getButtonBasicColor: TBasicColor;
begin
        Exit(Self.buttonBasicColor);
end;

initialization
  {AB:INITIALIZATION}
  TScrollSelectionForm.NULL_SCROLL_SELECTION_FORM := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  TScrollSelectionForm.NULL_SCROLL_SELECTION_HORIZONTAL_FORM := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  TScrollSelectionForm.INSIDE_FORM := ' inside form';
  TScrollSelectionForm.IS_IN_FORM := 'isInForm';
  TScrollSelectionForm.GET_SELECTED_INDEX := 'getSelectedIndexForPoint';
  {AB:END}

end.

