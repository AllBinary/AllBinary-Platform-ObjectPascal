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
// package org.allbinary.graphics.opengles
unit OpenGLCapabilities;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, AndroidUtil, OpenGLESGL10ImageFactory, OpenGLESGL11VBOImageFactory, OpenGLImageSpecificFactory, BasicArrayList, BasicArrayListD, CommonSeps, CommonStrings, StringMaker, StringUtil, Tokenizer, PreLogUtil, Features, LogUtil, OpenGLFeature;

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

  TOpenGLCapabilities = class(TObject)
  public
    logUtil: TLogUtil;
    CUSTOM_GL_SURFACE_VIEW: Boolean;
    stringUtil: TStringUtil;
    initialized: Boolean;
    glVersionString: string;
    glShaderVersionString: string;
    shaderVersion: Integer;
    glRenderer: string;
    glVendor: string;
    glExtensions: string;
    possiblyAccelerated: Boolean;
    acceleratedString: string;
    maxTextureSize: Integer;
    VERSION_1_0: string;
    VERSION_1_1: string;
    VERSION_2_0: string;
    VERSION_3_0: string;
    VERSION_3_1: string;
    VERSION_3_2: string;
    VERSION_HIGHER_THAN_EXISTS: string;
    VERSION_UNK: string;
    GL_EXT_GPU_SHADER_100: string;
    GL_EXT_GPU_SHADER4: string;
    glVersion: string;
    glInstanceVersion: string;
    glExtensionDrawTexture: Boolean;
    glThreedDrawTexture: Boolean;
    glExtensionGPUShader4: Boolean;
    glExtensionGPUShader100: Boolean;
    vertexBufferObjectSupport: Boolean;
    class var instance: TOpenGLCapabilities;
    procedure InitFields;
        class function getInstance: TOpenGLCapabilities; static;
        constructor Create;
        function isInitialized: Boolean; virtual;
        procedure requireInitialization;
        procedure initCapabilities(gl: TGL10); virtual;
        function isExtension(gameFeature: TOpenGLFeature): Boolean;
        function isGlExtensionDrawTexture: Boolean; virtual;
        function isGlExtensionGPUShader100: Boolean; virtual;
        function isGlExtensionGPUShader4: Boolean; virtual;
        function getGlVersion: string; virtual;
        function getGlVersionString: string; virtual;
        function getGlShaderVersion: string; virtual;
        function isGlThreedDrawTexture: Boolean; virtual;
        function getGlRenderer: string; virtual;
        function isVertexBufferObjectSupport: Boolean; virtual;
        function isTextureSizeValid(widthAndHeight: Integer): Boolean; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  OpenGLFeatureFactory;



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


procedure TOpenGLCapabilities.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.CUSTOM_GL_SURFACE_VIEW := True;
  Self.stringUtil := TStringUtil.getInstance();
  Self.initialized := False;
  Self.glVersionString := Self.stringUtil.EMPTY_STRING;
  Self.glShaderVersionString := Self.stringUtil.EMPTY_STRING;
  Self.shaderVersion := 0;
  Self.glRenderer := Self.stringUtil.EMPTY_STRING;
  Self.glVendor := Self.stringUtil.EMPTY_STRING;
  Self.glExtensions := Self.stringUtil.EMPTY_STRING;
  
  Self.acceleratedString := Self.stringUtil.EMPTY_STRING;
  Self.maxTextureSize := 64;
  Self.VERSION_1_0 := '1.0';
  Self.VERSION_1_1 := '1.1';
  Self.VERSION_2_0 := '2.0';
  Self.VERSION_3_0 := '3.0';
  Self.VERSION_3_1 := '3.1';
  Self.VERSION_3_2 := '3.2';
  Self.VERSION_HIGHER_THAN_EXISTS := '999.999';
  Self.VERSION_UNK := 'Unk';
  Self.GL_EXT_GPU_SHADER_100 := 'GL_ARB_shading_language_100';
  Self.GL_EXT_GPU_SHADER4 := 'GL_EXT_gpu_shader4';
  Self.glVersion := Self.glVersionString;
  Self.glInstanceVersion := Self.VERSION_UNK;
  
  
  
  
  
