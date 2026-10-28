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
// package org.allbinary.graphics.j2me.workarea.tools
unit ToolJPanel;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, MouseEvent, JButton, JList, JPanel;

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

  TToolJPanel = class(TJPanel)
  public
    arcJButton: TJButton;
    charJButton: TJButton;
    colorJList: TJList;
    colorJPanel: TJPanel;
    dottedArcJButton: TJButton;
    dottedFillArcJButton: TJButton;
    dottedFillRectJButton: TJButton;
    dottedFillRountRectJButton: TJButton;
    dottedLineJButton: TJButton;
    dottedRectButton: TJButton;
    fillArcJButton: TJButton;
    fillRectJButton: TJButton;
    fillRoundRectJButton: TJButton;
    imageJButton: TJButton;
    lineJButton: TJButton;
    rectJButton: TJButton;
    roundRectJButton: TJButton;
    stringJButton: TJButton;
    procedure InitFields;
        constructor Create;
        procedure initComponents;
        procedure dottedFillRountRectJButtonMousePressed(evt: TMouseEvent);
        procedure dottedFillArcJButtonMousePressed(evt: TMouseEvent);
        procedure dottedFillRectJButtonMousePressed(evt: TMouseEvent);
        procedure dottedArcJButtonMousePressed(evt: TMouseEvent);
        procedure dottedRectButtonMousePressed(evt: TMouseEvent);
        procedure dottedLineJButtonMousePressed(evt: TMouseEvent);
        procedure fillRoundRectJButtonMousePressed(evt: TMouseEvent);
        procedure fillRectJButtonMousePressed(evt: TMouseEvent);
        procedure fillArcJButtonMousePressed(evt: TMouseEvent);
        procedure imageJButtonMousePressed(evt: TMouseEvent);
        procedure roundRectJButtonMousePressed(evt: TMouseEvent);
        procedure charJButtonMousePressed(evt: TMouseEvent);
        procedure stringJButtonMousePressed(evt: TMouseEvent);
        procedure arcJButtonMousePressed(evt: TMouseEvent);
        procedure rectJButtonMouseClicked(evt: TMouseEvent);
        procedure lineJButtonMouseClicked(evt: TMouseEvent);
  end;

implementation
uses
  GridLayout, Font, LinesGraphicItem, MouseAdapter, ToolFactory;



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


procedure TToolJPanel.InitFields;
begin
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end;
    

constructor TToolJPanel.Create;
begin
    inherited Create;
    InitFields;
        Self.initComponents();
end;
    

procedure TToolJPanel.initComponents;
begin
        Self.lineJButton := TJButton.Create();
        Self.rectJButton := TJButton.Create();
        Self.arcJButton := TJButton.Create();
        Self.stringJButton := TJButton.Create();
        Self.charJButton := TJButton.Create();
        Self.roundRectJButton := TJButton.Create();
        Self.imageJButton := TJButton.Create();
        Self.fillArcJButton := TJButton.Create();
        Self.fillRectJButton := TJButton.Create();
        Self.fillRoundRectJButton := TJButton.Create();
        Self.dottedLineJButton := TJButton.Create();
        Self.dottedRectButton := TJButton.Create();
        Self.dottedArcJButton := TJButton.Create();
        Self.dottedFillRectJButton := TJButton.Create();
        Self.dottedFillArcJButton := TJButton.Create();
        Self.dottedFillRountRectJButton := TJButton.Create();
        Self.colorJPanel := TJPanel.Create();
        Self.colorJList := TJList.Create();
        Self.setLayout(TGridLayout.Create(17, 1));
        Self.lineJButton.setFont(TFont.Create('Dialog', 0, 10));
        Self.lineJButton.setText(TLinesGraphicItem.getStaticName());
        Self.lineJButton.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mouseClicked(evt: TMouseEvent);
begin
                Self.lineJButtonMouseClicked(evt);
