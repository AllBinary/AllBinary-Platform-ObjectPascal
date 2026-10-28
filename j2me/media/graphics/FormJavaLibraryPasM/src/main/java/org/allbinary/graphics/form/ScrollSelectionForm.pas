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

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, GPoint, Rectangle, BasicColor, BasicColorFactory, ABCustomItem, NullUtil, LogUtil, StringMaker, StringUtil, RectangleCollisionUtil, CommonLabels, CommonSeps, CommonStrings, PaintableForm, ItemPaintableFactory, ItemIndexPaintable, ItemIndexDx, ItemPaintable, FormType;

type
  TJavaVector<E> = class
  private
    FItems: TArray<E>;
    procedure DeleteAt(const AIndex: Integer);
  public
    constructor Create; overload;
    constructor Create(const AInitialCapacity: Integer); overload;
    function add(const AItem: E): Boolean; overload;
    procedure add(const AIndex: Integer; const AItem: E); overload;
    procedure addElement(const AItem: E);
    function get(const AIndex: Integer): E;
    function elementAt(const AIndex: Integer): E;
    function set_(const AIndex: Integer; const AItem: E): E;
    procedure setElementAt(const AItem: E; const AIndex: Integer);
    function remove(const AIndex: Integer): E; overload;
    function remove(const AObject: TObject): Boolean; overload;
    function removeElement(const AItem: E): Boolean;
    procedure removeElementAt(const AIndex: Integer);
    function contains(const AItem: E): Boolean;
    function size: Integer;
    function isEmpty: Boolean;
    procedure clear;
    function toArray: TArray<E>;
  end;

  TJavaRandom = class
  public
    constructor Create; overload;
    constructor Create(const ASeed: Int64); overload;
    procedure setSeed(const ASeed: Int64);
    function nextInt: Integer; overload;
    function nextInt(const ABound: Integer): Integer; overload;
  end;

  TJava = class
  public
    class function NewArray<T>(const ALength: Integer): TArray<T>; static;
    class function NewArray2<T>(const ALength1, ALength2: Integer): TArray<TArray<T>>; static;
    class function NewArray3<T>(const ALength1, ALength2, ALength3: Integer): TArray<TArray<TArray<T>>>; static;
    class procedure ArrayCopy<T>(const ASource: TArray<T>; const ASourcePos: Integer; var ADestination: TArray<T>; const ADestinationPos, ALength: Integer); overload; static;
    class procedure ArrayCopy(const ASource: TArray<WideChar>; const ASourcePos: Integer; var ADestination: TArray<WideChar>; const ADestinationPos, ALength: Integer); overload; static;
    class procedure ArrayCopy(const ASource: TObject; const ASourcePos: Integer; ADestination: TObject; const ADestinationPos, ALength: Integer); overload; static;
    class procedure GetChars(const ASource: string; const ASourceStart, ASourceEnd: Integer; var ADestination: TArray<WideChar>; const ADestinationStart: Integer); static;
    class function NewString(const AValue: string): string; overload; static;
    class function NewString(const AValue: TArray<WideChar>; const AOffset: Integer = 0; const ACount: Integer = -1): string; overload; static;
    class function NewString(const AValue: TArray<ShortInt>; const AOffset: Integer = 0; const ACount: Integer = -1): string; overload; static;
    class function NewString(const AValue: TArray<ShortInt>; const AEncoding: string): string; overload; static;
    class function GetBytes(const AValue: string): TArray<ShortInt>; static;
    class function ToString(const AValue: string): string; overload; static;
    class function ToString(const AValue: WideChar): string; overload; static;
    class function ToString(const AValue: Boolean): string; overload; static;
    class function ToString(const AValue: Integer): string; overload; static;
    class function ToString(const AValue: Int64): string; overload; static;
    class function ToString(const AValue: Double): string; overload; static;
    class function ToString(const AValue: TObject): string; overload; static;
    class function BoxString(const AValue: string): TObject; static;
    class function UnboxString(const AValue: TObject): string; static;
    class function LongBitsToDouble(const ABits: Int64): Double; static;
    class function IntBitsToFloat(const ABits: Integer): Single; static;
    class function HashCode(const AValue: TObject): Integer; static;
    class function GetProperty(const AName: string): string; static;
    class function FreeMemory: Int64; static;
    class function TotalMemory: Int64; static;
    class function MaxMemory: Int64; static;
    class function SignedRightShift(const AValue, AShift: Integer): Integer; overload; static;
    class function SignedRightShift(const AValue: Int64; const AShift: Integer): Int64; overload; static;
    class procedure Wait(const AValue: TObject; const ATimeoutMillis: Int64); static;
    class procedure MonitorEnter(const AValue: TObject); static;
    class procedure MonitorExit(const AValue: TObject); static;
    class procedure PrintStackTrace(const AException: SysUtils.Exception; const AStream: TStringStream); static;
    class function EnumerationHasMoreElements(const AEnumeration: TObject): Boolean; static;
    class function EnumerationNextElement(const AEnumeration: TObject): TObject; static;
    class function InterfaceToString(const AValue: Pointer): string; static;
    class function Assign<T>(var ADestination: T; const AValue: T): T; static;
    class function IfThen<T>(const ACondition: Boolean; const ATrue, AFalse: T): T; static;
    class function PreInc(var AValue: Integer): Integer; overload; static;
    class function PostInc(var AValue: Integer): Integer; overload; static;
    class function PreDec(var AValue: Integer): Integer; overload; static;
    class function PostDec(var AValue: Integer): Integer; overload; static;
    class function PreInc(var AValue: Int64): Int64; overload; static;
    class function PostInc(var AValue: Int64): Int64; overload; static;
    class function PreDec(var AValue: Int64): Int64; overload; static;
    class function PostDec(var AValue: Int64): Int64; overload; static;
    class procedure Nothing; static;
  end;

  TScrollSelectionFormHorizontalPaintable = class(TItemIndexPaintable)
  public
    scrollSelectionForm: TScrollSelectionForm;
    procedure InitFields;
        constructor Create(scrollSelectionForm: TScrollSelectionForm);
        function paint(graphics: TGraphics; index: Integer; item: TABCustomItem; dx: Integer; dy: Integer): Integer; override;
  end;
  TScrollSelectionFormVerticalPaintable = class(TItemIndexPaintable)
  public
    scrollSelectionForm: TScrollSelectionForm;
    procedure InitFields;
        constructor Create(scrollSelectionForm: TScrollSelectionForm);
        function paint(graphics: TGraphics; index: Integer; item: TABCustomItem; dx: Integer; dy: Integer): Integer; override;
  end;
  TScrollSelectionFormTempHorizontalPaintable = class(TItemIndexPaintable)
  public
    scrollSelectionForm: TScrollSelectionForm;
    procedure InitFields;
        constructor Create(scrollSelectionForm: TScrollSelectionForm);
        function paint(graphics: TGraphics; index: Integer; item: TABCustomItem; dx: Integer; dy: Integer): Integer; override;
  end;
  TScrollSelectionFormHorizontalDx = class(TItemIndexDx)
  public
    scrollSelectionForm: TScrollSelectionForm;
    procedure InitFields;
        constructor Create(multipleScrollSelectionForm: TScrollSelectionForm);
        function getDx(index: Integer; item: TABCustomItem; dx: Integer; dy: Integer): Integer; override;
  end;
  TScrollSelectionFormVericalDx = class(TItemIndexDx)
  public
    scrollSelectionForm: TScrollSelectionForm;
    procedure InitFields;
        constructor Create(multipleScrollSelectionForm: TScrollSelectionForm);
        function getDx(index: Integer; item: TABCustomItem; dx: Integer; dy: Integer): Integer; override;
  end;
  TScrollSelectionFormTempHorizontalDx = class(TItemIndexDx)
  public
    scrollSelectionForm: TScrollSelectionForm;
    procedure InitFields;
        constructor Create(multipleScrollSelectionForm: TScrollSelectionForm);
        function getDx(index: Integer; item: TABCustomItem; dx: Integer; dy: Integer): Integer; override;
  end;
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
        procedure init(rectangle: TRectangle; formType: TFormType); override;
        function paintItemHorizontal(graphics: TGraphics; index: Integer; item: TABCustomItem; x: Integer; y: Integer): Integer; virtual;
        function paintItemVertical(graphics: TGraphics; index: Integer; item: TABCustomItem; x: Integer; y: Integer): Integer; virtual;
        function paintItemTempHorizontal(graphics: TGraphics; index: Integer; item: TABCustomItem; x: Integer; y: Integer): Integer; virtual;
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
        function paintItem(graphics: TGraphics; index: Integer; item: TABCustomItem; x: Integer; y: Integer): Integer; virtual;
        function paintUnselectedItem(graphics: TGraphics; index: Integer; item: TABCustomItem; x: Integer; y: Integer): Integer; virtual;
        function getDiffX(item: TABCustomItem): Integer; virtual;
        function getDx: Integer; virtual;
        function getDy: Integer; virtual;
        procedure setButtonBasicColor(buttonBasicColor: TBasicColor); virtual;
        function getButtonBasicColor: TBasicColor;
  end;

