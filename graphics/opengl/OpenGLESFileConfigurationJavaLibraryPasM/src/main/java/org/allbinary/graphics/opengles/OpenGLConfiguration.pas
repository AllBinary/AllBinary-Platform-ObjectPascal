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
unit OpenGLConfiguration;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, TsUtil, AbDataOutputStream, FileStreamFactory, StreamUtil, FileFactory, CommonStrings, StringMaker, StringUtil, LogUtil, PreLogUtil, ChangedGameFeatureListener, Feature, Features, MainFeatureFactory, NullUtil, NullCloseable, OpenGLFeature;

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

  TOpenGLConfiguration = class(TObject)
  public
    logUtil: TLogUtil;
    FILE_: string;
    commonStrings: TCommonStrings;
    tsUtil: TTsUtil;
    opengl: Boolean;
    type_: TOpenGLFeature;
    imageColor: TOpenGLFeature;
    color: TOpenGLFeature;
    versionSelector: TOpenGLFeature;
    class var instance: TObject;
    procedure InitFields;
        class function getInstance: TOpenGLConfiguration; static;
        constructor Create;
        procedure read;
        procedure write; virtual;
        procedure init; virtual;
        procedure update(gameFeature: TFeature; colorLocked: Boolean); virtual;
        procedure setOpenGL(opengl: Boolean); virtual;
        function isOpenGL: Boolean; virtual;
        procedure setImageColor(imageColor: TOpenGLFeature); virtual;
        function getImageColor: TOpenGLFeature; virtual;
        procedure setColor(color: TOpenGLFeature); virtual;
        function getColor: TOpenGLFeature; virtual;
        procedure setVersionSelector(versionSelector: TOpenGLFeature); virtual;
        function getVersionSelector: TOpenGLFeature; virtual;
        procedure setType(type_: TOpenGLFeature); virtual;
        function getType: TOpenGLFeature; virtual;
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


procedure TOpenGLConfiguration.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.FILE_ := 'OpenGLConfiguration.dat';
  Self.commonStrings := TCommonStrings.getInstance();
  Self.tsUtil := TTsUtil.getInstance();
  Self.opengl := False;
  Self.type_ := TOpenGLFeatureFactory.getInstance().OPENGL_AS_GAME_THREAD;
  Self.imageColor := TOpenGLFeatureFactory.getInstance().IMAGE_COLOR_DEPTH_4444;
  Self.color := TOpenGLFeatureFactory.getInstance().IMAGE_COLOR_DEPTH_4444;
  Self.versionSelector := TOpenGLFeatureFactory.getInstance().OPENGL_AUTO_SELECT;
end;
    

class function TOpenGLConfiguration.getInstance: TOpenGLConfiguration;
begin
        if (TOpenGLConfiguration.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TOpenGLConfiguration.instance := TOpenGLConfiguration.Create();
        end;
        Exit(TOpenGLConfiguration(TOpenGLConfiguration.instance));
end;
    

constructor TOpenGLConfiguration.Create;
begin
    inherited Create;
    InitFields;
        try
            if TFileFactory.getInstance().isFile(Self.FILE_) then begin
                Self.read();
            end else begin
                Self.write();
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.commonStrings.CONSTRUCTOR_, e);
            end;
        end;
end;
    

// throws Exception
procedure TOpenGLConfiguration.read;
var
  openGLFeatureFactory: TOpenGLFeatureFactory;
  fileInputStreamFactory: TFileStreamFactory;
  fileInputStream: TInputStream;
  dataInputStream: TDataInputStream;
  openGLValue: Integer;
  version: string;
  type_: string;
  imageColor: string;
  color: string;