end;
*));
        Self.add(Self.lineJButton);
        Self.rectJButton.setFont(TFont.Create('Dialog', 0, 10));
        Self.rectJButton.setText('Rect');
        Self.rectJButton.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mouseClicked(evt: TMouseEvent);
begin
                Self.rectJButtonMouseClicked(evt);
end;
*));
        Self.add(Self.rectJButton);
        Self.arcJButton.setFont(TFont.Create('Dialog', 0, 10));
        Self.arcJButton.setText('Arc');
        Self.arcJButton.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.arcJButtonMousePressed(evt);
end;
*));
        Self.add(Self.arcJButton);
        Self.stringJButton.setFont(TFont.Create('Dialog', 0, 10));
        Self.stringJButton.setText('String');
        Self.stringJButton.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.stringJButtonMousePressed(evt);
end;
*));
        Self.add(Self.stringJButton);
        Self.charJButton.setFont(TFont.Create('Dialog', 0, 10));
        Self.charJButton.setText('Char');
        Self.charJButton.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.charJButtonMousePressed(evt);
end;
*));
        Self.add(Self.charJButton);
        Self.roundRectJButton.setFont(TFont.Create('Dialog', 0, 10));
        Self.roundRectJButton.setText('Round Rect');
        Self.roundRectJButton.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.roundRectJButtonMousePressed(evt);
end;
*));
        Self.add(Self.roundRectJButton);
        Self.imageJButton.setFont(TFont.Create('Dialog', 0, 10));
        Self.imageJButton.setText('Image');
        Self.imageJButton.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.imageJButtonMousePressed(evt);
end;
*));
        Self.add(Self.imageJButton);
        Self.fillArcJButton.setFont(TFont.Create('Dialog', 0, 10));
        Self.fillArcJButton.setText('Fill Arc');
        Self.fillArcJButton.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.fillArcJButtonMousePressed(evt);
end;
*));
        Self.add(Self.fillArcJButton);
        Self.fillRectJButton.setFont(TFont.Create('Dialog', 0, 10));
        Self.fillRectJButton.setText('Fill Rect');
        Self.fillRectJButton.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.fillRectJButtonMousePressed(evt);
end;
*));
        Self.add(Self.fillRectJButton);
        Self.fillRoundRectJButton.setFont(TFont.Create('Dialog', 0, 10));
        Self.fillRoundRectJButton.setText('Fill Rnd Rect');
        Self.fillRoundRectJButton.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.fillRoundRectJButtonMousePressed(evt);
end;
*));
        Self.add(Self.fillRoundRectJButton);
        Self.dottedLineJButton.setFont(TFont.Create('Dialog', 0, 10));
        Self.dottedLineJButton.setText('Dot Line');
        Self.dottedLineJButton.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.dottedLineJButtonMousePressed(evt);
end;
*));
        Self.add(Self.dottedLineJButton);
        Self.dottedRectButton.setFont(TFont.Create('Dialog', 0, 10));
        Self.dottedRectButton.setText('Dot Rect');
        Self.dottedRectButton.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.dottedRectButtonMousePressed(evt);
end;
*));
        Self.add(Self.dottedRectButton);
        Self.dottedArcJButton.setFont(TFont.Create('Dialog', 0, 10));
        Self.dottedArcJButton.setText('Dot Arc');
        Self.dottedArcJButton.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.dottedArcJButtonMousePressed(evt);
end;
*));
        Self.add(Self.dottedArcJButton);
        Self.dottedFillRectJButton.setFont(TFont.Create('Dialog', 0, 10));
        Self.dottedFillRectJButton.setText('Dot Fill Rect');
        Self.dottedFillRectJButton.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.dottedFillRectJButtonMousePressed(evt);
end;
*));
        Self.add(Self.dottedFillRectJButton);
        Self.dottedFillArcJButton.setFont(TFont.Create('Dialog', 0, 10));
        Self.dottedFillArcJButton.setText('Dot Fill Arc');
        Self.dottedFillArcJButton.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.dottedFillArcJButtonMousePressed(evt);