implementation
uses
  FormTypeFactory, ScrollSelectionFormTempHorizontalPaintable, ScrollSelectionFormTempHorizontalDx, ScrollSelectionFormVerticalPaintable, ScrollSelectionFormVericalDx, ScrollSelectionFormHorizontalPaintable, ScrollSelectionFormHorizontalDx;



constructor TJavaVector<E>.Create;
begin
  inherited Create;
end;

constructor TJavaVector<E>.Create(const AInitialCapacity: Integer);
begin
  inherited Create;
end;

procedure TJavaVector<E>.DeleteAt(const AIndex: Integer);
var
  I, LastIndex: Integer;
begin
  LastIndex := Length(FItems) - 1;
  for I := AIndex to LastIndex - 1 do FItems[I] := FItems[I + 1];
  SetLength(FItems, LastIndex);
end;

function TJavaVector<E>.add(const AItem: E): Boolean;
begin
  addElement(AItem);
  Result := True;
end;

procedure TJavaVector<E>.add(const AIndex: Integer; const AItem: E);
var
  I, Count: Integer;
begin
  Count := Length(FItems);
  SetLength(FItems, Count + 1);
  for I := Count downto AIndex + 1 do FItems[I] := FItems[I - 1];
  FItems[AIndex] := AItem;
end;

