{
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.device
unit NullGL10;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, StringUtil;

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

  TNullGL10 = class(TInterfacedObject, IGL10)
  public
    class var NULL_GL10: TNullGL10;
    constructor Create;
        procedure glActiveTexture(texture: Integer); virtual;
        procedure glAlphaFunc(func: Integer; ref: Single); virtual;
        procedure glBindTexture(target: Integer; texture: Integer); virtual;
        procedure glBlendFunc(sfactor: Integer; dfactor: Integer); virtual;
        procedure glClear(mask: Integer); virtual;
        procedure glClearColor(red: Single; green: Single; blue: Single; alpha: Single); virtual;
        procedure glClearDepthf(depth: Single); virtual;
        procedure glClearStencil(s: Integer); virtual;
        procedure glClientActiveTexture(texture: Integer); virtual;
        procedure glColor4f(red: Single; green: Single; blue: Single; alpha: Single); virtual;
        procedure glColorMask(red: Boolean; green: Boolean; blue: Boolean; alpha: Boolean); virtual;
        procedure glColorPointer(size: Integer; type_: Integer; stride: Integer; pointer_: TBuffer); virtual;
        procedure glCompressedTexImage2D(target: Integer; level: Integer; internalformat: Integer; width: Integer; height: Integer; border: Integer; imageSize: Integer; data: TBuffer); virtual;
        procedure glCompressedTexSubImage2D(target: Integer; level: Integer; xoffset: Integer; yoffset: Integer; width: Integer; height: Integer; format: Integer; imageSize: Integer; data: TBuffer); virtual;
        procedure glCopyTexImage2D(target: Integer; level: Integer; internalformat: Integer; x: Integer; y: Integer; width: Integer; height: Integer; border: Integer); virtual;
        procedure glCopyTexSubImage2D(target: Integer; level: Integer; xoffset: Integer; yoffset: Integer; x: Integer; y: Integer; width: Integer; height: Integer); virtual;
        procedure glCullFace(mode: Integer); virtual;
        procedure glDeleteTextures(n: Integer; textures: TArray<Integer>; offset: Integer); overload; virtual;
        procedure glDeleteTextures(n: Integer; textures: TIntBuffer); overload; virtual;
        procedure glDepthFunc(func: Integer); virtual;
        procedure glDepthMask(flag: Boolean); virtual;
        procedure glDepthRangef(zNear: Single; zFar: Single); virtual;
        procedure glDisable(cap: Integer); virtual;
        procedure glDisableClientState(array_: Integer); virtual;
        procedure glDrawArrays(mode: Integer; first: Integer; count: Integer); virtual;
        procedure glDrawElements(mode: Integer; count: Integer; type_: Integer; indices: TBuffer); virtual;
        procedure glEnable(cap: Integer); virtual;
        procedure glEnableClientState(array_: Integer); virtual;
        procedure glFinish; virtual;
        procedure glFlush; virtual;
        procedure glFogf(pname: Integer; param: Single); virtual;
        procedure glFogfv(pname: Integer; params: TArray<Single>; offset: Integer); overload; virtual;
        procedure glFogfv(pname: Integer; params: TFloatBuffer); overload; virtual;
        procedure glFrontFace(mode: Integer); virtual;
        procedure glFrustumf(left: Single; right: Single; bottom: Single; top: Single; zNear: Single; zFar: Single); virtual;
        procedure glGenTextures(n: Integer; textures: TArray<Integer>; offset: Integer); overload; virtual;
        procedure glGenTextures(n: Integer; textures: TIntBuffer); overload; virtual;
        function glGetError: Integer; virtual;
        procedure glGetIntegerv(pname: Integer; params: TArray<Integer>; offset: Integer); overload; virtual;
        procedure glGetIntegerv(pname: Integer; params: TIntBuffer); overload; virtual;
        function glGetString(name: Integer): string; virtual;
        procedure glHint(target: Integer; mode: Integer); virtual;
        procedure glLightModelf(pname: Integer; param: Single); virtual;
        procedure glLightModelfv(pname: Integer; params: TArray<Single>; offset: Integer); overload; virtual;
        procedure glLightModelfv(pname: Integer; params: TFloatBuffer); overload; virtual;
        procedure glLightf(light: Integer; pname: Integer; param: Single); virtual;
        procedure glLightfv(light: Integer; pname: Integer; params: TArray<Single>; offset: Integer); overload; virtual;
        procedure glLightfv(light: Integer; pname: Integer; params: TFloatBuffer); overload; virtual;
        procedure glLineWidth(width: Single); virtual;
        procedure glLoadIdentity; virtual;
        procedure glLoadMatrixf(m: TArray<Single>; offset: Integer); overload; virtual;
        procedure glLoadMatrixf(m: TFloatBuffer); overload; virtual;
        procedure glLogicOp(opcode: Integer); virtual;
        procedure glMaterialf(face: Integer; pname: Integer; param: Single); virtual;
        procedure glMaterialfv(face: Integer; pname: Integer; params: TArray<Single>; offset: Integer); overload; virtual;
        procedure glMaterialfv(face: Integer; pname: Integer; params: TFloatBuffer); overload; virtual;
        procedure glMatrixMode(mode: Integer); virtual;
        procedure glMultMatrixf(m: TArray<Single>; offset: Integer); overload; virtual;
        procedure glMultMatrixf(m: TFloatBuffer); overload; virtual;
        procedure glMultiTexCoord4f(target: Integer; s: Single; t: Single; r: Single; q: Single); virtual;
        procedure glNormal3f(nx: Single; ny: Single; nz: Single); virtual;
        procedure glNormalPointer(type_: Integer; stride: Integer; pointer_: TBuffer); virtual;
        procedure glOrthof(left: Single; right: Single; bottom: Single; top: Single; zNear: Single; zFar: Single); virtual;
        procedure glPixelStorei(pname: Integer; param: Integer); virtual;
        procedure glPointSize(size: Single); virtual;
        procedure glPolygonOffset(factor: Single; units: Single); virtual;
        procedure glPopMatrix; virtual;
        procedure glPushMatrix; virtual;
        procedure glReadPixels(x: Integer; y: Integer; width: Integer; height: Integer; format: Integer; type_: Integer; pixels: TBuffer); virtual;
        procedure glRotatef(angle: Single; x: Single; y: Single; z: Single); virtual;
        procedure glRotatex(angle: Integer; x: Integer; y: Integer; z: Integer); virtual;
        procedure glSampleCoverage(value: Single; invert: Boolean); virtual;
        procedure glScalef(x: Single; y: Single; z: Single); virtual;
        procedure glScalex(x: Integer; y: Integer; z: Integer); virtual;
        procedure glScissor(x: Integer; y: Integer; width: Integer; height: Integer); virtual;
        procedure glShadeModel(mode: Integer); virtual;
        procedure glStencilFunc(func: Integer; ref: Integer; mask: Integer); virtual;
        procedure glStencilMask(mask: Integer); virtual;
        procedure glStencilOp(fail: Integer; zfail: Integer; zpass: Integer); virtual;
        procedure glTexCoordPointer(size: Integer; type_: Integer; stride: Integer; pointer_: TBuffer); virtual;
        procedure glTexEnvf(target: Integer; pname: Integer; param: Single); virtual;
        procedure glTexEnvfv(target: Integer; pname: Integer; params: TArray<Single>; offset: Integer); overload; virtual;
        procedure glTexEnvfv(target: Integer; pname: Integer; params: TFloatBuffer); overload; virtual;
        procedure glTexImage2D(target: Integer; level: Integer; internalformat: Integer; width: Integer; height: Integer; border: Integer; format: Integer; type_: Integer; pixels: TBuffer); virtual;
        procedure glTexParameterf(target: Integer; pname: Integer; param: Single); virtual;
        procedure glTexParameteri(target: Integer; pname: Integer; param: Integer); virtual;
        procedure glTexSubImage2D(target: Integer; level: Integer; xoffset: Integer; yoffset: Integer; width: Integer; height: Integer; format: Integer; type_: Integer; pixels: TBuffer); virtual;
        procedure glTranslatef(x: Single; y: Single; z: Single); virtual;
        procedure glVertexPointer(size: Integer; type_: Integer; stride: Integer; pointer_: TBuffer); virtual;
        procedure glViewport(x: Integer; y: Integer; width: Integer; height: Integer); virtual;
        procedure glBegin(i: Integer); virtual;
        procedure glEnd; virtual;
        procedure glVertex3f(f: Single; f2: Single; f3: Single); virtual;
        procedure glPolygonMode(i: Integer; i1: Integer); virtual;
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


constructor TNullGL10.Create;
begin
  inherited Create;
end;
    

procedure TNullGL10.glActiveTexture(texture: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glAlphaFunc(func: Integer; ref: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glBindTexture(target: Integer; texture: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glBlendFunc(sfactor: Integer; dfactor: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glClear(mask: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glClearColor(red: Single; green: Single; blue: Single; alpha: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glClearDepthf(depth: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glClearStencil(s: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glClientActiveTexture(texture: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glColor4f(red: Single; green: Single; blue: Single; alpha: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glColorMask(red: Boolean; green: Boolean; blue: Boolean; alpha: Boolean);
begin
        Exit;
end;
    

procedure TNullGL10.glColorPointer(size: Integer; type_: Integer; stride: Integer; pointer_: TBuffer);
begin
        Exit;
end;
    

procedure TNullGL10.glCompressedTexImage2D(target: Integer; level: Integer; internalformat: Integer; width: Integer; height: Integer; border: Integer; imageSize: Integer; data: TBuffer);
begin
        Exit;
end;
    

procedure TNullGL10.glCompressedTexSubImage2D(target: Integer; level: Integer; xoffset: Integer; yoffset: Integer; width: Integer; height: Integer; format: Integer; imageSize: Integer; data: TBuffer);
begin
        Exit;
end;
    

procedure TNullGL10.glCopyTexImage2D(target: Integer; level: Integer; internalformat: Integer; x: Integer; y: Integer; width: Integer; height: Integer; border: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glCopyTexSubImage2D(target: Integer; level: Integer; xoffset: Integer; yoffset: Integer; x: Integer; y: Integer; width: Integer; height: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glCullFace(mode: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glDeleteTextures(n: Integer; textures: TArray<Integer>; offset: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glDeleteTextures(n: Integer; textures: TIntBuffer);
begin
        Exit;
end;
    

procedure TNullGL10.glDepthFunc(func: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glDepthMask(flag: Boolean);
begin
        Exit;
end;
    

procedure TNullGL10.glDepthRangef(zNear: Single; zFar: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glDisable(cap: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glDisableClientState(array_: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glDrawArrays(mode: Integer; first: Integer; count: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glDrawElements(mode: Integer; count: Integer; type_: Integer; indices: TBuffer);
begin
        Exit;
end;
    

procedure TNullGL10.glEnable(cap: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glEnableClientState(array_: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glFinish;
begin
        Exit;
end;
    

procedure TNullGL10.glFlush;
begin
        Exit;
end;
    

procedure TNullGL10.glFogf(pname: Integer; param: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glFogfv(pname: Integer; params: TArray<Single>; offset: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glFogfv(pname: Integer; params: TFloatBuffer);
begin
        Exit;
end;
    

procedure TNullGL10.glFrontFace(mode: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glFrustumf(left: Single; right: Single; bottom: Single; top: Single; zNear: Single; zFar: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glGenTextures(n: Integer; textures: TArray<Integer>; offset: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glGenTextures(n: Integer; textures: TIntBuffer);
begin
        Exit;
end;
    

function TNullGL10.glGetError: Integer;
begin
        Exit(0);
end;
    

procedure TNullGL10.glGetIntegerv(pname: Integer; params: TArray<Integer>; offset: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glGetIntegerv(pname: Integer; params: TIntBuffer);
begin
        Exit;
end;
    

function TNullGL10.glGetString(name: Integer): string;
begin
        Exit(TStringUtil.getInstance().EMPTY_STRING);
end;
    

procedure TNullGL10.glHint(target: Integer; mode: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glLightModelf(pname: Integer; param: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glLightModelfv(pname: Integer; params: TArray<Single>; offset: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glLightModelfv(pname: Integer; params: TFloatBuffer);
begin
        Exit;
end;
    

procedure TNullGL10.glLightf(light: Integer; pname: Integer; param: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glLightfv(light: Integer; pname: Integer; params: TArray<Single>; offset: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glLightfv(light: Integer; pname: Integer; params: TFloatBuffer);
begin
        Exit;
end;
    

procedure TNullGL10.glLineWidth(width: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glLoadIdentity;
begin
        Exit;
end;
    

procedure TNullGL10.glLoadMatrixf(m: TArray<Single>; offset: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glLoadMatrixf(m: TFloatBuffer);
begin
        Exit;
end;
    

procedure TNullGL10.glLogicOp(opcode: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glMaterialf(face: Integer; pname: Integer; param: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glMaterialfv(face: Integer; pname: Integer; params: TArray<Single>; offset: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glMaterialfv(face: Integer; pname: Integer; params: TFloatBuffer);
begin
        Exit;
end;
    

procedure TNullGL10.glMatrixMode(mode: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glMultMatrixf(m: TArray<Single>; offset: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glMultMatrixf(m: TFloatBuffer);
begin
        Exit;
end;
    

procedure TNullGL10.glMultiTexCoord4f(target: Integer; s: Single; t: Single; r: Single; q: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glNormal3f(nx: Single; ny: Single; nz: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glNormalPointer(type_: Integer; stride: Integer; pointer_: TBuffer);
begin
        Exit;
end;
    

procedure TNullGL10.glOrthof(left: Single; right: Single; bottom: Single; top: Single; zNear: Single; zFar: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glPixelStorei(pname: Integer; param: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glPointSize(size: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glPolygonOffset(factor: Single; units: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glPopMatrix;
begin
        Exit;
end;
    

procedure TNullGL10.glPushMatrix;
begin
        Exit;
end;
    

procedure TNullGL10.glReadPixels(x: Integer; y: Integer; width: Integer; height: Integer; format: Integer; type_: Integer; pixels: TBuffer);
begin
        Exit;
end;
    

procedure TNullGL10.glRotatef(angle: Single; x: Single; y: Single; z: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glRotatex(angle: Integer; x: Integer; y: Integer; z: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glSampleCoverage(value: Single; invert: Boolean);
begin
        Exit;
end;
    

procedure TNullGL10.glScalef(x: Single; y: Single; z: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glScalex(x: Integer; y: Integer; z: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glScissor(x: Integer; y: Integer; width: Integer; height: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glShadeModel(mode: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glStencilFunc(func: Integer; ref: Integer; mask: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glStencilMask(mask: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glStencilOp(fail: Integer; zfail: Integer; zpass: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glTexCoordPointer(size: Integer; type_: Integer; stride: Integer; pointer_: TBuffer);
begin
        Exit;
end;
    

procedure TNullGL10.glTexEnvf(target: Integer; pname: Integer; param: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glTexEnvfv(target: Integer; pname: Integer; params: TArray<Single>; offset: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glTexEnvfv(target: Integer; pname: Integer; params: TFloatBuffer);
begin
        Exit;
end;
    

procedure TNullGL10.glTexImage2D(target: Integer; level: Integer; internalformat: Integer; width: Integer; height: Integer; border: Integer; format: Integer; type_: Integer; pixels: TBuffer);
begin
        Exit;
end;
    

procedure TNullGL10.glTexParameterf(target: Integer; pname: Integer; param: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glTexParameteri(target: Integer; pname: Integer; param: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glTexSubImage2D(target: Integer; level: Integer; xoffset: Integer; yoffset: Integer; width: Integer; height: Integer; format: Integer; type_: Integer; pixels: TBuffer);
begin
        Exit;
end;
    

procedure TNullGL10.glTranslatef(x: Single; y: Single; z: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glVertexPointer(size: Integer; type_: Integer; stride: Integer; pointer_: TBuffer);
begin
        Exit;
end;
    

procedure TNullGL10.glViewport(x: Integer; y: Integer; width: Integer; height: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glBegin(i: Integer);
begin
        Exit;
end;
    

procedure TNullGL10.glEnd;
begin
        Exit;
end;
    

procedure TNullGL10.glVertex3f(f: Single; f2: Single; f3: Single);
begin
        Exit;
end;
    

procedure TNullGL10.glPolygonMode(i: Integer; i1: Integer);
begin
        Exit;
end;

initialization
  TNullGL10.NULL_GL10 := TNullGL10.Create();

end.

