// Generated Code Do Not Modify
// package javax.microedition.khronos.opengles
unit GL10;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, GL;

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

  IGL10 = interface(IGL)
        procedure glActiveTexture(texture: Integer);
        procedure glAlphaFunc(func: Integer; ref: Single);
        procedure glBindTexture(target: Integer; texture: Integer);
        procedure glBlendFunc(sfactor: Integer; dfactor: Integer);
        procedure glClear(mask: Integer);
        procedure glClearColor(red: Single; green: Single; blue: Single; alpha: Single);
        procedure glClearDepthf(depth: Single);
        procedure glClearStencil(s: Integer);
        procedure glClientActiveTexture(texture: Integer);
        procedure glColor4f(red: Single; green: Single; blue: Single; alpha: Single);
        procedure glColorMask(red: Boolean; green: Boolean; blue: Boolean; alpha: Boolean);
        procedure glColorPointer(size: Integer; type_: Integer; stride: Integer; pointer_: TBuffer);
        procedure glCompressedTexImage2D(target: Integer; level: Integer; internalformat: Integer; width: Integer; height: Integer; border: Integer; imageSize: Integer; data: TBuffer);
        procedure glCompressedTexSubImage2D(target: Integer; level: Integer; xoffset: Integer; yoffset: Integer; width: Integer; height: Integer; format: Integer; imageSize: Integer; data: TBuffer);
        procedure glCopyTexImage2D(target: Integer; level: Integer; internalformat: Integer; x: Integer; y: Integer; width: Integer; height: Integer; border: Integer);
        procedure glCopyTexSubImage2D(target: Integer; level: Integer; xoffset: Integer; yoffset: Integer; x: Integer; y: Integer; width: Integer; height: Integer);
        procedure glCullFace(mode: Integer);
        procedure glDeleteTextures(n: Integer; textures: TArray<Integer>; offset: Integer);
        procedure glDeleteTextures(n: Integer; textures: TIntBuffer);
        procedure glDepthFunc(func: Integer);
        procedure glDepthMask(flag: Boolean);
        procedure glDepthRangef(zNear: Single; zFar: Single);
        procedure glDisable(cap: Integer);
        procedure glDisableClientState(array_: Integer);
        procedure glDrawArrays(mode: Integer; first: Integer; count: Integer);
        procedure glDrawElements(mode: Integer; count: Integer; type_: Integer; indices: TBuffer);
        procedure glEnable(cap: Integer);
        procedure glEnableClientState(array_: Integer);
        procedure glFinish;
        procedure glFlush;
        procedure glFogf(pname: Integer; param: Single);
        procedure glFogfv(pname: Integer; params: TArray<Single>; offset: Integer);
        procedure glFogfv(pname: Integer; params: TFloatBuffer);
        procedure glFrontFace(mode: Integer);
        procedure glFrustumf(left: Single; right: Single; bottom: Single; top: Single; zNear: Single; zFar: Single);
        procedure glGenTextures(n: Integer; textures: TArray<Integer>; offset: Integer);
        procedure glGenTextures(n: Integer; textures: TIntBuffer);
        function glGetError: Integer;
        procedure glGetIntegerv(pname: Integer; params: TArray<Integer>; offset: Integer);
        procedure glGetIntegerv(pname: Integer; params: TIntBuffer);
        function glGetString(name: Integer): string;
        procedure glHint(target: Integer; mode: Integer);
        procedure glLightModelf(pname: Integer; param: Single);
        procedure glLightModelfv(pname: Integer; params: TArray<Single>; offset: Integer);
        procedure glLightModelfv(pname: Integer; params: TFloatBuffer);
        procedure glLightf(light: Integer; pname: Integer; param: Single);
        procedure glLightfv(light: Integer; pname: Integer; params: TArray<Single>; offset: Integer);
        procedure glLightfv(light: Integer; pname: Integer; params: TFloatBuffer);
        procedure glLineWidth(width: Single);
        procedure glLoadIdentity;
        procedure glLoadMatrixf(m: TArray<Single>; offset: Integer);
        procedure glLoadMatrixf(m: TFloatBuffer);
        procedure glLogicOp(opcode: Integer);
        procedure glMaterialf(face: Integer; pname: Integer; param: Single);
        procedure glMaterialfv(face: Integer; pname: Integer; params: TArray<Single>; offset: Integer);
        procedure glMaterialfv(face: Integer; pname: Integer; params: TFloatBuffer);
        procedure glMatrixMode(mode: Integer);
        procedure glMultMatrixf(m: TArray<Single>; offset: Integer);
        procedure glMultMatrixf(m: TFloatBuffer);
        procedure glMultiTexCoord4f(target: Integer; s: Single; t: Single; r: Single; q: Single);
        procedure glNormal3f(nx: Single; ny: Single; nz: Single);
        procedure glNormalPointer(type_: Integer; stride: Integer; pointer_: TBuffer);
        procedure glOrthof(left: Single; right: Single; bottom: Single; top: Single; zNear: Single; zFar: Single);
        procedure glPixelStorei(pname: Integer; param: Integer);
        procedure glPointSize(size: Single);
        procedure glPolygonOffset(factor: Single; units: Single);
        procedure glPopMatrix;
        procedure glPushMatrix;
        procedure glReadPixels(x: Integer; y: Integer; width: Integer; height: Integer; format: Integer; type_: Integer; pixels: TBuffer);
        procedure glRotatef(angle: Single; x: Single; y: Single; z: Single);
        procedure glRotatex(angle: Integer; x: Integer; y: Integer; z: Integer);
        procedure glSampleCoverage(value: Single; invert: Boolean);
        procedure glScalef(x: Single; y: Single; z: Single);
        procedure glScalex(x: Integer; y: Integer; z: Integer);
        procedure glScissor(x: Integer; y: Integer; width: Integer; height: Integer);
        procedure glShadeModel(mode: Integer);
        procedure glStencilFunc(func: Integer; ref: Integer; mask: Integer);
        procedure glStencilMask(mask: Integer);
        procedure glStencilOp(fail: Integer; zfail: Integer; zpass: Integer);
        procedure glTexCoordPointer(size: Integer; type_: Integer; stride: Integer; pointer_: TBuffer);
        procedure glTexEnvf(target: Integer; pname: Integer; param: Single);
        procedure glTexEnvfv(target: Integer; pname: Integer; params: TArray<Single>; offset: Integer);
        procedure glTexEnvfv(target: Integer; pname: Integer; params: TFloatBuffer);
        procedure glTexImage2D(target: Integer; level: Integer; internalformat: Integer; width: Integer; height: Integer; border: Integer; format: Integer; type_: Integer; pixels: TBuffer);
        procedure glTexParameterf(target: Integer; pname: Integer; param: Single);
        procedure glTexParameteri(target: Integer; pname: Integer; param: Integer);
        procedure glTexSubImage2D(target: Integer; level: Integer; xoffset: Integer; yoffset: Integer; width: Integer; height: Integer; format: Integer; type_: Integer; pixels: TBuffer);
        procedure glTranslatef(x: Single; y: Single; z: Single);
        procedure glVertexPointer(size: Integer; type_: Integer; stride: Integer; pointer_: TBuffer);
        procedure glViewport(x: Integer; y: Integer; width: Integer; height: Integer);
        procedure glBegin(i: Integer);
        procedure glEnd;
        procedure glVertex3f(f: Single; f2: Single; f3: Single);
        procedure glPolygonMode(i: Integer; i1: Integer);
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


