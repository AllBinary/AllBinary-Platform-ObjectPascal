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
// package org.allbinary.input.automation.actions.script.condition
unit ColorAtActionScriptConditionJPanel;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, LogUtil, ColorRangeInterface, CommonStrings, ColorAtActionScriptConditionInterface, JTextField, JLabel, JDialog, ActionEvent, JButton, JPanel;

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

  TColorAtActionScriptConditionJPanel = class(TJPanel)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    colorAtActionScriptConditionInterface: IColorAtActionScriptConditionInterface;
    blueJLabel: TJLabel;
    colorAtActionJButton: TJButton;
    colorAtActionJDialog: TJDialog;
    colorAtXJTextField: TJTextField;
    colorAtYJTextField: TJTextField;
    colorRangeJLabel: TJLabel;
    greenJLabel: TJLabel;
    jLabel1: TJLabel;
    locationJLabel: TJLabel;
    maxBlueJTextField: TJTextField;
    maxGreenJTextField: TJTextField;
    maxJLabel: TJLabel;
    maxRedJTextField: TJTextField;
    minBlueJTextField: TJTextField;
    minGreenJTextField: TJTextField;
    minJLabel: TJLabel;
    minRedJTextField: TJTextField;
    okJButton: TJButton;
    redJLabel: TJLabel;
    titleJLabel: TJLabel;
    xJLabel: TJLabel;
    yJLabel: TJLabel;
    procedure InitFields;
        constructor Create(colorAtActionScriptConditionInterface: IColorAtActionScriptConditionInterface);
        procedure set_;
        procedure update;
        function getColorAtXJTextField: TJTextField; virtual;
        procedure setColorAtXJTextField(colorAtXJTextField: TJTextField); virtual;
        function getColorAtYJTextField: TJTextField; virtual;
        procedure setColorAtYJTextField(colorAtYJTextField: TJTextField); virtual;
        function getMaxBlueJTextField: TJTextField; virtual;
        procedure setMaxBlueJTextField(maxBlueJTextField: TJTextField); virtual;
        function getMaxGreenJTextField: TJTextField; virtual;
        procedure setMaxGreenJTextField(maxGreenJTextField: TJTextField); virtual;
        function getMaxRedJTextField: TJTextField; virtual;
        procedure setMaxRedJTextField(maxRedJTextField: TJTextField); virtual;
        function getMinBlueJTextField: TJTextField; virtual;
        procedure setMinBlueJTextField(minBlueJTextField: TJTextField); virtual;
        function getMinGreenJTextField: TJTextField; virtual;
        procedure setMinGreenJTextField(minGreenJTextField: TJTextField); virtual;
        function getMinRedJTextField: TJTextField; virtual;
        procedure setMinRedJTextField(minRedJTextField: TJTextField); virtual;
        function getYJLabel: TJLabel; virtual;
        procedure setYJLabel(yJLabel: TJLabel); virtual;
        function getColorAtActionJDialog: TJDialog; virtual;
        procedure setColorAtActionJDialog(colorAtActionJDialog: TJDialog); virtual;
        procedure initComponents;
        procedure okJButtonActionPerformed(evt: TActionEvent);
        procedure colorAtActionJButtonActionPerformed(evt: TActionEvent);
  end;

implementation
uses
  Dimension, ActionListener, GroupLayout, Short;



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


procedure TColorAtActionScriptConditionJPanel.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end;
    

constructor TColorAtActionScriptConditionJPanel.Create(colorAtActionScriptConditionInterface: IColorAtActionScriptConditionInterface);
begin
    inherited Create;
    InitFields;
        Self.logUtil.putF(Self.commonStrings.START, Self, Self.commonStrings.CONSTRUCTOR_);
        Self.initComponents();
        Self.colorAtActionScriptConditionInterface := colorAtActionScriptConditionInterface;
        Self.set_();
end;
    

procedure TColorAtActionScriptConditionJPanel.set_;
var
  colorRangeInterface: IColorRangeInterface;
