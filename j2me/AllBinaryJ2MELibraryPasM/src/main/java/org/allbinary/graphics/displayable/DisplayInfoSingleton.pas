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
// package org.allbinary.graphics.displayable
unit DisplayInfoSingleton;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, AndroidUtil, Features, DisplayChangeEvent, DisplayChangeEventHandler, LastDisplayChangeEventHandler, OpenGLFeatureFactory, SWTJOGLProcessor, LogUtil, PreLogUtil, StringMaker, GenericOperatingSystem, OperatingSystemFactory, CommonLabels, CommonSeps, CommonStrings, BasicArrayList, BasicArrayListD, BaseScalable, ScalableListener;

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

  TDisplayInfoSingleton = class(TObject)
  public
    logUtil: TLogUtil;
    commonLabels: TCommonLabels;
    commonSeps: TCommonSeps;
    commonStrings: TCommonStrings;
    ORIENTATION: string;
    ADJUSTING_FOR_SCALING_IN_PORTRAIT: string;
    ADJUSTING_FOR_SCALING_IN_LANDSCAPE: string;
    last: TArray<Integer>;
    lastHalf: TArray<Integer>;
    full: TArray<Integer>;
    top: Integer;
    left: Integer;
    xOffset: Integer;
    yOffset: Integer;
    scaleLargestTo: Single;
    WIDTH: Integer;
    HEIGHT: Integer;
    CUSTOM_WIDTH: Integer;
    CUSTOM_HEIGHT: Integer;
    scalableListener: TBaseScalable;
    displayRatio: Single;
    ratio: Single;
    SET_LAST_SIZE_METHOD_NAME: string;
    FULL_WIDTH: string;
    FULL_HEIGHT: string;
    LAST_WIDTH: string;
    LAST_HEIGHT: string;
    PORTRAIT: string;
    LANDSCAPE: string;
    displayChangeEvent: TDisplayChangeEvent;
    FIRE_METHOD_NAME: string;
    REASON: string;
    UPDATE_FROM_ORIENTATION_CHANGE: string;
    list: TBasicArrayList;
    DISPLAY_INFO: string;
    FULL_: string;
    LAST_: string;
    LAST_HALF: string;
    class var SINGLETON: TDisplayInfoSingleton;
    procedure InitFields;
        class function getInstance: TDisplayInfoSingleton; static;
        constructor Create;
        function getLastHalf: TArray<Integer>; virtual;
        function getLast: TArray<Integer>; virtual;
        function getFull: TArray<Integer>; virtual;
        function getScaleLargestTo: Single; virtual;
        procedure setScaleLargestTo(scaleLargestTo: Integer); virtual;
        procedure setLastSize(aLastWidth: Integer; aLastHeight: Integer; reason: string); virtual;
        procedure setLastSizeForce(aLastWidth: Integer; aLastHeight: Integer; reason: string);
        function isPortraitWH(lastWidth: Integer; lastHeight: Integer): Boolean; virtual;
        function isPortrait: Boolean; virtual;
        procedure add(reason: string); virtual;
        procedure process; virtual;
        procedure processForced; virtual;
        procedure update(displayable: TDisplayable; reason: string); virtual;
        function toString: string; virtual;
        function toStringAppend(stringBuffer: TStringMaker): string; virtual;
        function getTop: Integer; virtual;
        function getLeft: Integer; virtual;
        function getLastWidth: Integer; virtual;
        function getLastHeight: Integer; virtual;
        function getLastHalfWidth: Integer; virtual;
        function getLastHalfHeight: Integer; virtual;
        function getCustomLastWidth: Integer; virtual;
        function getCustomLastHeight: Integer; virtual;
        function getRawLastWidth: Integer; virtual;
        function getRawLastHeight: Integer; virtual;
        procedure setCustom(width: Integer; height: Integer); virtual;
        procedure setScalableListener(scalableListener: TBaseScalable); virtual;
        function getScalableListener: TScalableListener; virtual;
        function getRatio: Single; virtual;
        function getDisplayRatio: Single; virtual;
        procedure setOffset(left: Integer; top: Integer); virtual;
        function getxOffset: Integer; virtual;
        function getyOffset: Integer; virtual;
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


