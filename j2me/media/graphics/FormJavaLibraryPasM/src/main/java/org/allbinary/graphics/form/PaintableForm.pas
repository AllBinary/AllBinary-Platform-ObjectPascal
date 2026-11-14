// Generated Code Do Not Modify
// package org.allbinary.graphics.form
unit PaintableForm;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Rectangle, BasicColor, CanvasStrings, ABCustomItem, FormType, ABCustomForm;

type
  {AB:TYPES}
  TPaintableForm = class(TABCustomForm)
  public
    canvasStrings: TCanvasStrings;
    rectangle: TRectangle;
    x: Integer;
    y: Integer;
    formType: TFormType;
    class var NULL_PAINTABLE_FORM: TObject;
    procedure InitFields;
        class function getNullPaintableForm: TPaintableForm; static;
        constructor Create(title: string; items: TArray<TABCustomItem>; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
        procedure init(rectangle_: TRectangle; formType_: TFormType); virtual;
        function getWidth: Integer; override;
  end;

implementation
uses
  FormTypeFactory, GPoint, RectangleFactory, BasicColorFactory, NullUtil, StringUtil;


{AB:CODE}

procedure TPaintableForm.InitFields;
begin
  Self.canvasStrings := TCanvasStrings.getInstance();
  Self.rectangle := TRectangleFactory.SINGLETON;
  
  
  Self.formType := TFormTypeFactory.getInstance().NULL_FORM_TYPE;
end;
    

class function TPaintableForm.getNullPaintableForm: TPaintableForm;
begin
        if (TPaintableForm.NULL_PAINTABLE_FORM) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TPaintableForm.NULL_PAINTABLE_FORM := TPaintableForm.Create(TStringUtil.getInstance().EMPTY_STRING, nil, TBasicColorFactory.getInstance().BLACK, TBasicColorFactory.getInstance().WHITE);
        end;
        Exit(TPaintableForm(TJava.ToObject(TPaintableForm.NULL_PAINTABLE_FORM)));
end;
    

constructor TPaintableForm.Create(title: string; items: TArray<TABCustomItem>; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
begin
        inherited Create(title, items, backgroundBasicColor, foregroundBasicColor);
        InitFields;
        Self.setSelectedIndex(0);
end;
    

// throws Exception
procedure TPaintableForm.init(rectangle_: TRectangle; formType_: TFormType);
var
  point: TGPoint;
begin
        Self.rectangle := rectangle_;
        point := Self.rectangle.getPoint();
        Self.x := point.getX();
        Self.y := point.getY();
        Self.formType := formType_;
end;
    

function TPaintableForm.getWidth: Integer;
begin
        Exit(Self.rectangle.getWidth());
end;

initialization
  {AB:INITIALIZATION}
  TPaintableForm.NULL_PAINTABLE_FORM := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