initialization
  IGL10.GL_ADD := 260;
  IGL10.GL_ALIASED_LINE_WIDTH_RANGE := 33902;
  IGL10.GL_ALIASED_POINT_SIZE_RANGE := 33901;
  IGL10.GL_ALPHA := 6406;
  IGL10.GL_ALPHA_BITS := 3413;
  IGL10.GL_ALPHA_TEST := 3008;
  IGL10.GL_ALWAYS := 519;
  IGL10.GL_AMBIENT := 4608;
  IGL10.GL_AMBIENT_AND_DIFFUSE := 5634;
  IGL10.GL_AND := 5377;
  IGL10.GL_AND_INVERTED := 5380;
  IGL10.GL_AND_REVERSE := 5378;
  IGL10.GL_BACK := 1029;
  IGL10.GL_BLEND := 3042;
  IGL10.GL_BLUE_BITS := 3412;
  IGL10.GL_BYTE := 5120;
  IGL10.GL_CCW := 2305;
  IGL10.GL_CLAMP_TO_EDGE := 33071;
  IGL10.GL_CLEAR := 5376;
  IGL10.GL_COLOR_ARRAY := 32886;
  IGL10.GL_COLOR_BUFFER_BIT := 16384;
  IGL10.GL_COLOR_LOGIC_OP := 3058;
  IGL10.GL_COLOR_MATERIAL := 2903;
  IGL10.GL_COMPRESSED_TEXTURE_FORMATS := 34467;
  IGL10.GL_CONSTANT_ATTENUATION := 4615;
  IGL10.GL_COPY := 5379;
  IGL10.GL_COPY_INVERTED := 5388;
  IGL10.GL_CULL_FACE := 2884;
  IGL10.GL_CW := 2304;
  IGL10.GL_DECAL := 8449;
  IGL10.GL_DECR := 7683;
  IGL10.GL_DEPTH_BITS := 3414;
  IGL10.GL_DEPTH_BUFFER_BIT := 256;
  IGL10.GL_DEPTH_TEST := 2929;
  IGL10.GL_DIFFUSE := 4609;
  IGL10.GL_DITHER := 3024;
  IGL10.GL_DONT_CARE := 4352;
  IGL10.GL_DST_ALPHA := 772;
  IGL10.GL_DST_COLOR := 774;
  IGL10.GL_EMISSION := 5632;
  IGL10.GL_EQUAL := 514;
  IGL10.GL_EQUIV := 5385;
  IGL10.GL_EXP := 2048;
  IGL10.GL_EXP2 := 2049;
  IGL10.GL_EXTENSIONS := 7939;
  IGL10.GL_FALSE := 0;
  IGL10.GL_FASTEST := 4353;
  IGL10.GL_FIXED := 5132;
  IGL10.GL_FLAT := 7424;
  IGL10.GL_FLOAT := 5126;
  IGL10.GL_FOG := 2912;
  IGL10.GL_FOG_COLOR := 2918;
  IGL10.GL_FOG_DENSITY := 2914;
  IGL10.GL_FOG_END := 2916;
  IGL10.GL_FOG_HINT := 3156;
  IGL10.GL_FOG_MODE := 2917;
  IGL10.GL_FOG_START := 2915;
  IGL10.GL_FRONT := 1028;
  IGL10.GL_FRONT_AND_BACK := 1032;
  IGL10.GL_GEQUAL := 518;
  IGL10.GL_GREATER := 516;
  IGL10.GL_GREEN_BITS := 3411;
  IGL10.GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES := 35739;
  IGL10.GL_IMPLEMENTATION_COLOR_READ_TYPE_OES := 35738;
  IGL10.GL_INCR := 7682;
  IGL10.GL_INVALID_ENUM := 1280;
  IGL10.GL_INVALID_OPERATION := 1282;
  IGL10.GL_INVALID_VALUE := 1281;
  IGL10.GL_INVERT := 5386;
  IGL10.GL_KEEP := 7680;
  IGL10.GL_LEQUAL := 515;
  IGL10.GL_LESS := 513;
  IGL10.GL_LIGHT_MODEL_AMBIENT := 2899;
  IGL10.GL_LIGHT_MODEL_TWO_SIDE := 2898;
  IGL10.GL_LIGHT0 := 16384;
  IGL10.GL_LIGHT1 := 16385;
  IGL10.GL_LIGHT2 := 16386;
  IGL10.GL_LIGHT3 := 16387;
  IGL10.GL_LIGHT4 := 16388;
  IGL10.GL_LIGHT5 := 16389;
  IGL10.GL_LIGHT6 := 16390;
  IGL10.GL_LIGHT7 := 16391;
  IGL10.GL_LIGHTING := 2896;
  IGL10.GL_LINE_LOOP := 2;
  IGL10.GL_LINE_SMOOTH := 2848;
  IGL10.GL_LINE_SMOOTH_HINT := 3154;
  IGL10.GL_LINE_STRIP := 3;
  IGL10.GL_LINEAR := 9729;
  IGL10.GL_LINEAR_ATTENUATION := 4616;
  IGL10.GL_LINEAR_MIPMAP_LINEAR := 9987;
  IGL10.GL_LINEAR_MIPMAP_NEAREST := 9985;
  IGL10.GL_LINES := 1;
  IGL10.GL_LUMINANCE := 6409;
  IGL10.GL_LUMINANCE_ALPHA := 6410;
  IGL10.GL_MAX_ELEMENTS_INDICES := 33001;
  IGL10.GL_MAX_ELEMENTS_VERTICES := 33000;
  IGL10.GL_MAX_LIGHTS := 3377;
  IGL10.GL_MAX_MODELVIEW_STACK_DEPTH := 3382;
  IGL10.GL_MAX_PROJECTION_STACK_DEPTH := 3384;
  IGL10.GL_MAX_TEXTURE_SIZE := 3379;
  IGL10.GL_MAX_TEXTURE_STACK_DEPTH := 3385;
  IGL10.GL_MAX_TEXTURE_UNITS := 34018;
  IGL10.GL_MAX_VIEWPORT_DIMS := 3386;
  IGL10.GL_MODELVIEW := 5888;
  IGL10.GL_MODULATE := 8448;
  IGL10.GL_MULTISAMPLE := 32925;
  IGL10.GL_NAND := 5390;
  IGL10.GL_NEAREST := 9728;
  IGL10.GL_NEAREST_MIPMAP_LINEAR := 9986;
  IGL10.GL_NEAREST_MIPMAP_NEAREST := 9984;
  IGL10.GL_NEVER := 512;
  IGL10.GL_NICEST := 4354;
  IGL10.GL_NO_ERROR := 0;
  IGL10.GL_NOOP := 5381;
  IGL10.GL_NOR := 5384;
  IGL10.GL_NORMAL_ARRAY := 32885;
  IGL10.GL_NORMALIZE := 2977;
  IGL10.GL_NOTEQUAL := 517;
  IGL10.GL_NUM_COMPRESSED_TEXTURE_FORMATS := 34466;
  IGL10.GL_ONE := 1;
  IGL10.GL_ONE_MINUS_DST_ALPHA := 773;
  IGL10.GL_ONE_MINUS_DST_COLOR := 775;
  IGL10.GL_ONE_MINUS_SRC_ALPHA := 771;
  IGL10.GL_ONE_MINUS_SRC_COLOR := 769;
  IGL10.GL_OR := 5383;
  IGL10.GL_OR_INVERTED := 5389;
  IGL10.GL_OR_REVERSE := 5387;
  IGL10.GL_OUT_OF_MEMORY := 1285;
  IGL10.GL_PACK_ALIGNMENT := 3333;
  IGL10.GL_PALETTE4_R5_G6_B5_OES := 35730;
  IGL10.GL_PALETTE4_RGB5_A1_OES := 35732;
  IGL10.GL_PALETTE4_RGB8_OES := 35728;
  IGL10.GL_PALETTE4_RGBA4_OES := 35731;
  IGL10.GL_PALETTE4_RGBA8_OES := 35729;
  IGL10.GL_PALETTE8_R5_G6_B5_OES := 35735;
  IGL10.GL_PALETTE8_RGB5_A1_OES := 35737;
  IGL10.GL_PALETTE8_RGB8_OES := 35733;
  IGL10.GL_PALETTE8_RGBA4_OES := 35736;
  IGL10.GL_PALETTE8_RGBA8_OES := 35734;
  IGL10.GL_PERSPECTIVE_CORRECTION_HINT := 3152;
  IGL10.GL_POINT_SMOOTH := 2832;
  IGL10.GL_POINT_SMOOTH_HINT := 3153;
  IGL10.GL_POINTS := 0;
  IGL10.GL_POINT_FADE_THRESHOLD_SIZE := 33064;
  IGL10.GL_POINT_SIZE := 2833;
  IGL10.GL_POLYGON_OFFSET_FILL := 32823;
  IGL10.GL_POLYGON_SMOOTH_HINT := 3155;
  IGL10.GL_POSITION := 4611;
  IGL10.GL_PROJECTION := 5889;
  IGL10.GL_QUADRATIC_ATTENUATION := 4617;
  IGL10.GL_RED_BITS := 3410;
  IGL10.GL_RENDERER := 7937;
  IGL10.GL_REPEAT := 10497;
  IGL10.GL_REPLACE := 7681;
  IGL10.GL_RESCALE_NORMAL := 32826;
  IGL10.GL_RGB := 6407;
  IGL10.GL_RGBA := 6408;
  IGL10.GL_SAMPLE_ALPHA_TO_COVERAGE := 32926;
  IGL10.GL_SAMPLE_ALPHA_TO_ONE := 32927;
  IGL10.GL_SAMPLE_COVERAGE := 32928;
  IGL10.GL_SCISSOR_TEST := 3089;
  IGL10.GL_SET := 5391;
  IGL10.GL_SHININESS := 5633;
  IGL10.GL_SHORT := 5122;
  IGL10.GL_SMOOTH := 7425;
  IGL10.GL_SMOOTH_LINE_WIDTH_RANGE := 2850;
  IGL10.GL_SMOOTH_POINT_SIZE_RANGE := 2834;
  IGL10.GL_SPECULAR := 4610;
  IGL10.GL_SPOT_CUTOFF := 4614;
  IGL10.GL_SPOT_DIRECTION := 4612;
  IGL10.GL_SPOT_EXPONENT := 4613;
  IGL10.GL_SRC_ALPHA := 770;
  IGL10.GL_SRC_ALPHA_SATURATE := 776;
  IGL10.GL_SRC_COLOR := 768;
  IGL10.GL_STACK_OVERFLOW := 1283;
  IGL10.GL_STACK_UNDERFLOW := 1284;
  IGL10.GL_STENCIL_BITS := 3415;
  IGL10.GL_STENCIL_BUFFER_BIT := 1024;
  IGL10.GL_STENCIL_TEST := 2960;
  IGL10.GL_SUBPIXEL_BITS := 3408;
  IGL10.GL_TEXTURE := 5890;
  IGL10.GL_TEXTURE_2D := 3553;
  IGL10.GL_TEXTURE_COORD_ARRAY := 32888;
  IGL10.GL_TEXTURE_ENV := 8960;
  IGL10.GL_TEXTURE_ENV_COLOR := 8705;
  IGL10.GL_TEXTURE_ENV_MODE := 8704;
  IGL10.GL_TEXTURE_MAG_FILTER := 10240;
  IGL10.GL_TEXTURE_MIN_FILTER := 10241;
  IGL10.GL_TEXTURE_WRAP_S := 10242;
  IGL10.GL_TEXTURE_WRAP_T := 10243;
  IGL10.GL_TEXTURE0 := 33984;
  IGL10.GL_TEXTURE1 := 33985;
  IGL10.GL_TEXTURE2 := 33986;
  IGL10.GL_TEXTURE3 := 33987;
  IGL10.GL_TEXTURE4 := 33988;
  IGL10.GL_TEXTURE5 := 33989;
  IGL10.GL_TEXTURE6 := 33990;
  IGL10.GL_TEXTURE7 := 33991;
  IGL10.GL_TEXTURE8 := 33992;
  IGL10.GL_TEXTURE9 := 33993;
  IGL10.GL_TEXTURE10 := 33994;
  IGL10.GL_TEXTURE11 := 33995;
  IGL10.GL_TEXTURE12 := 33996;
  IGL10.GL_TEXTURE13 := 33997;
  IGL10.GL_TEXTURE14 := 33998;
  IGL10.GL_TEXTURE15 := 33999;
  IGL10.GL_TEXTURE16 := 34000;
  IGL10.GL_TEXTURE17 := 34001;
  IGL10.GL_TEXTURE18 := 34002;
  IGL10.GL_TEXTURE19 := 34003;
  IGL10.GL_TEXTURE20 := 34004;
  IGL10.GL_TEXTURE21 := 34005;
  IGL10.GL_TEXTURE22 := 34006;
  IGL10.GL_TEXTURE23 := 34007;
  IGL10.GL_TEXTURE24 := 34008;
  IGL10.GL_TEXTURE25 := 34009;
  IGL10.GL_TEXTURE26 := 34010;
  IGL10.GL_TEXTURE27 := 34011;
  IGL10.GL_TEXTURE28 := 34012;
  IGL10.GL_TEXTURE29 := 34013;
  IGL10.GL_TEXTURE30 := 34014;
  IGL10.GL_TEXTURE31 := 34015;
  IGL10.GL_TRIANGLE_FAN := 6;
  IGL10.GL_TRIANGLE_STRIP := 5;
  IGL10.GL_TRIANGLES := 4;
  IGL10.GL_TRUE := 1;
  IGL10.GL_UNPACK_ALIGNMENT := 3317;
  IGL10.GL_UNSIGNED_BYTE := 5121;
  IGL10.GL_UNSIGNED_SHORT := 5123;
  IGL10.GL_UNSIGNED_SHORT_4_4_4_4 := 32819;
  IGL10.GL_UNSIGNED_SHORT_5_5_5_1 := 32820;
  IGL10.GL_UNSIGNED_SHORT_5_6_5 := 33635;
  IGL10.GL_VENDOR := 7936;
  IGL10.GL_VERSION := 7938;
  IGL10.GL_VERTEX_ARRAY := 32884;
  IGL10.GL_XOR := 5382;
  IGL10.GL_ZERO := 0;

end.