begin
        openGLFeatureFactory := TOpenGLFeatureFactory.getInstance();
        fileInputStreamFactory := TFileStreamFactory.getInstance();
        fileInputStream := fileInputStreamFactory.getFileInputStreamInstance(TStringUtil.getInstance().EMPTY_STRING, Self.FILE_);
        dataInputStream := TDataInputStream.Create(fileInputStream);
        openGLValue := dataInputStream.readInt();
        if (openGLValue) = (0) then begin
            Self.setOpenGL(False);
        end else if (openGLValue) = (1) then begin
            Self.setOpenGL(True);
        end else begin
            raise SysUtils.Exception.Create('Invalid OpenGL Setting');
        end;
        version := dataInputStream.readUTF();
        if (Self.tsUtil.compareTo(version, openGLFeatureFactory.OPENGL_AUTO_SELECT.getName())) = (0) then begin
            Self.setVersionSelector(openGLFeatureFactory.OPENGL_AUTO_SELECT);
        end else if (Self.tsUtil.compareTo(version, openGLFeatureFactory.OPENGL_MINIMUM.getName())) = (0) then begin
            Self.setVersionSelector(openGLFeatureFactory.OPENGL_MINIMUM);
        end else begin
            raise SysUtils.Exception.Create('OpenGLConfiguration: Error reading version selector: ' + version);
        end;
        type_ := dataInputStream.readUTF();
        if (Self.tsUtil.compareTo(type_, openGLFeatureFactory.OPENGL_AS_GAME_THREAD.getName())) = (0) then begin
            Self.setType(openGLFeatureFactory.OPENGL_AS_GAME_THREAD);
        end else if (Self.tsUtil.compareTo(type_, openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS.getName())) = (0) then begin
            Self.setType(openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS);
        end else begin
            raise SysUtils.Exception.Create('OpenGLConfiguration: Error reading image color');
        end;
        imageColor := dataInputStream.readUTF();
        if (Self.tsUtil.compareTo(imageColor, openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444.getName())) = (0) then begin
            Self.setImageColor(openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444);
        end else if (Self.tsUtil.compareTo(imageColor, openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444.getName())) = (0) then begin
            Self.setImageColor(openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444);
        end else if (Self.tsUtil.compareTo(imageColor, openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444.getName())) = (0) then begin
            Self.setImageColor(openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444);
        end else begin
            raise SysUtils.Exception.Create('OpenGLConfiguration: Error reading image color: ' + TJava.ToString(imageColor));
        end;
        color := dataInputStream.readUTF();
        if (Self.tsUtil.compareTo(color, openGLFeatureFactory.OPENGL_COLOR_DEPTH_4444.getName())) = (0) then begin
            Self.setColor(openGLFeatureFactory.OPENGL_COLOR_DEPTH_4444);
        end else if (Self.tsUtil.compareTo(color, openGLFeatureFactory.OPENGL_COLOR_DEPTH_565.getName())) = (0) then begin
            Self.setColor(openGLFeatureFactory.OPENGL_COLOR_DEPTH_565);
        end else if (Self.tsUtil.compareTo(color, openGLFeatureFactory.OPENGL_COLOR_DEPTH_8888.getName())) = (0) then begin
            Self.setColor(openGLFeatureFactory.OPENGL_COLOR_DEPTH_8888);
        end else begin
            raise SysUtils.Exception.Create('OpenGLConfiguration: Error reading color: ' + TJava.ToString(color));
        end;
        TPreLogUtil.put('Read Configuration: ' + Self.toString(), Self, 'read');
end;
    

// throws Exception
procedure TOpenGLConfiguration.write;
var
  closeable: TCloseable;
  fileInputStreamFactory: TFileStreamFactory;
  fileOutputStream: TOutputStream;
  dataOutputStream: TAbDataOutputStream;
begin
        closeable := TNullCloseable.NULL_CLOSEABLE;
        try
        try
            TPreLogUtil.put('Write Configuration: ' + Self.toString(), Self, 'write');
            fileInputStreamFactory := TFileStreamFactory.getInstance();
            fileOutputStream := fileInputStreamFactory.getFileOutputStreamInstance(TStringUtil.getInstance().EMPTY_STRING, Self.FILE_);
            dataOutputStream := TAbDataOutputStream.Create(fileOutputStream);
            closeable := dataOutputStream;
            if Self.isOpenGL() then begin
                dataOutputStream.writeInt(1);
            end else begin
                dataOutputStream.writeInt(0);
            end;
            dataOutputStream.writeUTF(Self.getVersionSelector().getName());
            dataOutputStream.writeUTF(Self.getType().getName());
            dataOutputStream.writeUTF(Self.getImageColor().getName());
            dataOutputStream.writeUTF(Self.getColor().getName());
            dataOutputStream.flush();
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
        finally
            TStreamUtil.getInstance().close(closeable);
        end;