procedure TDisplayInfoSingleton.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonLabels := TCommonLabels.getInstance();
  Self.commonSeps := TCommonSeps.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.ORIENTATION := 'ORIENTATION';
  Self.ADJUSTING_FOR_SCALING_IN_PORTRAIT := 'Adjusting for Scaling in portrait display ratio: ';
  Self.ADJUSTING_FOR_SCALING_IN_LANDSCAPE := 'Adjusting for Scaling in landscape display ratio: ';
  Self.last := TJava.NewArray<Integer>(4);
  Self.lastHalf := TJava.NewArray<Integer>(4);
  Self.full := TJava.NewArray<Integer>(4);
  
  
  
  
  
  Self.WIDTH := 0;
  Self.HEIGHT := 1;
  Self.CUSTOM_WIDTH := 2;
  Self.CUSTOM_HEIGHT := 3;
  Self.scalableListener := TBaseScalable.Create();
  
  Self.ratio := 1.0;
  Self.SET_LAST_SIZE_METHOD_NAME := 'setLastSize';
  Self.FULL_WIDTH := ' FullWidth: ';
  Self.FULL_HEIGHT := ' FullHeight: ';
  Self.LAST_WIDTH := 'LastWidth: ';
  Self.LAST_HEIGHT := ' LastHeight: ';
  Self.PORTRAIT := 'Portrait';
  Self.LANDSCAPE := 'Landscape';
  Self.displayChangeEvent := TDisplayChangeEvent.Create(Self);
  Self.FIRE_METHOD_NAME := 'fire';
  Self.REASON := 'reason: ';
  Self.UPDATE_FROM_ORIENTATION_CHANGE := 'Updating from Orientation Change ';
  Self.list := TBasicArrayListD.Create();
  Self.DISPLAY_INFO := 'Display Info: ';
  Self.FULL_ := 'full';
  Self.LAST_ := 'last';
  Self.LAST_HALF := 'lastHalf';
end;
    

class function TDisplayInfoSingleton.getInstance: TDisplayInfoSingleton;
begin
        Exit(TDisplayInfoSingleton.SINGLETON);
end;
    

constructor TDisplayInfoSingleton.Create;
var
  size: Integer;
  index: Integer;
begin
    inherited Create;
    InitFields;
        size := System.Length(Self.last);
        for index := 0 to size - 1 do begin
            Self.last[index] := 0;
            Self.lastHalf[index] := 0;
            Self.full[index] := 0;
        end;
        if TAndroidUtil.isAndroid() then begin
            Self.scaleLargestTo := 640.0;
        end else begin
            Self.scaleLargestTo := 1080.0;
        end;
end;
    

function TDisplayInfoSingleton.getLastHalf: TArray<Integer>;
begin
        Exit(Self.lastHalf);
end;
    

function TDisplayInfoSingleton.getLast: TArray<Integer>;
begin
        Exit(Self.last);
end;
    

function TDisplayInfoSingleton.getFull: TArray<Integer>;
begin
        Exit(Self.full);
end;
    

function TDisplayInfoSingleton.getScaleLargestTo: Single;
begin
        Exit(Self.scaleLargestTo);
end;
    

procedure TDisplayInfoSingleton.setScaleLargestTo(scaleLargestTo: Integer);
begin
        Self.scaleLargestTo := scaleLargestTo;
end;
    

procedure TDisplayInfoSingleton.setLastSize(aLastWidth: Integer; aLastHeight: Integer; reason: string);
begin
        if ((Self.full[Self.WIDTH]) <> (aLastWidth)) or ((Self.full[Self.HEIGHT]) <> (aLastHeight)) then begin
            Self.setLastSizeForce(aLastWidth, aLastHeight, reason);
        end;
end;
    

procedure TDisplayInfoSingleton.setLastSizeForce(aLastWidth: Integer; aLastHeight: Integer; reason: string);
var
  stringMaker: TStringMaker;
  aFullWidth: Integer;
  aFullHeight: Integer;
  operatingSystemInterface: TGenericOperatingSystem;