end;
*));
        Self.add(Self.dottedFillArcJButton);
        Self.dottedFillRountRectJButton.setFont(TFont.Create('Dialog', 0, 10));
        Self.dottedFillRountRectJButton.setText('Dot Fill Rnd Rect');
        Self.dottedFillRountRectJButton.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.dottedFillRountRectJButtonMousePressed(evt);
end;
*));
        Self.add(Self.dottedFillRountRectJButton);
        Self.colorJPanel.setLayout(TGridLayout.Create(1, 1));
        Self.colorJPanel.add(Self.colorJList);
        Self.add(Self.colorJPanel);
end;
    

procedure TToolJPanel.dottedFillRountRectJButtonMousePressed(evt: TMouseEvent);
begin
        TToolFactory.getInstance().setSelectedTool(Self.dottedFillRountRectJButton.getText());
end;
    

procedure TToolJPanel.dottedFillArcJButtonMousePressed(evt: TMouseEvent);
begin
        TToolFactory.getInstance().setSelectedTool(Self.dottedFillArcJButton.getText());
end;
    

procedure TToolJPanel.dottedFillRectJButtonMousePressed(evt: TMouseEvent);
begin
        TToolFactory.getInstance().setSelectedTool(Self.dottedFillRectJButton.getText());
end;
    

procedure TToolJPanel.dottedArcJButtonMousePressed(evt: TMouseEvent);
begin
        TToolFactory.getInstance().setSelectedTool(Self.dottedArcJButton.getText());
end;
    

procedure TToolJPanel.dottedRectButtonMousePressed(evt: TMouseEvent);
begin
        TToolFactory.getInstance().setSelectedTool(Self.dottedRectButton.getText());
end;
    

procedure TToolJPanel.dottedLineJButtonMousePressed(evt: TMouseEvent);
begin
        TToolFactory.getInstance().setSelectedTool(Self.dottedLineJButton.getText());
end;
    

procedure TToolJPanel.fillRoundRectJButtonMousePressed(evt: TMouseEvent);
begin
        TToolFactory.getInstance().setSelectedTool(Self.fillRoundRectJButton.getText());
end;
    

procedure TToolJPanel.fillRectJButtonMousePressed(evt: TMouseEvent);
begin
        TToolFactory.getInstance().setSelectedTool(Self.fillRectJButton.getText());
end;
    

procedure TToolJPanel.fillArcJButtonMousePressed(evt: TMouseEvent);
begin
        TToolFactory.getInstance().setSelectedTool(Self.fillArcJButton.getText());
end;
    

procedure TToolJPanel.imageJButtonMousePressed(evt: TMouseEvent);
begin
        TToolFactory.getInstance().setSelectedTool(Self.imageJButton.getText());
end;
    

procedure TToolJPanel.roundRectJButtonMousePressed(evt: TMouseEvent);
begin
        TToolFactory.getInstance().setSelectedTool(Self.roundRectJButton.getText());
end;
    

procedure TToolJPanel.charJButtonMousePressed(evt: TMouseEvent);
begin
        TToolFactory.getInstance().setSelectedTool(Self.charJButton.getText());
end;
    

procedure TToolJPanel.stringJButtonMousePressed(evt: TMouseEvent);
begin
        TToolFactory.getInstance().setSelectedTool(Self.stringJButton.getText());
end;
    

procedure TToolJPanel.arcJButtonMousePressed(evt: TMouseEvent);
begin
        TToolFactory.getInstance().setSelectedTool(Self.arcJButton.getText());
end;
    

procedure TToolJPanel.rectJButtonMouseClicked(evt: TMouseEvent);
begin
        TToolFactory.getInstance().setSelectedTool(Self.rectJButton.getText());
end;
    

procedure TToolJPanel.lineJButtonMouseClicked(evt: TMouseEvent);
begin
        TToolFactory.getInstance().setSelectedTool(Self.lineJButton.getText());
end;

initialization

end.