end;
    

// throws Exception
procedure TOpenGLConfiguration.init;
var
  features: TFeatures;
  openGLFeatureFactory: TOpenGLFeatureFactory;
begin
        features := TFeatures.getInstance();
        if TChangedGameFeatureListener.getInstance().isChangedFeature(TMainFeatureFactory.getInstance().STATIC) then begin
            openGLFeatureFactory := TOpenGLFeatureFactory.getInstance();
            if Self.isOpenGL() then begin
                if ((features.isFeature(openGLFeatureFactory.OPENGL_2D)) or (features.isFeature(openGLFeatureFactory.OPENGL_3D))) or (features.isFeature(openGLFeatureFactory.OPENGL_2D_AND_3D)) then begin
                    if not (features.isDefault(TOpenGLFeatureFactory.getInstance().OPENGL)) then begin
                        Self.logUtil.putF('Turning on OpenGL as Default', Self, Self.commonStrings.INIT);
                        features.addDefault(TOpenGLFeatureFactory.getInstance().OPENGL);
                        Self.logUtil.putF('Using OpenGL Type Feature: ' + TJava.ToString(Self.getType()), Self, Self.commonStrings.INIT);
                        features.addDefault(Self.getType());
                        Self.logUtil.putF('Using OpenGL ImageColor Feature: ' + TJava.ToString(Self.getImageColor()), Self, Self.commonStrings.INIT);
                        features.addDefault(Self.getImageColor());
                        Self.logUtil.putF('Using OpenGL Color Feature: ' + TJava.ToString(Self.getColor()), Self, Self.commonStrings.INIT);
                        features.addDefault(Self.getColor());
                        Self.logUtil.putF('Using OpenGL Version Selector Feature: ' + TJava.ToString(Self.getVersionSelector()), Self, Self.commonStrings.INIT);
                        features.addDefault(Self.getVersionSelector());
                    end;
                end else begin
                    Self.logUtil.putF('OpenGL is enabled, but this game does not support OpenGL (Probably from installing with the same package name from a game that had OpenGL available)', Self, Self.commonStrings.INIT);
                end;
            end else begin
                Self.logUtil.putF('OpenGL is Off', Self, Self.commonStrings.INIT);
            end;
        end else begin
            if (Self.isOpenGL()) and (not (features.isDefault(TOpenGLFeatureFactory.getInstance().OPENGL))) then begin
                TPreLogUtil.put('OpenGL is set but not Enabled since statics where not cleared (Reboot or Complete exit is Required)', Self, Self.commonStrings.INIT);
            end;
        end;
        TPreLogUtil.put(Self.toString(), Self, Self.commonStrings.INIT);
end;
    

// throws Exception
procedure TOpenGLConfiguration.update(gameFeature: TFeature; colorLocked: Boolean);
var
  features: TFeatures;
  openGLFeatureFactory: TOpenGLFeatureFactory;
  modified: Boolean;