begin
        stringMaker := TStringMaker.Create();
        Self.logUtil.putF(stringMaker.append(TCommonLabels.getInstance().START_LABEL).append(reason).toString(), Self, Self.SET_LAST_SIZE_METHOD_NAME);
        aFullWidth := aLastWidth;
        aFullHeight := aLastHeight;
        stringMaker.delete_(0, stringMaker.length());
        Self.logUtil.putF(stringMaker.append(Self.FULL_WIDTH).appendint(aFullWidth).append(Self.FULL_HEIGHT).appendint(aFullHeight).append(Self.toString()).toString(), Self, Self.SET_LAST_SIZE_METHOD_NAME);
        operatingSystemInterface := TOperatingSystemFactory.getInstance().getOperatingSystemInstance();
        if operatingSystemInterface.isOverScan() then begin
            aLastWidth := ((aLastWidth) * (operatingSystemInterface.getOverScanXPercent())) / (100);
            aLastHeight := ((aLastHeight) * (operatingSystemInterface.getOverScanYPercent())) / (100);
        end;
        if operatingSystemInterface.isScalable() then begin
            if Self.isPortraitWH(aLastWidth, aLastHeight) then begin
                if (aLastHeight) > (Self.scaleLargestTo) then begin
                    Self.displayRatio := (Self.scaleLargestTo) / (aLastHeight);
                    Self.ratio := (aLastHeight) / (Self.scaleLargestTo);
                    stringMaker.delete_(0, stringMaker.length());
                    Self.logUtil.putF(stringMaker.append(Self.ADJUSTING_FOR_SCALING_IN_PORTRAIT).appendfloat(Self.displayRatio).toString(), Self, Self.SET_LAST_SIZE_METHOD_NAME);
                    aLastWidth := Integer(Trunc(((aLastWidth) * (Self.displayRatio))));
                    aLastHeight := Integer(Trunc(((aLastHeight) * (Self.displayRatio))));
                    Self.scalableListener.scale(Self.ratio);
                end else begin
                    Self.ratio := 1.0;
                    Self.scalableListener.scale(Self.ratio);
                end;
            end else begin
                if (aLastWidth) > (Self.scaleLargestTo) then begin
                    Self.displayRatio := (Self.scaleLargestTo) / (aLastWidth);
                    Self.ratio := (aLastWidth) / (Self.scaleLargestTo);
                    stringMaker.delete_(0, stringMaker.length());
                    Self.logUtil.putF(stringMaker.append(Self.ADJUSTING_FOR_SCALING_IN_LANDSCAPE).appendfloat(Self.displayRatio).toString(), Self, Self.SET_LAST_SIZE_METHOD_NAME);
                    aLastWidth := Integer(Trunc(((aLastWidth) * (Self.displayRatio))));
                    aLastHeight := Integer(Trunc(((aLastHeight) * (Self.displayRatio))));
                    Self.scalableListener.scale(Self.ratio);
                end else begin
                    Self.ratio := 1.0;
                    Self.scalableListener.scale(Self.ratio);
                end;
            end;
        end;
        stringMaker.delete_(0, stringMaker.length());
        Self.logUtil.putF(stringMaker.append(Self.LAST_WIDTH).appendint(aLastWidth).append(Self.LAST_HEIGHT).appendint(aLastHeight).toString(), Self, Self.SET_LAST_SIZE_METHOD_NAME);
        Self.xOffset := (aFullWidth) - (aLastWidth);
        Self.yOffset := (aFullHeight) - (aLastHeight);
        Self.left := Self.scalableListener.getLeft(Self.xOffset);
        Self.top := Self.scalableListener.getTop(Self.yOffset);
        Self.full[Self.WIDTH] := aFullWidth;
        Self.full[Self.HEIGHT] := aFullHeight;
        Self.last[Self.WIDTH] := aLastWidth;
        Self.lastHalf[Self.WIDTH] := (TJava.SignedRightShift(Self.last[Self.WIDTH], 1));
        Self.last[Self.HEIGHT] := aLastHeight;
        Self.lastHalf[Self.HEIGHT] := (TJava.SignedRightShift(Self.last[Self.HEIGHT], 1));
        TSWTJOGLProcessor.getInstance().setCustom(aLastWidth, aLastHeight, Self.ratio);
        Self.add(TJava.BoxString(Self.SET_LAST_SIZE_METHOD_NAME));