procedure TJavaVector<E>.addElement(const AItem: E);
var
  I: Integer;
begin
  I := Length(FItems);
  SetLength(FItems, I + 1);
  FItems[I] := AItem;
end;

function TJavaVector<E>.get(const AIndex: Integer): E;
begin
  Result := FItems[AIndex];
end;

function TJavaVector<E>.elementAt(const AIndex: Integer): E;
begin
  Result := FItems[AIndex];
end;

function TJavaVector<E>.set_(const AIndex: Integer; const AItem: E): E;
begin
  Result := FItems[AIndex];
  FItems[AIndex] := AItem;
end;

procedure TJavaVector<E>.setElementAt(const AItem: E; const AIndex: Integer);
begin
  FItems[AIndex] := AItem;
end;

function TJavaVector<E>.remove(const AIndex: Integer): E;
begin
  Result := FItems[AIndex];
  DeleteAt(AIndex);
end;

function TJavaVector<E>.remove(const AObject: TObject): Boolean;
var
  I: Integer;
begin
  for I := 0 to Length(FItems) - 1 do
    if Pointer(FItems[I]) = Pointer(AObject) then begin
      DeleteAt(I);
      Exit(True);
    end;
  Result := False;
end;

function TJavaVector<E>.removeElement(const AItem: E): Boolean;
var
  I: Integer;
begin
  for I := 0 to Length(FItems) - 1 do
    if FItems[I] = AItem then begin
      DeleteAt(I);
      Exit(True);
    end;
  Result := False;
end;

procedure TJavaVector<E>.removeElementAt(const AIndex: Integer);
begin
  DeleteAt(AIndex);
end;

function TJavaVector<E>.contains(const AItem: E): Boolean;
var
  I: Integer;
begin
  for I := 0 to Length(FItems) - 1 do
    if FItems[I] = AItem then Exit(True);
  Result := False;
end;

function TJavaVector<E>.size: Integer;
begin
  Result := Length(FItems);
end;

function TJavaVector<E>.isEmpty: Boolean;
begin
  Result := Length(FItems) = 0;
end;

procedure TJavaVector<E>.clear;
begin
  SetLength(FItems, 0);
end;

function TJavaVector<E>.toArray: TArray<E>;
begin
  Result := Copy(FItems);
end;


constructor TJavaRandom.Create;
begin
  inherited Create;
  Randomize;
end;

constructor TJavaRandom.Create(const ASeed: Int64);
begin
  inherited Create;
  setSeed(ASeed);
end;

procedure TJavaRandom.setSeed(const ASeed: Int64);
begin
  RandSeed := Integer(ASeed xor (ASeed shr 32));
end;

function TJavaRandom.nextInt: Integer;
begin
  Result := Random(High(Integer));
  if Random(2) = 0 then Result := -Result;
end;

function TJavaRandom.nextInt(const ABound: Integer): Integer;
begin
  if ABound <= 0 then raise SysUtils.Exception.Create('bound must be positive');
  Result := Random(ABound);
end;


class function TJava.NewArray<T>(const ALength: Integer): TArray<T>;
begin
  Result := nil;
  SetLength(Result, ALength);
end;

class function TJava.NewArray2<T>(const ALength1, ALength2: Integer): TArray<TArray<T>>;
var
  I: Integer;
begin
  Result := nil;
  SetLength(Result, ALength1);
  for I := 0 to ALength1 - 1 do
    SetLength(Result[I], ALength2);
end;

class function TJava.NewArray3<T>(const ALength1, ALength2, ALength3: Integer): TArray<TArray<TArray<T>>>;
var
  I, J: Integer;
begin
  Result := nil;
  SetLength(Result, ALength1);
  for I := 0 to ALength1 - 1 do begin
    SetLength(Result[I], ALength2);
    for J := 0 to ALength2 - 1 do
      SetLength(Result[I][J], ALength3);
  end;
end;

class procedure TJava.ArrayCopy<T>(const ASource: TArray<T>; const ASourcePos: Integer; var ADestination: TArray<T>; const ADestinationPos, ALength: Integer);
var
  I: Integer;
  Values: TArray<T>;