begin
        colorRangeInterface := Self.colorAtActionScriptConditionInterface.getColorRangeInterface();
        Self.getMinRedJTextField().setText(IntToStr(colorRangeInterface.getMinRed()));
        Self.getMaxRedJTextField().setText(IntToStr(colorRangeInterface.getMaxRed()));
        Self.getMinGreenJTextField().setText(IntToStr(colorRangeInterface.getMinGreen()));
        Self.getMaxGreenJTextField().setText(IntToStr(colorRangeInterface.getMaxGreen()));
        Self.getMinBlueJTextField().setText(IntToStr(colorRangeInterface.getMinBlue()));
        Self.getMaxBlueJTextField().setText(IntToStr(colorRangeInterface.getMaxBlue()));
        Self.getColorAtXJTextField().setText(IntToStr(Self.colorAtActionScriptConditionInterface.getPoint().x));
        Self.getColorAtYJTextField().setText(IntToStr(Self.colorAtActionScriptConditionInterface.getPoint().y));
        Self.colorAtActionScriptConditionInterface.log();
end;
    

procedure TColorAtActionScriptConditionJPanel.update;
var
  colorRangeInterface: IColorRangeInterface;
  xString: string;
  yString: string;
begin
        colorRangeInterface := Self.colorAtActionScriptConditionInterface.getColorRangeInterface();
        colorRangeInterface.setMinRed(IntToStr(Self.getMinRedJTextField().getText()).intValue());
        colorRangeInterface.setMaxRed(IntToStr(Self.getMaxRedJTextField().getText()).intValue());
        colorRangeInterface.setMinGreen(IntToStr(Self.getMinGreenJTextField().getText()).intValue());
        colorRangeInterface.setMaxGreen(IntToStr(Self.getMaxGreenJTextField().getText()).intValue());
        colorRangeInterface.setMinBlue(IntToStr(Self.getMinBlueJTextField().getText()).intValue());
        colorRangeInterface.setMaxBlue(IntToStr(Self.getMaxBlueJTextField().getText()).intValue());
        xString := Self.getColorAtXJTextField().getText();
        if (not (nil.isEmpty(xString))) and (nil.isNumber(xString)) then begin
            Self.colorAtActionScriptConditionInterface.getPoint().x := StrToInt(xString);
        end;
        yString := Self.getColorAtYJTextField().getText();
        if (not (nil.isEmpty(yString))) and (nil.isNumber(yString)) then begin
            Self.colorAtActionScriptConditionInterface.getPoint().y := StrToInt(xString);
        end;
        Self.colorAtActionScriptConditionInterface.log();
end;
    

function TColorAtActionScriptConditionJPanel.getColorAtXJTextField: TJTextField;
begin
        Exit(Self.colorAtXJTextField);
end;
    

procedure TColorAtActionScriptConditionJPanel.setColorAtXJTextField(colorAtXJTextField: TJTextField);
begin
        Self.colorAtXJTextField := colorAtXJTextField;
end;
    

function TColorAtActionScriptConditionJPanel.getColorAtYJTextField: TJTextField;
begin
        Exit(Self.colorAtYJTextField);
end;
    

procedure TColorAtActionScriptConditionJPanel.setColorAtYJTextField(colorAtYJTextField: TJTextField);
begin
        Self.colorAtYJTextField := colorAtYJTextField;
end;
    

function TColorAtActionScriptConditionJPanel.getMaxBlueJTextField: TJTextField;
begin
        Exit(Self.maxBlueJTextField);
end;
    

procedure TColorAtActionScriptConditionJPanel.setMaxBlueJTextField(maxBlueJTextField: TJTextField);
begin
        Self.maxBlueJTextField := maxBlueJTextField;
end;
    

function TColorAtActionScriptConditionJPanel.getMaxGreenJTextField: TJTextField;
begin
        Exit(Self.maxGreenJTextField);
end;
    

procedure TColorAtActionScriptConditionJPanel.setMaxGreenJTextField(maxGreenJTextField: TJTextField);
begin
        Self.maxGreenJTextField := maxGreenJTextField;
end;
    

function TColorAtActionScriptConditionJPanel.getMaxRedJTextField: TJTextField;
begin
        Exit(Self.maxRedJTextField);
end;
    

procedure TColorAtActionScriptConditionJPanel.setMaxRedJTextField(maxRedJTextField: TJTextField);
begin
        Self.maxRedJTextField := maxRedJTextField;
end;
    

function TColorAtActionScriptConditionJPanel.getMinBlueJTextField: TJTextField;
begin
        Exit(Self.minBlueJTextField);
end;
    

procedure TColorAtActionScriptConditionJPanel.setMinBlueJTextField(minBlueJTextField: TJTextField);
begin
        Self.minBlueJTextField := minBlueJTextField;