begin
        features := TFeatures.getInstance();
        openGLFeatureFactory := TOpenGLFeatureFactory.getInstance();
        modified := False;
        if (gameFeature) = (openGLFeatureFactory.OPENGL) then begin
            if features.isFeature(gameFeature) then begin
                if not (Self.isOpenGL()) then begin
                    Self.setOpenGL(True);
                    modified := True;
                end;
            end else begin
                if Self.isOpenGL() then begin
                    Self.setOpenGL(False);
                    modified := True;
                end;
            end;
        end;
        if ((gameFeature) = (openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS)) or ((gameFeature) = (openGLFeatureFactory.OPENGL_AS_GAME_THREAD)) then begin
            if features.isFeature(gameFeature) then begin
                if (gameFeature) <> (Self.getType()) then begin
                    Self.setType(TOpenGLFeature(gameFeature));
                    modified := True;
                end;
            end;
        end;
        if (((gameFeature) = (openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444)) or ((gameFeature) = (openGLFeatureFactory.IMAGE_COLOR_DEPTH_565))) or ((gameFeature) = (openGLFeatureFactory.IMAGE_COLOR_DEPTH_8888)) then begin
            if features.isFeature(gameFeature) then begin
                if (Self.getImageColor()) <> (gameFeature) then begin
                    Self.setImageColor(TOpenGLFeature(gameFeature));
                    if colorLocked then begin
                        if (gameFeature) = (openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444) then begin
                            Self.setColor(openGLFeatureFactory.OPENGL_COLOR_DEPTH_4444);
                        end else if (gameFeature) = (openGLFeatureFactory.IMAGE_COLOR_DEPTH_565) then begin
                            Self.setColor(openGLFeatureFactory.OPENGL_COLOR_DEPTH_565);
                        end else if (gameFeature) = (openGLFeatureFactory.IMAGE_COLOR_DEPTH_8888) then begin
                            Self.setColor(openGLFeatureFactory.OPENGL_COLOR_DEPTH_8888);
                        end;
                    end;
                    modified := True;
                end;
            end;
        end;
        if (((gameFeature) = (openGLFeatureFactory.OPENGL_COLOR_DEPTH_4444)) or ((gameFeature) = (openGLFeatureFactory.OPENGL_COLOR_DEPTH_565))) or ((gameFeature) = (openGLFeatureFactory.OPENGL_COLOR_DEPTH_8888)) then begin
            if features.isFeature(gameFeature) then begin
                if (Self.getColor()) <> (gameFeature) then begin
                    Self.setColor(TOpenGLFeature(gameFeature));
                    modified := True;
                end;
            end;
        end;
        if ((gameFeature) = (openGLFeatureFactory.OPENGL_AUTO_SELECT)) or ((gameFeature) = (openGLFeatureFactory.OPENGL_MINIMUM)) then begin
            if features.isFeature(gameFeature) then begin
                Self.setVersionSelector(TOpenGLFeature(gameFeature));
            end;
            modified := True;
        end;
        if modified then begin
            Self.write();
        end;
end;
    

procedure TOpenGLConfiguration.setOpenGL(opengl: Boolean);
begin
        Self.opengl := opengl;
end;
    

function TOpenGLConfiguration.isOpenGL: Boolean;
begin
        Exit(Self.opengl);
end;
    

procedure TOpenGLConfiguration.setImageColor(imageColor: TOpenGLFeature);
begin
        Self.imageColor := imageColor;
end;
    

function TOpenGLConfiguration.getImageColor: TOpenGLFeature;
begin
        Exit(Self.imageColor);
end;
    

procedure TOpenGLConfiguration.setColor(color: TOpenGLFeature);
begin
        Self.color := color;
end;
    

function TOpenGLConfiguration.getColor: TOpenGLFeature;
begin
        Exit(Self.color);
end;
    

procedure TOpenGLConfiguration.setVersionSelector(versionSelector: TOpenGLFeature);
begin
        Self.versionSelector := versionSelector;
end;
    

function TOpenGLConfiguration.getVersionSelector: TOpenGLFeature;
begin
        Exit(Self.versionSelector);
end;
    

procedure TOpenGLConfiguration.setType(type_: TOpenGLFeature);
begin
        Self.type_ := type_;
end;
    

function TOpenGLConfiguration.getType: TOpenGLFeature;
begin
        Exit(Self.type_);
end;
    

function TOpenGLConfiguration.toString: string;
var
  stringBuffer: TStringMaker;
  stringUtil: TStringUtil;
begin
        stringBuffer := TStringMaker.Create();
        stringUtil := TStringUtil.getInstance();
        stringBuffer.append(' isOpenGL: ');
        stringBuffer.appendboolean(Self.isOpenGL());
        stringBuffer.append(' VersionSelector: ');
        stringBuffer.append(stringUtil.toString(Self.getVersionSelector()));
        stringBuffer.append(' Type: ');
        stringBuffer.append(stringUtil.toString(Self.getType()));
        stringBuffer.append(' Image Color: ');
        stringBuffer.append(stringUtil.toString(Self.getImageColor()));
        stringBuffer.append(' Color: ');
        stringBuffer.append(stringUtil.toString(Self.getColor()));
        Exit(stringBuffer.toString());
end;

initialization
  TOpenGLConfiguration.instance := TNullUtil.getInstance().NULL_OBJECT;

end.