end;
    

function TDisplayInfoSingleton.isPortraitWH(lastWidth: Integer; lastHeight: Integer): Boolean;
begin
        if (lastHeight) > (lastWidth) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TDisplayInfoSingleton.isPortrait: Boolean;
begin
        Exit(Self.isPortraitWH(Self.last[Self.WIDTH], Self.last[Self.HEIGHT]));
end;
    

procedure TDisplayInfoSingleton.add(reason: string);
var
  stringMaker: TStringMaker;
begin
        stringMaker := TStringMaker.Create();
        Self.logUtil.putF(stringMaker.append(Self.REASON).append(reason).toString(), Self, Self.FIRE_METHOD_NAME);
        stringMaker.delete_(0, stringMaker.length());
        Self.logUtil.putF(Self.toStringAppend(stringMaker), Self, Self.FIRE_METHOD_NAME);
        Self.list.add(TJava.BoxString(reason));
end;
    

procedure TDisplayInfoSingleton.process;
begin
        try
            if (Self.list.size()) > (0) then begin
                Self.processForced();
            end;
            Self.list.clear();
        except
            on e: SysUtils.Exception do begin
            TPreLogUtil.putOE(Self.commonStrings.EXCEPTION, Self, Self.FIRE_METHOD_NAME, e);
            end;
        end;
end;
    

procedure TDisplayInfoSingleton.processForced;
var
  swtJOGLProcessor: TSWTJOGLProcessor;
begin
        try
            swtJOGLProcessor := TSWTJOGLProcessor.getInstance();
            swtJOGLProcessor.clear();
            TDisplayChangeEventHandler.getInstance().fireEvent(Self.displayChangeEvent);
            TLastDisplayChangeEventHandler.getInstance().fireEvent(Self.displayChangeEvent);
            swtJOGLProcessor.onSurfaceChanged();
        except
            on e: SysUtils.Exception do begin
            TPreLogUtil.putOE(Self.commonStrings.EXCEPTION, Self, Self.FIRE_METHOD_NAME, e);
            end;
        end;
end;
    

procedure TDisplayInfoSingleton.update(displayable: TDisplayable; reason: string);
var
  aLastWidth: Integer;
  aLastHeight: Integer;
  aFullWidth: Integer;
  aFullHeight: Integer;
  stringMaker: TStringMaker;
  features: TFeatures;
  openGLFeatureFactory: TOpenGLFeatureFactory;
  operatingSystemInterface: TGenericOperatingSystem;