end;
    

class function TOpenGLCapabilities.getInstance: TOpenGLCapabilities;
begin
        Exit(TOpenGLCapabilities.instance);
end;
    

constructor TOpenGLCapabilities.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TOpenGLCapabilities.isInitialized: Boolean;
begin
        Exit(Self.initialized);
end;
    

procedure TOpenGLCapabilities.requireInitialization;
begin
end;
    

procedure TOpenGLCapabilities.initCapabilities(gl: TGL10);
var
  METHOD_NAME: string;
  features: TFeatures;
  openGLFeatureFactory: TOpenGLFeatureFactory;
  openGLImageSpecificFactory: TOpenGLImageSpecificFactory;
  stringBuffer: TStringMaker;
  GL_SHADING_LANGUAGE_VERSION: Integer;
  startIndex: Integer;
  commonStrings: TCommonStrings;
  stringUtil: TStringUtil;
  maxTextureSizeArray: TArray<Integer>;
begin
        METHOD_NAME := 'initGLCapabilities';
        try
            features := TFeatures.getInstance();
            openGLFeatureFactory := TOpenGLFeatureFactory.getInstance();
            openGLImageSpecificFactory := TOpenGLImageSpecificFactory.getInstance();
            stringBuffer := TStringMaker.Create();
            Self.glVersionString := gl.glGetString(GL10.GL_VERSION);
            GL_SHADING_LANGUAGE_VERSION := $8b8c;
            Self.glShaderVersionString := gl.glGetString(GL_SHADING_LANGUAGE_VERSION);
            if (Self.glShaderVersionString) = ('') then begin
                Self.glShaderVersionString := Self.stringUtil.EMPTY_STRING;
            end;
            try
                if ((Self.glShaderVersionString) <> ('')) and (((Pos(TJava.ToString('.'), Self.glShaderVersionString) - 1)) >= (0)) then begin
                    startIndex := (RPos(TJava.ToString(' '), Self.glShaderVersionString) - 1);
                    if (startIndex) >= (0) then begin
                        Self.glShaderVersionString := Copy(Self.glShaderVersionString, ((startIndex) + (1)) + 1, MaxInt);
                    end;
                    Self.shaderVersion := StrToInt(StringReplace(Self.glShaderVersionString, TCommonSeps.getInstance().PERIOD, TStringUtil.getInstance().EMPTY_STRING, [rfReplaceAll]));
                end;
            except
                on e: SysUtils.Exception do begin
                commonStrings := TCommonStrings.getInstance();
                Self.logUtil.put(commonStrings.EXCEPTION, Self, METHOD_NAME, e);
                end;
            end;
            Self.glRenderer := gl.glGetString(GL10.GL_RENDERER);
            Self.glVendor := gl.glGetString(GL10.GL_VENDOR);
            Self.glExtensions := gl.glGetString(GL10.GL_EXTENSIONS);
            if ((Pos(TJava.ToString(Self.GL_EXT_GPU_SHADER_100), Self.glExtensions) - 1)) >= (0) then begin
                Self.glExtensionGPUShader100 := True;
            end else begin
                Self.glExtensionGPUShader100 := False;
            end;
            if ((Pos(TJava.ToString(Self.GL_EXT_GPU_SHADER4), Self.glExtensions) - 1)) >= (0) then begin
                Self.glExtensionGPUShader4 := True;
            end else begin
                Self.glExtensionGPUShader4 := False;
            end;
            if (Self.glRenderer) = ('') then begin
                Self.glRenderer := Self.stringUtil.EMPTY_STRING;
            end;
            if ((Pos(TJava.ToString('pixelflinger'), LowerCase(Self.glRenderer)) - 1)) >= (0) then begin
                Self.acceleratedString := 'Probably Not for ' + Self.glRenderer;
                Self.possiblyAccelerated := False;
            end else begin
                Self.acceleratedString := 'Probably for ' + Self.glRenderer;
                Self.possiblyAccelerated := True;
            end;
            Self.glExtensionDrawTexture := False;
            if (Self.glVersionString) = ('') then begin
                Self.glVersionString := Self.stringUtil.EMPTY_STRING;
                Self.glVersion := Self.VERSION_UNK;
            end else if ((Pos(TJava.ToString(' 1.0'), Self.glVersionString) - 1)) >= (0) then begin
                Self.glVersion := Self.VERSION_1_0;
            end else if ((Pos(TJava.ToString(' 1.1'), Self.glVersionString) - 1)) >= (0) then begin
                Self.glVersion := Self.VERSION_1_1;
            end else begin
                Self.glVersion := Self.VERSION_UNK;
            end;
            if (gl is TGL11) then begin
                Self.glInstanceVersion := Self.VERSION_1_1;
            end else if (gl is TGL10) then begin
                Self.glInstanceVersion := Self.VERSION_1_0;
            end;
            if (Self.glVendor) = ('') then begin
                Self.glVendor := Self.stringUtil.EMPTY_STRING;
            end;
            if (Self.glExtensions) = ('') then begin
                Self.glExtensions := Self.stringUtil.EMPTY_STRING;
            end;
            if Self.possiblyAccelerated then begin
                TPreLogUtil.put(TStringMaker.Create().append('VBO:?').appendboolean(((Self.glInstanceVersion) = (Self.VERSION_1_1))).append('||').appendboolean(Self.isExtension(openGLFeatureFactory.OPENGL_VERTEX_BUFFER_OBJECT)).toString(), Self, METHOD_NAME);
                if (((Self.glInstanceVersion) = (Self.VERSION_1_1)) or (Self.isExtension(openGLFeatureFactory.OPENGL_VERTEX_BUFFER_OBJECT))) then begin
                    if TAndroidUtil.isAndroid() then begin
                        TPreLogUtil.put('VBO implementation was detected, but disabled by default for Android', Self, METHOD_NAME);
                    end else begin
                        TPreLogUtil.put('VBO implementation was detected, but disabled for now', Self, METHOD_NAME);
                    end;
                end;
            end;
            stringUtil := TStringUtil.getInstance();
            if features.isDefault(openGLFeatureFactory.OPENGL_AUTO_SELECT) then begin
                if Self.vertexBufferObjectSupport then begin
                    openGLImageSpecificFactory.setImageFactory(TOpenGLESGL11VBOImageFactory.Create());
                end else begin
                    stringBuffer.append('OpenGL is on but ');
                    stringBuffer.append(stringUtil.toString(openGLFeatureFactory.OPENGL_DRAW_TEXTURE));
                    stringBuffer.append(' was not available');
                    TPreLogUtil.put(stringBuffer.toString(), Self, METHOD_NAME);
                    openGLImageSpecificFactory.setImageFactory(TOpenGLESGL10ImageFactory.Create());
                end;
            end else begin
                stringBuffer.append(stringUtil.toString(openGLFeatureFactory.OPENGL_AUTO_SELECT));
                stringBuffer.append(' is not on');
                TPreLogUtil.put(stringBuffer.toString(), Self, METHOD_NAME);
                openGLImageSpecificFactory.setImageFactory(TOpenGLESGL10ImageFactory.Create());
            end;
            maxTextureSizeArray := TJava.NewArray<Integer>(1);
            gl.glGetIntegerv(GL10.GL_MAX_TEXTURE_SIZE, maxTextureSizeArray, 0);
            Self.maxTextureSize := maxTextureSizeArray[0];
            Self.initialized := True;
        except
            on e: SysUtils.Exception do begin
            commonStrings := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings.EXCEPTION, Self, METHOD_NAME, e);
            end;
        end;