end;
    

function TColorAtActionScriptConditionJPanel.getMinGreenJTextField: TJTextField;
begin
        Exit(Self.minGreenJTextField);
end;
    

procedure TColorAtActionScriptConditionJPanel.setMinGreenJTextField(minGreenJTextField: TJTextField);
begin
        Self.minGreenJTextField := minGreenJTextField;
end;
    

function TColorAtActionScriptConditionJPanel.getMinRedJTextField: TJTextField;
begin
        Exit(Self.minRedJTextField);
end;
    

procedure TColorAtActionScriptConditionJPanel.setMinRedJTextField(minRedJTextField: TJTextField);
begin
        Self.minRedJTextField := minRedJTextField;
end;
    

function TColorAtActionScriptConditionJPanel.getYJLabel: TJLabel;
begin
        Exit(Self.yJLabel);
end;
    

procedure TColorAtActionScriptConditionJPanel.setYJLabel(yJLabel: TJLabel);
begin
        Self.yJLabel := yJLabel;
end;
    

function TColorAtActionScriptConditionJPanel.getColorAtActionJDialog: TJDialog;
begin
        Exit(Self.colorAtActionJDialog);
end;
    

procedure TColorAtActionScriptConditionJPanel.setColorAtActionJDialog(colorAtActionJDialog: TJDialog);
begin
        Self.colorAtActionJDialog := colorAtActionJDialog;
end;
    

procedure TColorAtActionScriptConditionJPanel.initComponents;
var
  colorAtActionJDialogLayout: TGroupLayout;
  layout: TGroupLayout;
begin
        Self.colorAtActionJDialog := TJDialog.Create();
        Self.titleJLabel := TJLabel.Create();
        Self.locationJLabel := TJLabel.Create();
        Self.colorAtXJTextField := TJTextField.Create();
        Self.xJLabel := TJLabel.Create();
        Self.yJLabel := TJLabel.Create();
        Self.colorAtYJTextField := TJTextField.Create();
        Self.colorRangeJLabel := TJLabel.Create();
        Self.redJLabel := TJLabel.Create();
        Self.minJLabel := TJLabel.Create();
        Self.maxJLabel := TJLabel.Create();
        Self.greenJLabel := TJLabel.Create();
        Self.blueJLabel := TJLabel.Create();
        Self.minRedJTextField := TJTextField.Create();
        Self.maxRedJTextField := TJTextField.Create();
        Self.maxGreenJTextField := TJTextField.Create();
        Self.minBlueJTextField := TJTextField.Create();
        Self.maxBlueJTextField := TJTextField.Create();
        Self.okJButton := TJButton.Create();
        Self.minGreenJTextField := TJTextField.Create();
        Self.colorAtActionJButton := TJButton.Create();
        Self.jLabel1 := TJLabel.Create();
        Self.colorAtActionJDialog.setMinimumSize(TDimension.Create(350, 250));
        Self.titleJLabel.setText('              Color At Action Options            ');
        Self.locationJLabel.setText('Location:');
        Self.xJLabel.setText('X:');
        Self.yJLabel.setText('Y:');
        Self.colorRangeJLabel.setText('Color Range');
        Self.redJLabel.setText('Red:');
        Self.minJLabel.setText('Minimum');
        Self.maxJLabel.setText('Maximum');
        Self.greenJLabel.setText('Green:');
        Self.blueJLabel.setText('Blue:');
        Self.okJButton.setText('OK');
        Self.okJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.okJButtonActionPerformed(evt);