begin
        aLastWidth := displayable.getWidth();
        aLastHeight := displayable.getHeight();
        aFullWidth := aLastWidth;
        aFullHeight := aLastHeight;
        stringMaker := TStringMaker.Create();
        Self.logUtil.putF(stringMaker.append(TCommonLabels.getInstance().START_LABEL).append(reason).append(Self.LAST_WIDTH).appendint(aLastWidth).append(Self.LAST_HEIGHT).appendint(aLastHeight).append(Self.commonSeps.SPACE).append(Self.toString()).toString(), Self, Self.commonStrings.UPDATE);
        if ((aLastWidth) > (0)) and ((aLastHeight) > (0)) then begin
            features := TFeatures.getInstance();
            openGLFeatureFactory := TOpenGLFeatureFactory.getInstance();
            if ((not (features.isDefault(openGLFeatureFactory.OPENGL))) or ((Self.last[Self.WIDTH]) <> (aLastWidth))) or ((Self.last[Self.HEIGHT]) <> (aLastHeight)) then begin
                stringMaker.delete_(0, stringMaker.length());
                Self.logUtil.putF(stringMaker.append(Self.UPDATE_FROM_ORIENTATION_CHANGE).toString(), Self, Self.commonStrings.UPDATE);
                operatingSystemInterface := TOperatingSystemFactory.getInstance().getOperatingSystemInstance();
                if operatingSystemInterface.isOverScan() then begin
                    aLastWidth := ((aLastWidth) * (operatingSystemInterface.getOverScanXPercent())) / (100);
                    aLastHeight := ((aLastHeight) * (operatingSystemInterface.getOverScanYPercent())) / (100);
                end;
                if operatingSystemInterface.isScalable() then begin
                    if Self.isPortraitWH(aLastWidth, aLastHeight) then begin
                        if (aLastHeight) > (Self.scaleLargestTo) then begin
                            Self.displayRatio := (Self.scaleLargestTo) / (aLastHeight);
                            Self.ratio := (aLastHeight) / (Self.scaleLargestTo);
                            stringMaker.delete_(0, stringMaker.length());
                            Self.logUtil.putF(stringMaker.append(Self.ADJUSTING_FOR_SCALING_IN_PORTRAIT).appendfloat(Self.displayRatio).toString(), Self, Self.commonStrings.UPDATE);
                            aLastWidth := Integer(Trunc(((aLastWidth) * (Self.displayRatio))));
                            aLastHeight := Integer(Trunc(((aLastHeight) * (Self.displayRatio))));
                            Self.scalableListener.scale(Self.ratio);
                        end else begin
                            Self.ratio := 1.0;
                            Self.scalableListener.scale(Self.ratio);
                        end;
                    end else begin
                        if (aLastWidth) > (Self.scaleLargestTo) then begin
                            Self.displayRatio := (Self.scaleLargestTo) / (aLastWidth);
                            Self.ratio := (aLastWidth) / (Self.scaleLargestTo);
                            stringMaker.delete_(0, stringMaker.length());
                            Self.logUtil.putF(stringMaker.append(Self.ADJUSTING_FOR_SCALING_IN_LANDSCAPE).appendfloat(Self.displayRatio).toString(), Self, Self.commonStrings.UPDATE);
                            aLastWidth := Integer(Trunc(((aLastWidth) * (Self.displayRatio))));
                            aLastHeight := Integer(Trunc(((aLastHeight) * (Self.displayRatio))));
                            Self.scalableListener.scale(Self.ratio);
                        end else begin
                            Self.ratio := 1.0;
                            Self.scalableListener.scale(Self.ratio);
                        end;
                    end;
                end;
                stringMaker.delete_(0, stringMaker.length());
                Self.logUtil.putF(stringMaker.append(Self.UPDATE_FROM_ORIENTATION_CHANGE).append(Self.LAST_WIDTH).appendint(aLastWidth).append(Self.LAST_HEIGHT).appendint(aLastHeight).toString(), Self, Self.commonStrings.UPDATE);
                Self.xOffset := (aFullWidth) - (aLastWidth);
                Self.yOffset := (aFullHeight) - (aLastHeight);
                Self.left := Self.scalableListener.getLeft(Self.xOffset);
                Self.top := Self.scalableListener.getTop(Self.yOffset);
                Self.full[Self.WIDTH] := aFullWidth;
                Self.full[Self.HEIGHT] := aFullHeight;
                Self.last[Self.WIDTH] := aLastWidth;
                Self.lastHalf[Self.WIDTH] := (TJava.SignedRightShift(Self.last[Self.WIDTH], 1));
                Self.last[Self.HEIGHT] := aLastHeight;
                Self.lastHalf[Self.HEIGHT] := (TJava.SignedRightShift(Self.last[Self.HEIGHT], 1));
                TSWTJOGLProcessor.getInstance().setCustom(aLastWidth, aLastHeight, Self.ratio);
                Self.add(Self.commonStrings.UPDATE);
            end;
        end;
end;
    

function TDisplayInfoSingleton.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        Exit(Self.toStringAppend(stringBuffer));
end;
    