begin
  Values := nil;
  SetLength(Values, ALength);
  for I := 0 to ALength - 1 do
    Values[I] := ASource[ASourcePos + I];
  for I := 0 to ALength - 1 do
    ADestination[ADestinationPos + I] := Values[I];
end;

class procedure TJava.ArrayCopy(const ASource: TArray<WideChar>; const ASourcePos: Integer; var ADestination: TArray<WideChar>; const ADestinationPos, ALength: Integer);
var
  I: Integer;
  Values: TArray<WideChar>;
begin
  Values := nil;
  SetLength(Values, ALength);
  for I := 0 to ALength - 1 do Values[I] := ASource[ASourcePos + I];
  for I := 0 to ALength - 1 do ADestination[ADestinationPos + I] := Values[I];
end;

class procedure TJava.ArrayCopy(const ASource: TObject; const ASourcePos: Integer; ADestination: TObject; const ADestinationPos, ALength: Integer);
begin
  { Java Object-erased arrays cannot be inspected without their element type. }
end;

class procedure TJava.GetChars(const ASource: string; const ASourceStart, ASourceEnd: Integer; var ADestination: TArray<WideChar>; const ADestinationStart: Integer);
var
  I: Integer;
begin
  for I := ASourceStart to ASourceEnd - 1 do
    ADestination[ADestinationStart + I - ASourceStart] := ASource[I + 1];
end;

class function TJava.NewString(const AValue: string): string;
begin
  Result := AValue;
end;

class function TJava.NewString(const AValue: TArray<WideChar>; const AOffset: Integer; const ACount: Integer): string;
var
  I, Count: Integer;
begin
  Count := ACount;
  if Count < 0 then Count := Length(AValue) - AOffset;
  SetLength(Result, Count);
  for I := 0 to Count - 1 do Result[I + 1] := AValue[AOffset + I];
end;

class function TJava.NewString(const AValue: TArray<ShortInt>; const AOffset: Integer; const ACount: Integer): string;
var
  I, Count: Integer;
begin
  Count := ACount;
  if Count < 0 then Count := Length(AValue) - AOffset;
  SetLength(Result, Count);
  for I := 0 to Count - 1 do Result[I + 1] := Char(Byte(AValue[AOffset + I]));
end;

class function TJava.NewString(const AValue: TArray<ShortInt>; const AEncoding: string): string;
begin
  Result := NewString(AValue, 0, Length(AValue));
end;

class function TJava.GetBytes(const AValue: string): TArray<ShortInt>;
var
  I: Integer;
begin
  Result := nil;
  SetLength(Result, Length(AValue));
  for I := 1 to Length(AValue) do
    Result[I - 1] := ShortInt(Byte(AValue[I]));
end;

class function TJava.ToString(const AValue: string): string;
begin
  Result := AValue;
end;

class function TJava.ToString(const AValue: WideChar): string;
begin
  Result := AValue;
end;

class function TJava.ToString(const AValue: Boolean): string;
begin
  Result := BoolToStr(AValue, True);
end;

class function TJava.ToString(const AValue: Integer): string;
begin
  Result := IntToStr(AValue);
end;

class function TJava.ToString(const AValue: Int64): string;
begin
  Result := IntToStr(AValue);
end;

class function TJava.ToString(const AValue: Double): string;
begin
  Result := FloatToStr(AValue);
end;

class function TJava.ToString(const AValue: TObject): string;
begin
  if AValue = nil then Result := 'null' else if AValue is TStringStream then Result := TStringStream(AValue).DataString else Result := AValue.ClassName;
end;

class function TJava.BoxString(const AValue: string): TObject;
begin
  Result := TStringStream.Create(AValue);
end;

class function TJava.UnboxString(const AValue: TObject): string;
begin
  if AValue = nil then Result := '' else if AValue is TStringStream then Result := TStringStream(AValue).DataString else Result := AValue.ClassName;
end;

class function TJava.GetProperty(const AName: string): string;
begin
  Result := GetEnvironmentVariable(AName);
  if AName = 'user.home' then begin
    Result := GetEnvironmentVariable('USERPROFILE');
    if Result = '' then Result := GetEnvironmentVariable('HOME');
  end else if AName = 'os.name' then begin
    Result := GetEnvironmentVariable('OS');
    if Result = '' then Result := {$IFDEF WINDOWS}'Windows'{$ELSE}'Unix'{$ENDIF};
  end else if AName = 'os.arch' then begin
    Result := GetEnvironmentVariable('PROCESSOR_ARCHITECTURE');
    if Result = '' then Result := {$IFDEF CPU64}'64-bit'{$ELSE}'32-bit'{$ENDIF};
  end else if AName = 'os.version' then
    Result := GetEnvironmentVariable('OS');
end;

class function TJava.FreeMemory: Int64;
var
  HeapStatus: THeapStatus;