end;
    

function TOpenGLCapabilities.isExtension(gameFeature: TOpenGLFeature): Boolean;
var
  index: Integer;
begin
        index := (Pos(TJava.ToString(gameFeature.getName()), Self.glExtensions) - 1);
        if (index) >= (0) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TOpenGLCapabilities.isGlExtensionDrawTexture: Boolean;
begin
        Self.requireInitialization();
        Exit(Self.glExtensionDrawTexture);
end;
    

function TOpenGLCapabilities.isGlExtensionGPUShader100: Boolean;
begin
        Exit(Self.glExtensionGPUShader100);
end;
    

function TOpenGLCapabilities.isGlExtensionGPUShader4: Boolean;
begin
        Self.requireInitialization();
        Exit(Self.glExtensionGPUShader4);
end;
    

function TOpenGLCapabilities.getGlVersion: string;
begin
        Self.requireInitialization();
        Exit(Self.glVersion);
end;
    

function TOpenGLCapabilities.getGlVersionString: string;
begin
        Self.requireInitialization();
        Exit(Self.glVersionString);
end;
    

function TOpenGLCapabilities.getGlShaderVersion: string;
begin
        Self.requireInitialization();
        Exit(Self.glShaderVersionString);
end;
    

function TOpenGLCapabilities.isGlThreedDrawTexture: Boolean;
begin
        Self.requireInitialization();
        Exit(Self.glThreedDrawTexture);
