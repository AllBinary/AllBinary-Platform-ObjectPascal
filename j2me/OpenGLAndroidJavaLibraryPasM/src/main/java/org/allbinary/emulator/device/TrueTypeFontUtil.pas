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
// package org.allbinary.emulator.device
unit TrueTypeFontUtil;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, Bitmap, Canvas, Paint, Rect, Typeface, ResourceUtil, BasicColor, CanvasStrings, PreResourceImageUtil, OpenGLESImage, LogUtil, PreLogUtil, CommonStrings, AndroidImageInterface, AndroidImmutableImage, TrueTypeFontUtilBase;

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

  // TTF
  TTrueTypeFontUtil = class(TTrueTypeFontUtilBase)
  public
    logUtil: TLogUtil;
    preResourceImageUtil: TPreResourceImageUtil;
    realFontSize: Integer;
    fontImage: TOpenGLESImage;
    class var instance: TTrueTypeFontUtil;
    procedure InitFields;
        class function getInstance: TTrueTypeFontUtil; static;
        constructor Create;
        procedure saveFontAtlasAsFile; virtual;
        function getFontBitmapGL(gl: TGL10; filename: string; cellSize: Integer; basicColor: TBasicColor): TImage; virtual;
        function getFontWidths(filename: string; fontSize: Integer): TArray<Integer>; virtual;
  end;

implementation


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


procedure TTrueTypeFontUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.preResourceImageUtil := TPreResourceImageUtil.getInstance();
  Self.realFontSize := 18;
  Self.fontImage := TOpenGLESImage.NULL_OPENGL_IMAGE;
end;
    

class function TTrueTypeFontUtil.getInstance: TTrueTypeFontUtil;
begin
        Exit(TTrueTypeFontUtil.instance);
end;
    

constructor TTrueTypeFontUtil.Create;
begin
        inherited Create(1);
        InitFields;
end;
    

procedure TTrueTypeFontUtil.saveFontAtlasAsFile;
var
  commonStrings: TCommonStrings;
  file_: TFile;
  path: string;
  fos: TFileOutputStream;
  bitmap: TBitmap;
begin
        try
            commonStrings := TCommonStrings.getInstance();
            file_ := TResourceUtil.getInstance().getContext().getFilesDir();
            path := (file_.getAbsolutePath()) + (TCanvasStrings.getInstance().FONT_ATLAS);
            Self.logUtil.putF(path, Self, commonStrings.CONSTRUCTOR_);
            fos := TFileOutputStream.Create(path);
            bitmap := (IAndroidImageInterface(Pointer(Self.fontImage.openGLBitmap.getImage()))).getBitmap();
            bitmap.compress(TBitmap.CompressFormat.PNG, 100, fos);
        except
            on e: SysUtils.Exception do begin
            commonStrings := TCommonStrings.getInstance();
            TPreLogUtil.putOE(commonStrings.EXCEPTION, Self, commonStrings.EXCEPTION, e);
            end;
        end;
end;
    

function TTrueTypeFontUtil.getFontBitmapGL(gl: TGL10; filename: string; cellSize: Integer; basicColor: TBasicColor): TImage;
var
  cellsPerRow2: Integer;
  cellsPerRow3: Integer;
  cellsPerRow4: Integer;
  cellsPerRow5: Integer;
  cellsPerRow6: Integer;
  cellsPerRow7: Integer;
  typeface: TTypeface;
  textureSize: Integer;
  bitmap: TBitmap;
  canvas: TCanvas;
  paint: TPaint;
  biggestHeight: Integer;
  bounds: TRect;
  x: Integer;
  y: Integer;
  index: Integer;
  image: TImage;
begin
        if (Self.fontImage) = (TOpenGLESImage.NULL_OPENGL_IMAGE) then begin
            cellsPerRow2 := (Self.CELLS_PER_ROW) * (2);
            cellsPerRow3 := (Self.CELLS_PER_ROW) * (3);
            cellsPerRow4 := (Self.CELLS_PER_ROW) * (4);
            cellsPerRow5 := (Self.CELLS_PER_ROW) * (5);
            cellsPerRow6 := (Self.CELLS_PER_ROW) * (6);
            cellsPerRow7 := (Self.CELLS_PER_ROW) * (7);
            typeface := TTypeface.DEFAULT;
            textureSize := Self.getAsTextureSize((Self.CELLS_PER_ROW) * (cellSize));
            bitmap := TBitmap.createBitmap(textureSize, textureSize, TBitmap.Config.ARGB_8888);
            canvas := TCanvas.Create(bitmap);
            paint := TPaint.Create();
            paint.setTypeface(typeface);
            paint.setTextSize(Self.realFontSize);
            paint.setAlpha(Integer(Trunc(basicColor.alpha)));
            paint.setColor(basicColor.intValue());
            biggestHeight := 0;
            bounds := TRect.Create();
            
            
            for index := 0 to Self.size - 1 do begin
                Self.characterArray[0] := Self.pattern.charAt(index);
                paint.getTextBounds(Self.characterArray, 0, 1, bounds);
                Self._characterWidth[index] := bounds.right;
                if ((bounds.bottom) - (bounds.top)) > (biggestHeight) then begin
                    biggestHeight := (bounds.bottom) - (bounds.top);
                end;
                x := (((index) mod (Self.CELLS_PER_ROW))) * (cellSize);
                x := (x) + ((TJava.SignedRightShift(cellSize, 1)));
                x := (x) - ((TJava.SignedRightShift(Self._characterWidth[index], 1)));
                y := 0;
                if (index) >= (Self.CELLS_PER_ROW) then begin
                    y := (y) + (cellSize);
                end;
                if (index) >= (cellsPerRow2) then begin
                    y := (y) + (cellSize);
                end;
                if (index) >= (cellsPerRow3) then begin
                    y := (y) + (cellSize);
                end;
                if (index) >= (cellsPerRow4) then begin
                    y := (y) + (cellSize);
                end;
                if (index) >= (cellsPerRow5) then begin
                    y := (y) + (cellSize);
                end;
                if (index) >= (cellsPerRow6) then begin
                    y := (y) + (cellSize);
                end;
                if (index) >= (cellsPerRow7) then begin
                    y := (y) + (cellSize);
                end;
                y := (y) + (cellSize);
                y := (y) - ((TJava.SignedRightShift(cellSize, 2)));
                canvas.drawText(Self.characterArray, 0, 1, (x) - (3.0), (y) - (6.0), paint);
            end;
            canvas.save();
            image := TAndroidImmutableImage.create(bitmap);
            Self.fontImage := TOpenGLESImage(Self.preResourceImageUtil.encapsulate(image));
            Exit(Self.fontImage);
        end else begin
            Exit(Self.fontImage);
        end;