begin
  HeapStatus := GetHeapStatus;
  Result := HeapStatus.TotalFree;
end;

class function TJava.TotalMemory: Int64;
var
  HeapStatus: THeapStatus;
begin
  HeapStatus := GetHeapStatus;
  Result := Int64(HeapStatus.TotalAllocated) + Int64(HeapStatus.TotalFree);
end;

class function TJava.MaxMemory: Int64;
var
  HeapStatus: THeapStatus;
begin
  HeapStatus := GetHeapStatus;
  Result := HeapStatus.TotalAddrSpace;
end;

class function TJava.LongBitsToDouble(const ABits: Int64): Double;
begin
  Result := 0.0;
  Move(ABits, Result, SizeOf(Result));
end;

class function TJava.IntBitsToFloat(const ABits: Integer): Single;
begin
  Result := 0.0;
  Move(ABits, Result, SizeOf(Result));
end;

class function TJava.HashCode(const AValue: TObject): Integer;
begin
  if AValue = nil then Result := 0 else Result := Integer(PtrUInt(AValue));
end;

class function TJava.SignedRightShift(const AValue, AShift: Integer): Integer;
var
  Shift: Integer;
begin
  Shift := AShift and 31;
  if Shift = 0 then Result := AValue
  else if AValue >= 0 then Result := AValue shr Shift
  else Result := not (not AValue shr Shift);
end;

class function TJava.SignedRightShift(const AValue: Int64; const AShift: Integer): Int64;
var
  Shift: Integer;
begin
  Shift := AShift and 63;
  if Shift = 0 then Result := AValue
  else if AValue >= 0 then Result := AValue shr Shift
  else Result := not (not AValue shr Shift);
end;

class procedure TJava.Wait(const AValue: TObject; const ATimeoutMillis: Int64);
begin
  if ATimeoutMillis > 0 then Sleep(Cardinal(ATimeoutMillis));
end;

class procedure TJava.MonitorEnter(const AValue: TObject);
begin
  { FPC has no TObject monitor equivalent. }
end;

class procedure TJava.MonitorExit(const AValue: TObject);
begin
end;

class procedure TJava.PrintStackTrace(const AException: SysUtils.Exception; const AStream: TStringStream);
begin
  if (AException <> nil) and (AStream <> nil) then
    AStream.WriteString(AException.ClassName + ': ' + AException.Message);
end;

class function TJava.EnumerationHasMoreElements(const AEnumeration: TObject): Boolean;
begin
  Result := (AEnumeration is TList) and (TList(AEnumeration).Count > 0);
end;

class function TJava.EnumerationNextElement(const AEnumeration: TObject): TObject;
var
  List: TList;
begin
  Result := nil;
  if not (AEnumeration is TList) then Exit;
  List := TList(AEnumeration);
  if List.Count = 0 then Exit;
  Result := TObject(List[0]);
  List.Delete(0);
end;

class function TJava.InterfaceToString(const AValue: Pointer): string;
begin
  if AValue = nil then Result := 'null' else Result := 'interface';
end;

class function TJava.Assign<T>(var ADestination: T; const AValue: T): T;
begin
  ADestination := AValue;
  Result := AValue;
end;

class function TJava.IfThen<T>(const ACondition: Boolean; const ATrue, AFalse: T): T;
begin
  if ACondition then Result := ATrue else Result := AFalse;
end;

class function TJava.PreInc(var AValue: Integer): Integer;
begin
  Inc(AValue); Result := AValue;
end;
class function TJava.PostInc(var AValue: Integer): Integer;
begin
  Result := AValue; Inc(AValue);
end;
class function TJava.PreDec(var AValue: Integer): Integer;
begin
  Dec(AValue); Result := AValue;
end;
class function TJava.PostDec(var AValue: Integer): Integer;
begin
  Result := AValue; Dec(AValue);
end;

class function TJava.PreInc(var AValue: Int64): Int64;
begin
  Inc(AValue); Result := AValue;
end;
class function TJava.PostInc(var AValue: Int64): Int64;
begin
  Result := AValue; Inc(AValue);
end;
class function TJava.PreDec(var AValue: Int64): Int64;
begin
  Dec(AValue); Result := AValue;
end;
class function TJava.PostDec(var AValue: Int64): Int64;
begin
  Result := AValue; Dec(AValue);
end;

class procedure TJava.Nothing;
begin
end;


procedure TScrollSelectionFormHorizontalPaintable.InitFields;
begin
  
end;
    

    constructor TScrollSelectionFormHorizontalPaintable.Create(scrollSelectionForm: TScrollSelectionForm);
begin
        inherited Create;
        InitFields;
            Self.scrollSelectionForm := scrollSelectionForm;
end;
    

    // throws Exception
    function TScrollSelectionFormHorizontalPaintable.paint(graphics: TGraphics; index: Integer; item: TABCustomItem; dx: Integer; dy: Integer): Integer;