end;
    

function TOpenGLCapabilities.getGlRenderer: string;
begin
        Self.requireInitialization();
        Exit(Self.glRenderer);
end;
    

function TOpenGLCapabilities.isVertexBufferObjectSupport: Boolean;
begin
        Self.requireInitialization();
        Exit(Self.vertexBufferObjectSupport);
end;
    

function TOpenGLCapabilities.isTextureSizeValid(widthAndHeight: Integer): Boolean;
begin
        Self.requireInitialization();
        if (Self.maxTextureSize) >= (widthAndHeight) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TOpenGLCapabilities.toString: string;
var
  commonSeps: TCommonSeps;
  stringBuffer: TStringMaker;
  tokenizer: TTokenizer;
  list: TBasicArrayList;
  size: Integer;
  index: Integer;
  commonStrings: TCommonStrings;
begin
        commonSeps := TCommonSeps.getInstance();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('GL_VERSION: ');
        stringBuffer.append(Self.glVersionString);
        stringBuffer.append(' GL_SHADING_LANGUAGE_VERSION: ');
        stringBuffer.append(Self.glShaderVersionString);
        stringBuffer.append(' GL_RENDERER: ');
        stringBuffer.append(Self.glRenderer);
        stringBuffer.append(' GL_VENDOR: ');
        stringBuffer.append(Self.glVendor);
        stringBuffer.append(commonSeps.NEW_LINE);
        stringBuffer.append(' Is Accelerated: ');
        stringBuffer.append(Self.acceleratedString);
        stringBuffer.append(commonSeps.NEW_LINE);
        stringBuffer.append(' VBO Support: ');
        stringBuffer.appendboolean(Self.isVertexBufferObjectSupport());
        stringBuffer.append(commonSeps.NEW_LINE);
        stringBuffer.append(' Max Texture Size: ');
        stringBuffer.appendint(Self.maxTextureSize);
        stringBuffer.append(commonSeps.NEW_LINE);
        stringBuffer.append(' GL_EXTENSIONS: ');
        try
            tokenizer := TTokenizer.Create(commonSeps.SPACE);
            list := tokenizer.getTokensFromString(Self.glExtensions, TBasicArrayListD.Create());
            size := list.size();
            for index := 0 to size - 1 do begin
                stringBuffer.append(commonSeps.NEW_LINE);
                stringBuffer.append(Self.stringUtil.toString(list.objectArray[index]));
            end;
        except
            on e: SysUtils.Exception do begin
            commonStrings := TCommonStrings.getInstance();
            TPreLogUtil.putOE(commonStrings.EXCEPTION, Self, commonStrings.TOSTRING, e);
            end;
        end;
        Exit(stringBuffer.toString());
end;

initialization
  TOpenGLCapabilities.instance := TOpenGLCapabilities.Create();

end.