end;
    

function TTrueTypeFontUtil.getFontWidths(filename: string; fontSize: Integer): TArray<Integer>;
var
  typeface: TTypeface;
  paint: TPaint;
  bounds: TRect;
  index: Integer;
begin
        typeface := TTypeface.DEFAULT;
        paint := TPaint.Create();
        paint.setTypeface(typeface);
        paint.setTextSize(fontSize);
        paint.setARGB(255, 255, 255, 255);
        bounds := TRect.Create();
        for index := 0 to Self.size - 1 do begin
            Self.characterArray[0] := Self.pattern.charAt(index);
            paint.getTextBounds(Self.characterArray, 0, 1, bounds);
            if (index) < (Self.lastCapIndex) then begin
                if (Self.characterArray[0]) = ('1') then begin
                    Self._characterWidth[index] := (bounds.right) + (3);
                end else if (((((((Self.characterArray[0]) = ('J')) or ((Self.characterArray[0]) = ('V'))) or ((Self.characterArray[0]) = ('2'))) or ((Self.characterArray[0]) = ('9'))) or ((Self.characterArray[0]) = ('I'))) or ((Self.characterArray[0]) = ('N'))) or ((Self.characterArray[0]) = ('U')) then begin
                    Self._characterWidth[index] := (bounds.right) + (1);
                end else if ((((Self.characterArray[0]) = ('4')) or ((Self.characterArray[0]) = ('C'))) or ((Self.characterArray[0]) = ('E'))) or ((Self.characterArray[0]) = ('O')) then begin
                    Self._characterWidth[index] := (bounds.right) - (2);
                end else if ((((((Self.characterArray[0]) = ('B')) or ((Self.characterArray[0]) = ('D'))) or ((Self.characterArray[0]) = ('G'))) or ((Self.characterArray[0]) = ('H'))) or ((Self.characterArray[0]) = ('T'))) or ((Self.characterArray[0]) = ('W')) then begin
                    Self._characterWidth[index] := (bounds.right) - (3);
                end else if (((Self.characterArray[0]) = ('A')) or ((Self.characterArray[0]) = ('Q'))) or ((Self.characterArray[0]) = ('R')) then begin
                    Self._characterWidth[index] := (bounds.right) - (5);
                end else if (Self.characterArray[0]) = ('M') then begin
                    Self._characterWidth[index] := (bounds.right) - (6);
                end else if (Self.characterArray[0]) = ('m') then begin
                    Self._characterWidth[index] := (bounds.right) - (8);
                end else begin
                    Self._characterWidth[index] := bounds.right;
                end;
            end else begin
                if (Self.characterArray[0]) = (' ') then begin
                    Self._characterWidth[index] := (bounds.right) + (10);
                end else if ((((((Self.characterArray[0]) = ('l')) or ((Self.characterArray[0]) = ('i'))) or ((Self.characterArray[0]) = ('j'))) or ((Self.characterArray[0]) = ('.'))) or ((Self.characterArray[0]) = ('!'))) or ((Self.characterArray[0]) = ('|')) then begin
                    Self._characterWidth[index] := (bounds.right) + (6);
                end else if ((((Self.characterArray[0]) = ('f')) or ((Self.characterArray[0]) = ('t'))) or ((Self.characterArray[0]) = ('u'))) or ((Self.characterArray[0]) = ('v')) then begin
                    Self._characterWidth[index] := (bounds.right) + (1);
                end else if (Self.characterArray[0]) = ('r') then begin
                    Self._characterWidth[index] := (bounds.right) + (2);
                end else if ((((Self.characterArray[0]) = ('a')) or ((Self.characterArray[0]) = ('b'))) or ((Self.characterArray[0]) = ('g'))) or ((Self.characterArray[0]) = ('u')) then begin
                    Self._characterWidth[index] := (bounds.right) - (1);
                end else if ((Self.characterArray[0]) = ('o')) or ((Self.characterArray[0]) = ('e')) then begin
                    Self._characterWidth[index] := (bounds.right) - (2);
                end else if (Self.characterArray[0]) = ('m') then begin
                    Self._characterWidth[index] := (bounds.right) - (7);
                end else begin
                    Self._characterWidth[index] := bounds.right;
                end;
            end;
        end;
        Self._characterWidth[0] := ((TJava.SignedRightShift(fontSize, 1))) - (2);
        Exit(Self._characterWidth);
end;

initialization
  TTrueTypeFontUtil.instance := TTrueTypeFontUtil.Create();

end.