begin
            Exit(Self.scrollSelectionForm.paintItemHorizontal(graphics, index, item, dx, dy));
end;

procedure TScrollSelectionFormVerticalPaintable.InitFields;
begin
  
end;
    

    constructor TScrollSelectionFormVerticalPaintable.Create(scrollSelectionForm: TScrollSelectionForm);
begin
        inherited Create;
        InitFields;
            Self.scrollSelectionForm := scrollSelectionForm;
end;
    

    // throws Exception
    function TScrollSelectionFormVerticalPaintable.paint(graphics: TGraphics; index: Integer; item: TABCustomItem; dx: Integer; dy: Integer): Integer;
begin
            Exit(Self.scrollSelectionForm.paintItemVertical(graphics, index, item, dx, dy));
end;

procedure TScrollSelectionFormTempHorizontalPaintable.InitFields;
begin
  
end;
    

    constructor TScrollSelectionFormTempHorizontalPaintable.Create(scrollSelectionForm: TScrollSelectionForm);
begin
        inherited Create;
        InitFields;
            Self.scrollSelectionForm := scrollSelectionForm;
end;
    

    // throws Exception
    function TScrollSelectionFormTempHorizontalPaintable.paint(graphics: TGraphics; index: Integer; item: TABCustomItem; dx: Integer; dy: Integer): Integer;
begin
            Exit(Self.scrollSelectionForm.paintItemTempHorizontal(graphics, index, item, dx, dy));
end;

procedure TScrollSelectionFormHorizontalDx.InitFields;
begin
  
end;
    

    constructor TScrollSelectionFormHorizontalDx.Create(multipleScrollSelectionForm: TScrollSelectionForm);
begin
        inherited Create;
        InitFields;
            Self.scrollSelectionForm := multipleScrollSelectionForm;
end;
    

    // throws Exception
    function TScrollSelectionFormHorizontalDx.getDx(index: Integer; item: TABCustomItem; dx: Integer; dy: Integer): Integer;
begin
            Exit(Self.scrollSelectionForm.getSelectedIndexForPointHorizontalDx(index, item, dx, dy));
end;

procedure TScrollSelectionFormVericalDx.InitFields;
begin
  
end;
    

    constructor TScrollSelectionFormVericalDx.Create(multipleScrollSelectionForm: TScrollSelectionForm);
begin
        inherited Create;
        InitFields;
            Self.scrollSelectionForm := multipleScrollSelectionForm;
end;
    

    // throws Exception
    function TScrollSelectionFormVericalDx.getDx(index: Integer; item: TABCustomItem; dx: Integer; dy: Integer): Integer;
begin
            Exit(Self.scrollSelectionForm.getSelectedIndexForPointVerticalDx(index, item, dx, dy));
end;

procedure TScrollSelectionFormTempHorizontalDx.InitFields;
begin
  
end;
    

    constructor TScrollSelectionFormTempHorizontalDx.Create(multipleScrollSelectionForm: TScrollSelectionForm);
begin
        inherited Create;
        InitFields;
            Self.scrollSelectionForm := multipleScrollSelectionForm;
end;
    

    // throws Exception
    function TScrollSelectionFormTempHorizontalDx.getDx(index: Integer; item: TABCustomItem; dx: Integer; dy: Integer): Integer;
begin
            Exit(Self.scrollSelectionForm.getSelectedIndexForPointTempHorizontalDx(index, item, dx, dy));
end;

procedure TScrollSelectionForm.InitFields;
begin
  Self.rectangleCollisionUtil := TRectangleCollisionUtil.getInstance();
  
  
  
  Self.scrollSelectionFormFormTypeItemIndexPaintable := TItemIndexPaintable.getInstance();
  Self.formTypeItemIndexDx := TItemIndexDx.getInstance();
  Self.paintable := TItemPaintableFactory.getInstance();
  
end;
    

class function TScrollSelectionForm.createForm(title: string; items: TArray<TABCustomItem>; formPaintableFactory: TItemPaintableFactory; border: Integer; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor): TPaintableForm;
var
  commonStrings: TCommonStrings;
  logUtil: TLogUtil;
begin
        try
            if (formPaintableFactory) = (TItemPaintableFactory.getInstance()) then begin
                Exit(TScrollSelectionForm.Create(title, items, formPaintableFactory, border, -3, backgroundBasicColor, foregroundBasicColor));
            end else begin
                commonStrings := TCommonStrings.getInstance();
                logUtil := TLogUtil.getInstance();
                logUtil.putF(commonStrings.EXCEPTION, logUtil, commonStrings.EXCEPTION);
                Exit(TPaintableForm.getNullPaintableForm());
            end;
        except
            on e: SysUtils.Exception do begin
            commonStrings := TCommonStrings.getInstance();
            logUtil := TLogUtil.getInstance();
            logUtil.put(commonStrings.EXCEPTION, logUtil, commonStrings.EXCEPTION, e);
            Exit(TPaintableForm.getNullPaintableForm());
            end;
        end;
