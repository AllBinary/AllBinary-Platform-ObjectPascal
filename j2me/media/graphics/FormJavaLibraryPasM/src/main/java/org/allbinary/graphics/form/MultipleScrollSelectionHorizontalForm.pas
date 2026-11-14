// Generated Code Do Not Modify
// package org.allbinary.graphics.form
unit MultipleScrollSelectionHorizontalForm;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Rectangle, BasicColor, MyFontProcessor, UpdateMyFontInterface, ABCustomItem, Paintable, ScrollSelectionForm, FormType, ItemIndexPaintable, ItemPaintableFactory;

type
  {AB:TYPES}
  TMultipleScrollSelectionHorizontalForm = class(TScrollSelectionForm, IUpdateMyFontInterface)
  public
    rectPaintable: TPaintable;
    multipleScrollSelectionHorizontalFormTypeItemIndexPaintable: TItemIndexPaintable;
    backgroundColor: Integer;
    myFontProcessor: TMyFontProcessor;
    logged: Boolean;
    fontHeight: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        class function createForm(title: string; items: TArray<TABCustomItem>; rectangle_: TRectangle; formType_: TFormType; border: Integer; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor): TScrollSelectionForm; static;
        constructor Create(title: string; items: TArray<TABCustomItem>; formPaintableFactory: TItemPaintableFactory; border: Integer; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
        procedure fillRect(graphics_: TGraphics); virtual;
        procedure init(rectangle_: TRectangle; formType_: TFormType); virtual;
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        function paintHorizontal(graphics_: TGraphics; index: Integer; item: TABCustomItem; dx: Integer; dy: Integer): Integer; virtual;
        function paintVertical(graphics_: TGraphics; index: Integer; item: TABCustomItem; dx: Integer; dy: Integer): Integer; virtual;
        function getStartIndex: Integer; virtual;
        procedure paint(graphics_: TGraphics); virtual;
  end;

implementation
uses
  MultipleScrollSelectionFormRectPaintable, FormTypeFactory, MultipleScrollSelectionFormVerticalPaintable, MultipleScrollSelectionFormHorizontalPaintable, Font, J2MEUtil, BasicColorFactory, UpdateMyFontProcessor, NullPaintable, PreLogUtil, StringMaker;


{AB:CODE}

procedure TMultipleScrollSelectionHorizontalForm.InitFields;
begin
  Self.rectPaintable := TNullPaintable.getInstance();
  Self.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable := TItemIndexPaintable.getInstance();
  Self.backgroundColor := TBasicColorFactory.getInstance().TRANSPARENT_GREY.intValue();
  Self.myFontProcessor := TUpdateMyFontProcessor.Create(Self);
  Self.logged := False;
  Self.fontHeight := 0;
end;

function TMultipleScrollSelectionHorizontalForm.JavaObject: TObject;
begin
  Result := Self;
end;
    

// throws Exception
class function TMultipleScrollSelectionHorizontalForm.createForm(title: string; items: TArray<TABCustomItem>; rectangle_: TRectangle; formType_: TFormType; border: Integer; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor): TScrollSelectionForm;
var
  scrollSelectionForm_: TScrollSelectionForm;
begin
        scrollSelectionForm_ := TMultipleScrollSelectionHorizontalForm.Create(title, items, TItemPaintableFactory.getInstance(), border, backgroundBasicColor, foregroundBasicColor);
        scrollSelectionForm_.init(rectangle_, formType_);
        Exit(scrollSelectionForm_);
end;
    

constructor TMultipleScrollSelectionHorizontalForm.Create(title: string; items: TArray<TABCustomItem>; formPaintableFactory: TItemPaintableFactory; border: Integer; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
begin
        inherited Create(title, items, formPaintableFactory, border, 3, backgroundBasicColor, foregroundBasicColor);
        InitFields;
        if (TJ2MEUtil.isJ2ME()) or (TJ2MEUtil.isHTML()) then begin
        end else begin
            Self.rectPaintable := TMultipleScrollSelectionFormRectPaintable.Create(Self);
        end;
end;
    

procedure TMultipleScrollSelectionHorizontalForm.fillRect(graphics_: TGraphics);
begin
        graphics_.setColor(Self.backgroundColor);
        graphics_.fillRect(Self.x, Self.y, Self.rectangle.getWidth(), Self.rectangle.getHeight());
end;
    

// throws Exception
procedure TMultipleScrollSelectionHorizontalForm.init(rectangle_: TRectangle; formType_: TFormType);
var
  formTypeFactory_: TFormTypeFactory;
begin
        inherited init(rectangle_, formType_);
        formTypeFactory_ := TFormTypeFactory.getInstance();
        if (formType_) = (formTypeFactory_.HORIZONTAL_FORM) then begin
            Self.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable := TMultipleScrollSelectionFormHorizontalPaintable.Create(Self);
        end else if (formType_) = (formTypeFactory_.VERTICAL_CENTER_FORM) then begin
            Self.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable := TMultipleScrollSelectionFormVerticalPaintable.Create(Self);
        end else if (formType_) = (formTypeFactory_.NULL_FORM_TYPE) then begin
        end else begin
            raise SysUtils.Exception.Create(formTypeFactory_.UNK);
        end;
end;
    

procedure TMultipleScrollSelectionHorizontalForm.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
begin
        font_ := graphics_.getFont();
        Self.fontHeight := font_.getHeight();
        Self.myFontProcessor := TMyFontProcessor.getInstance();
end;
    

// throws Exception
function TMultipleScrollSelectionHorizontalForm.paintHorizontal(graphics_: TGraphics; index: Integer; item: TABCustomItem; dx: Integer; dy: Integer): Integer;
var
  dx2: Integer;
begin
        dx2 := (Self.paintItem(graphics_, index, item, dx, dy)) + (Self.border);
        Self.paintable.paint(graphics_, index, dx, dy);
        dx := dx2;
        Exit(dx);
end;
    

// throws Exception
function TMultipleScrollSelectionHorizontalForm.paintVertical(graphics_: TGraphics; index: Integer; item: TABCustomItem; dx: Integer; dy: Integer): Integer;
begin
        Self.paintItem(graphics_, index, item, dx, dy);
        Self.paintable.paint(graphics_, index, dx, dy);
        Exit(dx);
end;
    

function TMultipleScrollSelectionHorizontalForm.getStartIndex: Integer;
begin
        Exit(Self.getSelectedIndex());
end;
    

procedure TMultipleScrollSelectionHorizontalForm.paint(graphics_: TGraphics);
var
  start: Integer;
  size: Integer;
  dx: Integer;
  dy: Integer;
  item: TABCustomItem;
  index: Integer;
begin
        try
            Self.myFontProcessor.process(graphics_);
            start := Self.getStartIndex();
            size := Self.size();
            dx := Self.x;
            dy := Self.y;
            Self.rectPaintable.paint(graphics_);
            graphics_.drawString(Self.getTitle(), Self.x, (Self.y) - (Self.fontHeight), 0);
            
            for index := start to size - 1 do begin
                item := Self.get(index);
                if (dx) >= (Self.rectangle.getMaxX()) then begin
                    if Self.logged then begin
                    end else begin
                        Self.logged := True;
                        TPreLogUtil.put(TStringMaker.Create().append('painting beyond maxx: ').appendint(Integer(Trunc(Self.rectangle.getMaxX()))).toString(), TJava.Box(Self), Self.canvasStrings.PAINT);
                    end;
                end;
                dx := Self.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable.paint(graphics_, index, item, dx, dy);
            end;
        except
            on e: SysUtils.Exception do begin
            TPreLogUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.canvasStrings.PAINT);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

