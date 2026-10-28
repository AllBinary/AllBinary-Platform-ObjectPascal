// Generated Code Do Not Modify
// package javax.microedition.khronos.opengles
unit GL11;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, GL10;

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

  IGL11 = interface(IGL10)
        procedure glBindBuffer(target: Integer; buffer: Integer);
        procedure glBufferData(target: Integer; size: Integer; data: TBuffer; usage: Integer);
        procedure glBufferSubData(target: Integer; offset: Integer; size: Integer; data: TBuffer);
        procedure glClipPlanef(plane: Integer; equation: TArray<Single>; offset: Integer);
        procedure glClipPlanef(plane: Integer; equation: TFloatBuffer);
        procedure glColor4ub(red: ShortInt; green: ShortInt; blue: ShortInt; alpha: ShortInt);
        procedure glColorPointer(size: Integer; type_: Integer; stride: Integer; offset: Integer);
        procedure glDeleteBuffers(n: Integer; buffers: TArray<Integer>; offset: Integer);
        procedure glDeleteBuffers(n: Integer; buffers: TIntBuffer);
        procedure glDrawElements(mode: Integer; count: Integer; type_: Integer; offset: Integer);
        procedure glGenBuffers(n: Integer; buffers: TArray<Integer>; offset: Integer);
        procedure glGenBuffers(n: Integer; buffers: TIntBuffer);
        procedure glGetBufferParameteriv(target: Integer; pname: Integer; params: TArray<Integer>; offset: Integer);
        procedure glGetBufferParameteriv(target: Integer; pname: Integer; params: TIntBuffer);
        procedure glGetClipPlanef(pname: Integer; eqn: TArray<Single>; offset: Integer);
        procedure glGetClipPlanef(pname: Integer; eqn: TFloatBuffer);
        procedure glGetFloatv(pname: Integer; params: TArray<Single>; offset: Integer);
        procedure glGetFloatv(pname: Integer; params: TFloatBuffer);
        procedure glGetLightfv(light: Integer; pname: Integer; params: TArray<Single>; offset: Integer);
        procedure glGetLightfv(light: Integer; pname: Integer; params: TFloatBuffer);
        procedure glGetMaterialfv(face: Integer; pname: Integer; params: TArray<Single>; offset: Integer);
        procedure glGetMaterialfv(face: Integer; pname: Integer; params: TFloatBuffer);
        procedure glGetTexEnviv(env: Integer; pname: Integer; params: TArray<Integer>; offset: Integer);
        procedure glGetTexEnviv(env: Integer; pname: Integer; params: TIntBuffer);
        procedure glGetTexParameterfv(target: Integer; pname: Integer; params: TArray<Single>; offset: Integer);
        procedure glGetTexParameterfv(target: Integer; pname: Integer; params: TFloatBuffer);
        procedure glGetTexParameteriv(target: Integer; pname: Integer; params: TArray<Integer>; offset: Integer);
        procedure glGetTexParameteriv(target: Integer; pname: Integer; params: TIntBuffer);
        function glIsBuffer(buffer: Integer): Boolean;
        function glIsEnabled(cap: Integer): Boolean;
        function glIsTexture(texture: Integer): Boolean;
        procedure glNormalPointer(type_: Integer; stride: Integer; offset: Integer);
        procedure glPointParameterf(pname: Integer; param: Single);
        procedure glPointParameterfv(pname: Integer; params: TArray<Single>; offset: Integer);
        procedure glPointParameterfv(pname: Integer; params: TFloatBuffer);
        procedure glTexCoordPointer(size: Integer; type_: Integer; stride: Integer; offset: Integer);
        procedure glTexEnvi(target: Integer; pname: Integer; param: Integer);
        procedure glTexEnviv(target: Integer; pname: Integer; params: TArray<Integer>; offset: Integer);
        procedure glTexEnviv(target: Integer; pname: Integer; params: TIntBuffer);
        procedure glTexParameterfv(target: Integer; pname: Integer; params: TArray<Single>; offset: Integer);
        procedure glTexParameterfv(target: Integer; pname: Integer; params: TFloatBuffer);
        procedure glTexParameteriv(target: Integer; pname: Integer; params: TArray<Integer>; offset: Integer);
        procedure glTexParameteriv(target: Integer; pname: Integer; params: TIntBuffer);
        procedure glVertexPointer(size: Integer; type_: Integer; stride: Integer; offset: Integer);
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
  IGL11.GL_ACTIVE_TEXTURE := 34016;
  IGL11.GL_ADD_SIGNED := 34164;
  IGL11.GL_ALPHA_SCALE := 3356;
  IGL11.GL_ALPHA_TEST_FUNC := 3009;
  IGL11.GL_ALPHA_TEST_REF := 3010;
  IGL11.GL_ARRAY_BUFFER := 34962;
  IGL11.GL_ARRAY_BUFFER_BINDING := 34964;
  IGL11.GL_BLEND_DST := 3040;
  IGL11.GL_BLEND_SRC := 3041;
  IGL11.GL_BUFFER_ACCESS := 35003;
  IGL11.GL_BUFFER_SIZE := 34660;
  IGL11.GL_BUFFER_USAGE := 34661;
  IGL11.GL_CLIENT_ACTIVE_TEXTURE := 34017;
  IGL11.GL_CLIP_PLANE0 := 12288;
  IGL11.GL_CLIP_PLANE1 := 12289;
  IGL11.GL_CLIP_PLANE2 := 12290;
  IGL11.GL_CLIP_PLANE3 := 12291;
  IGL11.GL_CLIP_PLANE4 := 12292;
  IGL11.GL_CLIP_PLANE5 := 12293;
  IGL11.GL_COLOR_ARRAY_BUFFER_BINDING := 34968;
  IGL11.GL_COLOR_ARRAY_POINTER := 32912;
  IGL11.GL_COLOR_ARRAY_SIZE := 32897;
  IGL11.GL_COLOR_ARRAY_STRIDE := 32899;
  IGL11.GL_COLOR_ARRAY_TYPE := 32898;
  IGL11.GL_COLOR_CLEAR_VALUE := 3106;
  IGL11.GL_COLOR_WRITEMASK := 3107;
  IGL11.GL_COMBINE := 34160;
  IGL11.GL_COMBINE_ALPHA := 34162;
  IGL11.GL_COMBINE_RGB := 34161;
  IGL11.GL_CONSTANT := 34166;
  IGL11.GL_COORD_REPLACE_OES := 34914;
  IGL11.GL_CULL_FACE_MODE := 2885;
  IGL11.GL_CURRENT_COLOR := 2816;
  IGL11.GL_CURRENT_NORMAL := 2818;
  IGL11.GL_CURRENT_TEXTURE_COORDS := 2819;
  IGL11.GL_DEPTH_CLEAR_VALUE := 2931;
  IGL11.GL_DEPTH_FUNC := 2932;
  IGL11.GL_DEPTH_RANGE := 2928;
  IGL11.GL_DEPTH_WRITEMASK := 2930;
  IGL11.GL_DOT3_RGB := 34478;
  IGL11.GL_DOT3_RGBA := 34479;
  IGL11.GL_DYNAMIC_DRAW := 35048;
  IGL11.GL_ELEMENT_ARRAY_BUFFER := 34963;
  IGL11.GL_ELEMENT_ARRAY_BUFFER_BINDING := 34965;
  IGL11.GL_FRONT_FACE := 2886;
  IGL11.GL_GENERATE_MIPMAP := 33169;
  IGL11.GL_GENERATE_MIPMAP_HINT := 33170;
  IGL11.GL_INTERPOLATE := 34165;
  IGL11.GL_LINE_WIDTH := 2849;
  IGL11.GL_LOGIC_OP_MODE := 3056;
  IGL11.GL_MATRIX_MODE := 2976;
  IGL11.GL_MAX_CLIP_PLANES := 3378;
  IGL11.GL_MODELVIEW_MATRIX := 2982;
  IGL11.GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES := 35213;
  IGL11.GL_MODELVIEW_STACK_DEPTH := 2979;
  IGL11.GL_NORMAL_ARRAY_BUFFER_BINDING := 34967;
  IGL11.GL_NORMAL_ARRAY_POINTER := 32911;
  IGL11.GL_NORMAL_ARRAY_STRIDE := 32895;
  IGL11.GL_NORMAL_ARRAY_TYPE := 32894;
  IGL11.GL_OPERAND0_ALPHA := 34200;
  IGL11.GL_OPERAND0_RGB := 34192;
  IGL11.GL_OPERAND1_ALPHA := 34201;
  IGL11.GL_OPERAND1_RGB := 34193;
  IGL11.GL_OPERAND2_ALPHA := 34202;
  IGL11.GL_OPERAND2_RGB := 34194;
  IGL11.GL_POINT_DISTANCE_ATTENUATION := 33065;
  IGL11.GL_POINT_FADE_THRESHOLD_SIZE := 33064;
  IGL11.GL_POINT_SIZE := 2833;
  IGL11.GL_POINT_SIZE_ARRAY_BUFFER_BINDING_OES := 35743;
  IGL11.GL_POINT_SIZE_ARRAY_OES := 35740;
  IGL11.GL_POINT_SIZE_ARRAY_POINTER_OES := 35212;
  IGL11.GL_POINT_SIZE_ARRAY_STRIDE_OES := 35211;
  IGL11.GL_POINT_SIZE_ARRAY_TYPE_OES := 35210;
  IGL11.GL_POINT_SIZE_MAX := 33063;
  IGL11.GL_POINT_SIZE_MIN := 33062;
  IGL11.GL_POINT_SPRITE_OES := 34913;
  IGL11.GL_POLYGON_OFFSET_FACTOR := 32824;
  IGL11.GL_POLYGON_OFFSET_UNITS := 10752;
  IGL11.GL_PREVIOUS := 34168;
  IGL11.GL_PRIMARY_COLOR := 34167;
  IGL11.GL_PROJECTION_MATRIX := 2983;
  IGL11.GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES := 35214;
  IGL11.GL_PROJECTION_STACK_DEPTH := 2980;
  IGL11.GL_RGB_SCALE := 34163;
  IGL11.GL_SAMPLE_BUFFERS := 32936;
  IGL11.GL_SAMPLE_COVERAGE_INVERT := 32939;
  IGL11.GL_SAMPLE_COVERAGE_VALUE := 32938;
  IGL11.GL_SAMPLES := 32937;
  IGL11.GL_SCISSOR_BOX := 3088;
  IGL11.GL_SHADE_MODEL := 2900;
  IGL11.GL_SRC0_ALPHA := 34184;
  IGL11.GL_SRC0_RGB := 34176;
  IGL11.GL_SRC1_ALPHA := 34185;
  IGL11.GL_SRC1_RGB := 34177;
  IGL11.GL_SRC2_ALPHA := 34186;
  IGL11.GL_SRC2_RGB := 34178;
  IGL11.GL_STATIC_DRAW := 35044;
  IGL11.GL_STENCIL_CLEAR_VALUE := 2961;
  IGL11.GL_STENCIL_FAIL := 2964;
  IGL11.GL_STENCIL_FUNC := 2962;
  IGL11.GL_STENCIL_PASS_DEPTH_FAIL := 2965;
  IGL11.GL_STENCIL_PASS_DEPTH_PASS := 2966;
  IGL11.GL_STENCIL_REF := 2967;
  IGL11.GL_STENCIL_VALUE_MASK := 2963;
  IGL11.GL_STENCIL_WRITEMASK := 2968;
  IGL11.GL_SUBTRACT := 34023;
  IGL11.GL_TEXTURE_BINDING_2D := 32873;
  IGL11.GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING := 34970;
  IGL11.GL_TEXTURE_COORD_ARRAY_POINTER := 32914;
  IGL11.GL_TEXTURE_COORD_ARRAY_SIZE := 32904;
  IGL11.GL_TEXTURE_COORD_ARRAY_STRIDE := 32906;
  IGL11.GL_TEXTURE_COORD_ARRAY_TYPE := 32905;
  IGL11.GL_TEXTURE_MATRIX := 2984;
  IGL11.GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES := 35215;
  IGL11.GL_TEXTURE_STACK_DEPTH := 2981;
  IGL11.GL_VERTEX_ARRAY_BUFFER_BINDING := 34966;
  IGL11.GL_VERTEX_ARRAY_POINTER := 32910;
  IGL11.GL_VERTEX_ARRAY_SIZE := 32890;
  IGL11.GL_VERTEX_ARRAY_STRIDE := 32892;
  IGL11.GL_VERTEX_ARRAY_TYPE := 32891;
  IGL11.GL_VIEWPORT := 2978;
  IGL11.GL_WRITE_ONLY := 35001;

end.