end;
    

class function TScrollSelectionForm.getNullScrollSelectionForm: TScrollSelectionForm;
begin
        if (TScrollSelectionForm.NULL_SCROLL_SELECTION_FORM) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TScrollSelectionForm.NULL_SCROLL_SELECTION_FORM := TScrollSelectionForm.createForm(TStringUtil.getInstance().EMPTY_STRING, TJava.NewArray<TABCustomItem>(0), TItemPaintableFactory.getInstance(), 0, TBasicColorFactory.getInstance().BLACK, TBasicColorFactory.getInstance().WHITE);
        end;
        Exit(TScrollSelectionForm(TScrollSelectionForm.NULL_SCROLL_SELECTION_FORM));
end;
    

class function TScrollSelectionForm.getNullScrollSelectionFormHorizontal: TScrollSelectionForm;
begin
        if (TScrollSelectionForm.NULL_SCROLL_SELECTION_HORIZONTAL_FORM) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TScrollSelectionForm.NULL_SCROLL_SELECTION_HORIZONTAL_FORM := TScrollSelectionForm.createForm(TStringUtil.getInstance().EMPTY_STRING, TJava.NewArray<TABCustomItem>(0), TItemPaintableFactory.getInstance(), 0, TBasicColorFactory.getInstance().BLACK, TBasicColorFactory.getInstance().WHITE);
        end;
        Exit(TScrollSelectionForm(TScrollSelectionForm.NULL_SCROLL_SELECTION_HORIZONTAL_FORM));
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
procedure TScrollSelectionForm.init(rectangle: TRectangle; formType: TFormType);
var
  formTypeFactory: TFormTypeFactory;
begin
        inherited init(rectangle, formType);
        formTypeFactory := TFormTypeFactory.getInstance();
        if (formType) = (formTypeFactory.HORIZONTAL_FORM) then begin
            Self.scrollSelectionFormFormTypeItemIndexPaintable := TScrollSelectionFormHorizontalPaintable.Create(Self);
            Self.formTypeItemIndexDx := TScrollSelectionFormHorizontalDx.Create(Self);
        end else if (formType) = (formTypeFactory.VERTICAL_CENTER_FORM) then begin
            Self.scrollSelectionFormFormTypeItemIndexPaintable := TScrollSelectionFormVerticalPaintable.Create(Self);
            Self.formTypeItemIndexDx := TScrollSelectionFormVericalDx.Create(Self);
        end else if (formType) = (formTypeFactory.TEMP_HORIZONTAL_FORM) then begin
            Self.scrollSelectionFormFormTypeItemIndexPaintable := TScrollSelectionFormTempHorizontalPaintable.Create(Self);
            Self.formTypeItemIndexDx := TScrollSelectionFormTempHorizontalDx.Create(Self);
        end else if (formType) = (formTypeFactory.NULL_FORM_TYPE) then begin
        end else begin
            raise SysUtils.Exception.Create(formTypeFactory.UNK);
        end;
end;
    

function TScrollSelectionForm.paintItemHorizontal(graphics: TGraphics; index: Integer; item: TABCustomItem; x: Integer; y: Integer): Integer;
var
  width: Integer;
begin
        width := item.getMinimumWidth();
        Exit(((x) + (width)) + (Self.border));
end;
    

function TScrollSelectionForm.paintItemVertical(graphics: TGraphics; index: Integer; item: TABCustomItem; x: Integer; y: Integer): Integer;
var
  height: Integer;
begin
        height := item.getMinimumHeight();
        Exit(((y) + (height)) + (Self.border));
end;
    