function TDisplayInfoSingleton.toStringAppend(stringBuffer: TStringMaker): string;
begin
        stringBuffer.append(Self.DISPLAY_INFO);
        stringBuffer.append(Self.FULL_);
        stringBuffer.append(Self.commonLabels.WIDTH_LABEL);
        stringBuffer.appendint(Self.full[Self.WIDTH]);
        stringBuffer.append(Self.commonSeps.SPACE);
        stringBuffer.append(Self.FULL_);
        stringBuffer.append(Self.commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint(Self.full[Self.HEIGHT]);
        stringBuffer.append(Self.commonSeps.SPACE);
        stringBuffer.append(Self.LAST_);
        stringBuffer.append(Self.commonLabels.WIDTH_LABEL);
        stringBuffer.appendint(Self.last[Self.WIDTH]);
        stringBuffer.append(Self.commonSeps.SPACE);
        stringBuffer.append(Self.LAST_);
        stringBuffer.append(Self.commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint(Self.last[Self.HEIGHT]);
        stringBuffer.append(Self.commonSeps.SPACE);
        stringBuffer.append(Self.LAST_HALF);
        stringBuffer.append(Self.commonLabels.WIDTH_LABEL);
        stringBuffer.appendint(Self.lastHalf[Self.WIDTH]);
        stringBuffer.append(Self.commonSeps.SPACE);
        stringBuffer.append(Self.LAST_HALF);
        stringBuffer.append(Self.commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint(Self.lastHalf[Self.HEIGHT]);
        stringBuffer.append(Self.commonSeps.SPACE);
        stringBuffer.append(TJava.IfThen<Variant>(Self.isPortrait(), Self.PORTRAIT, Self.LANDSCAPE));
        Exit(stringBuffer.toString());
end;
    

function TDisplayInfoSingleton.getTop: Integer;
begin
        Exit(Self.top);
end;
    

function TDisplayInfoSingleton.getLeft: Integer;
begin
        Exit(Self.left);
end;
    

function TDisplayInfoSingleton.getLastWidth: Integer;
begin
        Exit(Self.last[Self.WIDTH]);
end;
    

function TDisplayInfoSingleton.getLastHeight: Integer;
begin
        Exit(Self.last[Self.HEIGHT]);
end;
    

function TDisplayInfoSingleton.getLastHalfWidth: Integer;
begin
        Exit(Self.lastHalf[Self.WIDTH]);
end;
    

function TDisplayInfoSingleton.getLastHalfHeight: Integer;
begin
        Exit(Self.lastHalf[Self.HEIGHT]);
end;
    

function TDisplayInfoSingleton.getCustomLastWidth: Integer;
begin
        Exit(Self.last[Self.CUSTOM_WIDTH]);
end;
    

function TDisplayInfoSingleton.getCustomLastHeight: Integer;
begin
        Exit(Self.last[Self.CUSTOM_HEIGHT]);
end;
    

function TDisplayInfoSingleton.getRawLastWidth: Integer;
begin
        Exit(Self.last[Self.WIDTH]);
end;
    

function TDisplayInfoSingleton.getRawLastHeight: Integer;
begin
        Exit(Self.last[Self.HEIGHT]);
end;
    

procedure TDisplayInfoSingleton.setCustom(width: Integer; height: Integer);
begin
        Self.last[Self.CUSTOM_WIDTH] := width;
        Self.lastHalf[Self.CUSTOM_WIDTH] := (TJava.SignedRightShift(Self.last[Self.CUSTOM_WIDTH], 1));
        Self.last[Self.CUSTOM_HEIGHT] := height;
        Self.lastHalf[Self.CUSTOM_HEIGHT] := (TJava.SignedRightShift(Self.last[Self.CUSTOM_HEIGHT], 1));
end;
    

procedure TDisplayInfoSingleton.setScalableListener(scalableListener: TBaseScalable);
begin
        Self.scalableListener := scalableListener;
end;
    

function TDisplayInfoSingleton.getScalableListener: TScalableListener;
begin
        Exit(Self.scalableListener);
end;
    

function TDisplayInfoSingleton.getRatio: Single;
begin
        Exit(Self.ratio);
end;
    

function TDisplayInfoSingleton.getDisplayRatio: Single;
begin
        Exit(Self.displayRatio);
end;
    

procedure TDisplayInfoSingleton.setOffset(left: Integer; top: Integer);
begin
        Self.left := left;
end;
    

function TDisplayInfoSingleton.getxOffset: Integer;
begin
        Exit(Self.xOffset);
end;
    

function TDisplayInfoSingleton.getyOffset: Integer;
begin
        Exit(Self.yOffset);
end;

initialization
  TDisplayInfoSingleton.SINGLETON := TDisplayInfoSingleton.Create();

end.