end;
*));
        colorAtActionJDialogLayout := TGroupLayout.Create(Self.colorAtActionJDialog.getContentPane());
        Self.colorAtActionJDialog.getContentPane().setLayout(colorAtActionJDialogLayout);
        colorAtActionJDialogLayout.setHorizontalGroup(colorAtActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(colorAtActionJDialogLayout.createSequentialGroup().addContainerGap().addGroup(colorAtActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(colorAtActionJDialogLayout.createSequentialGroup().addGroup(colorAtActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.TRAILING).addComponent(Self.okJButton).addGroup(colorAtActionJDialogLayout.createSequentialGroup().addGroup(colorAtActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING, False).addGroup(colorAtActionJDialogLayout.createSequentialGroup().addGroup(colorAtActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.blueJLabel).addComponent(Self.greenJLabel).addComponent(Self.redJLabel).addComponent(Self.colorRangeJLabel)).addGap(29, 29, 29)).addGroup(Tjavax.swing.GroupLayout.Alignment.TRAILING, colorAtActionJDialogLayout.createSequentialGroup().addComponent(Self.locationJLabel).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED, Tjavax.swing.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE).addComponent(Self.xJLabel).addGap(18, 18, 18))).addGroup(colorAtActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.minBlueJTextField, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 40, TShort.MAX_VALUE).addComponent(Self.minGreenJTextField, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 40, TShort.MAX_VALUE).addComponent(Self.minJLabel, Tjavax.swing.GroupLayout.Alignment.TRAILING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE).addComponent(Self.minRedJTextField, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 40, TShort.MAX_VALUE).addComponent(Self.colorAtXJTextField, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 40, TShort.MAX_VALUE)).addGap(16, 16, 16))).addGap(6, 6, 6).addComponent(Self.yJLabel).addGap(24, 24, 24).addGroup(colorAtActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.TRAILING).addComponent(Self.maxJLabel, Tjavax.swing.GroupLayout.Alignment.LEADING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE).addGroup(Tjavax.swing.GroupLayout.Alignment.LEADING, colorAtActionJDialogLayout.createSequentialGroup().addGap(1, 1, 1).addGroup(colorAtActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING, False).addComponent(Self.maxBlueJTextField, Tjavax.swing.GroupLayout.Alignment.TRAILING).addComponent(Self.maxRedJTextField, Tjavax.swing.GroupLayout.Alignment.TRAILING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 43, TShort.MAX_VALUE).addComponent(Self.maxGreenJTextField, Tjavax.swing.GroupLayout.Alignment.TRAILING, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 43, Tjavax.swing.GroupLayout.PREFERRED_SIZE))).addComponent(Self.colorAtYJTextField, Tjavax.swing.GroupLayout.Alignment.LEADING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 44, TShort.MAX_VALUE)).addGap(22, 22, 22)).addGroup(Tjavax.swing.GroupLayout.Alignment.TRAILING, colorAtActionJDialogLayout.createSequentialGroup().addComponent(Self.titleJLabel).addGap(33, 33, 33)))));
        colorAtActionJDialogLayout.setVerticalGroup(colorAtActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(colorAtActionJDialogLayout.createSequentialGroup().addContainerGap().addComponent(Self.titleJLabel).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(colorAtActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(colorAtActionJDialogLayout.createSequentialGroup().addGap(15, 15, 15).addGroup(colorAtActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.xJLabel).addComponent(Self.locationJLabel).addComponent(Self.colorAtXJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addComponent(Self.yJLabel)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(colorAtActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.minJLabel).addComponent(Self.colorRangeJLabel)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(colorAtActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.minRedJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addComponent(Self.redJLabel)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(colorAtActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.greenJLabel).addComponent(Self.minGreenJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(colorAtActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.blueJLabel).addComponent(Self.minBlueJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED, 17, TShort.MAX_VALUE).addComponent(Self.okJButton)).addGroup(colorAtActionJDialogLayout.createSequentialGroup().addGap(14, 14, 14).addComponent(Self.colorAtYJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.maxJLabel).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.maxRedJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.maxGreenJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.maxBlueJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE))).addContainerGap()));
        Self.setPreferredSize(TDimension.Create(100, 0));
        Self.colorAtActionJButton.setText('Edit');
        Self.colorAtActionJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.colorAtActionJButtonActionPerformed(evt);
end;
*));
        Self.jLabel1.setText('Color At:');
        layout := TGroupLayout.Create(Self);
        Self.setLayout(layout);
        layout.setHorizontalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(Self.jLabel1).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED, 15, TShort.MAX_VALUE).addComponent(Self.colorAtActionJButton)));
        layout.setVerticalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.jLabel1).addComponent(Self.colorAtActionJButton)));
end;
    

procedure TColorAtActionScriptConditionJPanel.okJButtonActionPerformed(evt: TActionEvent);
begin
        Self.update();
        Self.getColorAtActionJDialog().setVisible(False);
end;
    

procedure TColorAtActionScriptConditionJPanel.colorAtActionJButtonActionPerformed(evt: TActionEvent);
begin
        Self.getColorAtActionJDialog().setVisible(True);
end;

initialization

end.