function TScrollSelectionForm.paintItemTempHorizontal(graphics: TGraphics; index: Integer; item: TABCustomItem; x: Integer; y: Integer): Integer;
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
            nextItem := TABCustomItem(Self.get(index));
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
  formTypeFactory: TFormTypeFactory;
  commonLabels: TCommonLabels;
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
        formTypeFactory := TFormTypeFactory.getInstance();
        commonLabels := TCommonLabels.getInstance();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(commonLabels.START_LABEL);
        stringBuffer.appendint(start);
        stringBuffer.append(TCommonSeps.getInstance().SPACE);
        stringBuffer.append(commonLabels.TOTAL_LABEL);
        stringBuffer.appendint(size);
        Self.logUtil.putF(stringBuffer.toString(), Self, TScrollSelectionForm.GET_SELECTED_INDEX);
        
        
        
        
        for index := start to size - 1 do begin
            item := Self.get(index);
            width := item.getMinimumWidth();
            height := item.getMinimumHeight();
            diffX := Self.formTypeItemIndexDx.getDx(index, item, dx, dy);
            if Self.rectangleCollisionUtil.isInside(diffX, (dy) - (Self.halfBorder), ((diffX) + (width)) + (Self.border), (((dy) + (height)) + (Self.halfBorder)) + (1), point.getX(), point.getY()) then begin
                stringBuffer.delete_(0, stringBuffer.length());
                stringBuffer.append(commonLabels.ITEM_LABEL);
                stringBuffer.append(item.getLabel());
                stringBuffer.append(TCommonSeps.getInstance().SPACE);
                stringBuffer.append(commonLabels.INDEX_LABEL);
                stringBuffer.appendint(index);
                Self.logUtil.putF(stringBuffer.toString(), Self, TScrollSelectionForm.GET_SELECTED_INDEX);
                Exit(index);
            end;
            if (Self.formType) = (formTypeFactory.HORIZONTAL_FORM) then begin
                dx := ((dx) + (width)) + (Self.border);
                if (dx) > (Self.rectangle.getMaxX()) then begin
                    Break;
                end;
            end else if (Self.formType) = (formTypeFactory.VERTICAL_CENTER_FORM) then begin
                dy := ((dy) + (height)) + (Self.border);
                if (dy) > (Self.rectangle.getMaxY()) then begin
                    Break;
                end;
            end else if (Self.formType) = (formTypeFactory.NULL_FORM_TYPE) then begin
            end else begin
                raise SysUtils.Exception.Create(formTypeFactory.UNK);
            end;
        end;
        Exit(-1);
end;
    

// throws Exception
function TScrollSelectionForm.processInputKey(gameKeyCode: Integer): Integer;
var
  formTypeFactory: TFormTypeFactory;
  index: Integer;
  max: Integer;
begin
        formTypeFactory := TFormTypeFactory.getInstance();
        if (Self.size()) = (0) then begin
            Exit(-1);
        end;
        index := Self.getSelectedIndex();
        if ((Self.formType) = (formTypeFactory.HORIZONTAL_FORM)) or ((Self.formType) = (formTypeFactory.TEMP_HORIZONTAL_FORM)) then begin
            if (gameKeyCode) = (TCanvas.RIGHT) then begin
                Inc(index);
            end else if (gameKeyCode) = (TCanvas.LEFT) then begin
                Dec(index);
            end;
        end else if (Self.formType) = (formTypeFactory.VERTICAL_CENTER_FORM) then begin
            if (gameKeyCode) = (TCanvas.DOWN) then begin
                Inc(index);
            end else if (gameKeyCode) = (TCanvas.UP) then begin
                Dec(index);
            end;
        end else if (Self.formType) = (formTypeFactory.NULL_FORM_TYPE) then begin
        end else begin
            raise SysUtils.Exception.Create(formTypeFactory.UNK);
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
            Self.logUtil.putF(TStringMaker.Create().append(TStringUtil.getInstance().toString(point)).append(TScrollSelectionForm.INSIDE_FORM).toString(), Self, TScrollSelectionForm.IS_IN_FORM);
            Exit(True);
        end;
        Exit(False);
end;
    

// throws Exception
function TScrollSelectionForm.paintItem(graphics: TGraphics; index: Integer; item: TABCustomItem; x: Integer; y: Integer): Integer;
var
  width: Integer;
  height: Integer;
  adjustedBorder: Integer;
begin
        item.paintXY(graphics, x, y);
        width := item.getMinimumWidth();
        height := item.getMinimumHeight();
        graphics.setColor(Self.getButtonBasicColor().intValue());
        adjustedBorder := 3;
        graphics.drawRect(((x) - (Self.halfBorder)) - (adjustedBorder), ((y) - (Self.halfBorder)) - (adjustedBorder), ((width) + (Self.border)) + (Self.adjustedExtraBorder), ((height) + (Self.border)) + (Self.adjustedExtraBorder));
        Exit(Self.scrollSelectionFormFormTypeItemIndexPaintable.paint(graphics, index, item, x, y));
end;
    

// throws Exception
function TScrollSelectionForm.paintUnselectedItem(graphics: TGraphics; index: Integer; item: TABCustomItem; x: Integer; y: Integer): Integer;
begin
        graphics.setColor(Self.getButtonBasicColor().intValue());
        item.paintUnselected(graphics, x, y);
        Exit(Self.scrollSelectionFormFormTypeItemIndexPaintable.paint(graphics, index, item, x, y));
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
  TScrollSelectionForm.NULL_SCROLL_SELECTION_FORM := TNullUtil.getInstance().NULL_OBJECT;
  TScrollSelectionForm.NULL_SCROLL_SELECTION_HORIZONTAL_FORM := TNullUtil.getInstance().NULL_OBJECT;
  TScrollSelectionForm.INSIDE_FORM := ' inside form';
  TScrollSelectionForm.IS_IN_FORM := 'isInForm';
  TScrollSelectionForm.GET_SELECTED_INDEX := 'getSelectedIndexForPoint';

end.

