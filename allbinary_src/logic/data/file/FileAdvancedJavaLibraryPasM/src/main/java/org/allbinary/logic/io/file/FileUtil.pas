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
// package org.allbinary.logic.io.file
unit FileUtil;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, URLGLOBALS, LogUtil, PreLogUtil, LogConfigTypeFactory, AbDataOutputStream, AbFileInputStream, AbFileLocalInputStream, AbIOSystem, DataOutputStreamFactory, FileStreamFactory, StreamUtil, Directory, AbPath, AbPathData, StringMaker, StringUtil, CommonLabels, CommonStrings, BasicArrayList, AbFile;

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

  // data/init/views/TestStore/template/type/genericTemplateObjectConfig.xml
  TFileUtil = class(TObject)
  public
    logUtil: TLogUtil;
    directory: TDirectory;
    logConfigTypeFactory: TLogConfigTypeFactory;
    commonStrings: TCommonStrings;
    streamUtil: TStreamUtil;
    WRITE_LABEL: string;
    DATA_LABEL: string;
    WRITE_METHOD: string;
    class var instance: TFileUtil;
    procedure InitFields;
        class function getInstance: TFileUtil; static;
        constructor Create;
        procedure write(inputStream: TInputStream; file_: TAbFile); overload; virtual;
        procedure write(inputStream: TInputStream; dataOutputStream: TAbDataOutputStream); overload; virtual;
        procedure write(inputStream: TInputStream; dataOutputStream: TAbDataOutputStream; buffer: TArray<ShortInt>); overload; virtual;
        procedure copy(dataInputStream: TAbFileInputStream; dataOutputStream: TAbDataOutputStream); overload;
        function fixPath(file_: TAbFile; path: TAbPath; realPath: TAbPath; cloud: string): TAbPath;
        procedure copyToCloud(file_: TAbFile; path: TAbPath; realPath: TAbPath; cloud: string); overload; virtual;
        procedure copyToCloud(file_: TAbFile; path: TAbPath; realPath: TAbPath; cloud: string; overwriteNewer: Boolean; overwriteAll: Boolean); overload; virtual;
        procedure copyToCloud(file_: TAbFile; outFile: TAbFile); overload; virtual;
        procedure copyToCloud(file_: TAbFile; outFile: TAbFile; overwriteNewer: Boolean; overwriteAll: Boolean); overload; virtual;
        function copyPrepare(fromFile: TAbFile; toFile: TAbFile; overwriteNewer: Boolean; overwriteAll: Boolean): Boolean;
        procedure copyFile(fromFile: TAbFile; toFile: TAbFile); overload;
        procedure copyFile(fromFile: TAbFile; toFile: TAbFile; overwriteNewer: Boolean; overwriteAll: Boolean); overload;
        class function getNewDirectory(fromFile: TAbFile): string; static;
        procedure copyDirectoryPortion(fromDirectoryAbPath: TAbPath; toDirectoryAbPath: TAbPath; overwriteNewer: Boolean; overwriteAll: Boolean; current: Integer; total: Integer); virtual;
        procedure copyDirectory(fromFile: TAbFile; to_: TAbFile);
        function copy(fromAbPath: TAbPath; to_: TAbPath): Boolean; overload; virtual;
        function shouldSkip(file_: TAbFile; skipFiles: TArray<string>): Boolean; virtual;
        procedure write(filePath: string; string_: string); overload; virtual;
        function loadFileAsList(file_: TAbFile; max: Integer; byteArray1: TArray<ShortInt>): TBasicArrayList; virtual;
  end;

implementation
uses
  FilePathData, FileWrapperUtil, FileUtil2;



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


procedure TFileUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.directory := TDirectory.getInstance();
  Self.logConfigTypeFactory := TLogConfigTypeFactory.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.streamUtil := TStreamUtil.getInstance();
  Self.WRITE_LABEL := 'Write file: ';
  Self.DATA_LABEL := ' data: ';
  Self.WRITE_METHOD := 'write';
end;
    

class function TFileUtil.getInstance: TFileUtil;
begin
        Exit(TFileUtil.instance);
end;
    

constructor TFileUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
procedure TFileUtil.write(inputStream: TInputStream; file_: TAbFile);
var
  dataOutputStream: TAbDataOutputStream;
begin
        dataOutputStream := TDataOutputStreamFactory.getInstance().getInstanceForAbFile(file_);
        Self.write(inputStream, dataOutputStream);
end;
    

// throws Exception
procedure TFileUtil.write(inputStream: TInputStream; dataOutputStream: TAbDataOutputStream);
begin
        try
        begin
            dataOutputStream := TAbDataOutputStream(TStreamUtil.getInstance().get(inputStream, dataOutputStream, TJava.NewArray<ShortInt>(16384)));
            dataOutputStream.flush();
        end;
        finally
            TStreamUtil.getInstance().close(dataOutputStream);
        end;
end;
    

// throws Exception
procedure TFileUtil.write(inputStream: TInputStream; dataOutputStream: TAbDataOutputStream; buffer: TArray<ShortInt>);
begin
        try
        begin
            dataOutputStream := TAbDataOutputStream(TStreamUtil.getInstance().get(inputStream, dataOutputStream, buffer));
            dataOutputStream.flush();
        end;
        finally
            TStreamUtil.getInstance().close(dataOutputStream);
        end;
end;
    

// throws Exception
procedure TFileUtil.copy(dataInputStream: TAbFileInputStream; dataOutputStream: TAbDataOutputStream);
begin
        try
        begin
            dataOutputStream := TAbDataOutputStream(TStreamUtil.getInstance().get(dataInputStream, dataOutputStream, TJava.NewArray<ShortInt>(16384)));
            dataOutputStream.flush();
        end;
        finally
            TStreamUtil.getInstance().close(dataOutputStream);
            TStreamUtil.getInstance().close(dataInputStream);
        end;
end;
    

// throws Exception
function TFileUtil.fixPath(file_: TAbFile; path: TAbPath; realPath: TAbPath; cloud: string): TAbPath;
var
  beginIndex: Integer;
  endIndex: Integer;
  fixedPathString: string;
  fixedPath: TAbPath;
  string_: string;
  outPath: TAbPath;
begin
        beginIndex := (file_.getPath().indexOf(cloud)) + (System.Length(cloud));
        endIndex := file_.getPath().indexOf(file_.getName());
        fixedPathString := TJava.ToString(realPath.toFileSystemString()) + file_.getPath().substring(beginIndex, endIndex);
        fixedPath := TAbPath.Create(fixedPathString, TStringUtil.getInstance().EMPTY_STRING);
        Self.directory.create(fixedPath);
        string_ := fixedPath.toFileSystemString();
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILE_) then begin
            Self.logUtil.putF(string_, Self, 'fixPath');
        end;
        outPath := TAbPath.Create(string_, file_.getName());
        Exit(outPath);
end;
    

// throws Exception
procedure TFileUtil.copyToCloud(file_: TAbFile; path: TAbPath; realPath: TAbPath; cloud: string);
begin
        Self.copyToCloud(file_, path, realPath, cloud, False, False);
end;
    

// throws Exception
procedure TFileUtil.copyToCloud(file_: TAbFile; path: TAbPath; realPath: TAbPath; cloud: string; overwriteNewer: Boolean; overwriteAll: Boolean);
var
  outPath: TAbPath;
  outFile: TAbFile;
  stringBuffer: TStringMaker;
  dataOutputStream: TAbDataOutputStream;
  fileInputStream: TAbFileInputStream;
begin
        try
            outPath := Self.fixPath(file_, path, realPath, cloud);
            outFile := TAbFile.createAbFileFromAbPath(outPath);
            if not (Self.copyPrepare(file_, outFile, overwriteNewer, overwriteAll)) then begin
                Exit;
            end else begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILE_) then begin
                    stringBuffer := TStringMaker.Create();
                    stringBuffer.append('Out File: ');
                    stringBuffer.append(outFile.getPath());
                    stringBuffer.append(' In File: ');
                    stringBuffer.append(file_.getPath());
                    stringBuffer.append(' to cloud.');
                    Self.logUtil.putF(stringBuffer.toString(), TFileUtil.getInstance(), 'copyToCloud');
                end;
            end;
            dataOutputStream := TDataOutputStreamFactory.getInstance().getInstanceForAbFile(outFile);
            fileInputStream := TAbFileLocalInputStream.Create(file_);
            Self.copy(fileInputStream, dataOutputStream);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILEERROR) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Error Copying File File: ');
                stringBuffer.append(file_.toString());
                stringBuffer.append(' to cloud.');
                Self.logUtil.put(stringBuffer.toString(), TFileUtil.getInstance(), 'copyToCloud', e);
            end;
            raise e;
            end;
        end;
end;
    

// throws Exception
procedure TFileUtil.copyToCloud(file_: TAbFile; outFile: TAbFile);
begin
        Self.copyToCloud(file_, outFile, False, False);
end;
    

// throws Exception
procedure TFileUtil.copyToCloud(file_: TAbFile; outFile: TAbFile; overwriteNewer: Boolean; overwriteAll: Boolean);
var
  stringBuffer: TStringMaker;
  dataOutputStream: TAbDataOutputStream;
  fileInputStream: TAbFileInputStream;
begin
        try
            stringBuffer := TStringMaker.Create();
            if not (Self.copyPrepare(file_, outFile, overwriteNewer, overwriteAll)) then begin
                Exit;
            end else begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILE_) then begin
                    stringBuffer.delete_(0, stringBuffer.length());
                    stringBuffer.append('Out File: ');
                    stringBuffer.append(outFile.getPath());
                    stringBuffer.append(' In File: ');
                    stringBuffer.append(file_.getPath());
                    stringBuffer.append(' to cloud.');
                    Self.logUtil.putF(stringBuffer.toString(), TFileUtil.getInstance(), 'copyToCloud');
                end;
            end;
            dataOutputStream := TDataOutputStreamFactory.getInstance().getInstanceForAbFile(outFile);
            fileInputStream := TAbFileLocalInputStream.Create(file_);
            Self.copy(fileInputStream, dataOutputStream);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILEERROR) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Error Copying File File: ');
                stringBuffer.append(file_.toString());
                stringBuffer.append(' to cloud.');
                Self.logUtil.put(stringBuffer.toString(), TFileUtil.getInstance(), 'copyToCloud', e);
            end;
            raise e;
            end;
        end;
end;
    

// throws Exception
function TFileUtil.copyPrepare(fromFile: TAbFile; toFile: TAbFile; overwriteNewer: Boolean; overwriteAll: Boolean): Boolean;
var
  stringBuffer: TStringMaker;
begin
        if toFile.exists() then begin
            stringBuffer := TStringMaker.Create();
            if overwriteAll then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILE_) then begin
                    stringBuffer.delete_(0, stringBuffer.length());
                    stringBuffer.append('Overwriting File: ');
                    stringBuffer.append(toFile.getPath());
                    Self.logUtil.putF(stringBuffer.toString(), TFileUtil.getInstance(), 'copyFile');
                end;
                toFile.delete_();
                toFile.createNewFile();
            end else if ((toFile.lastModified()) < (fromFile.lastModified())) and (overwriteNewer) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILE_) then begin
                    stringBuffer.delete_(0, stringBuffer.length());
                    stringBuffer.append('Newer by: ');
                    stringBuffer.appendlong(Int64(Trunc((fromFile.lastModified()) - (toFile.lastModified()))));
                    stringBuffer.append('ms ');
                    stringBuffer.append('Copying File: ');
                    stringBuffer.append(toFile.getPath());
                    Self.logUtil.putF(stringBuffer.toString(), TFileUtil.getInstance(), 'copyFile');
                end;
                toFile.delete_();
                toFile.createNewFile();
            end else begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILE_) then begin
                    stringBuffer.delete_(0, stringBuffer.length());
                    stringBuffer.append('File Already Exists');
                    if overwriteNewer then begin
                        stringBuffer.append(' And Is Not Older');
                    end else begin
                        stringBuffer.append(' And Not A In Overwrite Mode');
                    end;
                    stringBuffer.append(TCommonLabels.getInstance().COLON_SEP);
                    stringBuffer.append(toFile.getPath());
                    Self.logUtil.putF(stringBuffer.toString(), TFileUtil.getInstance(), 'copyFile');
                end;
                Exit(False);
            end;
        end else begin
            toFile.createNewFile();
        end;
        Exit(True);
end;
    

// throws Exception
procedure TFileUtil.copyFile(fromFile: TAbFile; toFile: TAbFile);
begin
        Self.copyFile(fromFile, toFile, False, False);
end;
    

// throws Exception
procedure TFileUtil.copyFile(fromFile: TAbFile; toFile: TAbFile; overwriteNewer: Boolean; overwriteAll: Boolean);
var
  stringBuffer: TStringMaker;
  dataOutputStream: TAbDataOutputStream;
  fileInputStream: TAbFileInputStream;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILE_) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Copying ');
                stringBuffer.appendlong(Int64(fromFile.length()));
                stringBuffer.append(' bytes from File: ');
                stringBuffer.append(fromFile.getPath());
                stringBuffer.append(' to: ');
                stringBuffer.append(toFile.getPath());
                Self.logUtil.putF(stringBuffer.toString(), TFileUtil.getInstance(), 'copyFile');
            end;
            if not (Self.copyPrepare(fromFile, toFile, overwriteNewer, overwriteAll)) then begin
                Exit;
            end;
            dataOutputStream := TDataOutputStreamFactory.getInstance().getInstanceForAbFile(toFile);
            fileInputStream := TAbFileInputStream.Create(fromFile);
            Self.copy(fileInputStream, dataOutputStream);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILEERROR) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Error Copying File fromFile: ');
                stringBuffer.append(fromFile.toString());
                stringBuffer.append(' to: ');
                stringBuffer.append(toFile.toString());
                Self.logUtil.put(stringBuffer.toString(), TFileUtil.getInstance(), 'copyFile', e);
            end;
            raise e;
            end;
        end;
end;
    

class function TFileUtil.getNewDirectory(fromFile: TAbFile): string;
var
  newDirectory: string;
  separatorChar: string;
  lastIndex: Integer;
begin
        newDirectory := fromFile.getPath();
        separatorChar := TFilePathData.getInstance().PATH_START;
        if TAbIOSystem.getInstance().isType('com.vobject.appengine.java.io') then begin
            separatorChar := TAbPathData.getInstance().SEPARATOR;
        end;
        lastIndex := (RPos(TJava.ToString(separatorChar), newDirectory) - 1);
        if (lastIndex) >= (System.Length(newDirectory)) then begin
            newDirectory := Copy(newDirectory, (0) + 1, ((System.Length(newDirectory)) - (1)) - (0));
            lastIndex := (RPos(TJava.ToString(separatorChar), newDirectory) - 1);
        end;
        Exit(Copy(newDirectory, (lastIndex) + 1, (System.Length(newDirectory)) - (lastIndex)));
end;
    

// throws Exception
procedure TFileUtil.copyDirectoryPortion(fromDirectoryAbPath: TAbPath; toDirectoryAbPath: TAbPath; overwriteNewer: Boolean; overwriteAll: Boolean; current: Integer; total: Integer);
var
  file_: TAbFile;
  fileList: TBasicArrayList;
  size: Integer;
  stringBuffer: TStringMaker;
  portion: Integer;
  start: Integer;
  end_: Integer;
  nextFile: TAbFile;
  path: string;
  beginIndex: Integer;
  newPath: string;
  toFile: TAbFile;
  index: Integer;
begin
        file_ := TAbFile.createAbFileFromAbPath(fromDirectoryAbPath);
        if not (file_.isDirectory()) then begin
            raise SysUtils.Exception.Create('Not a directory: ' + TJava.ToString(file_.getPath()));
        end;
        fileList := Self.directory.search(file_, True);
        size := fileList.size();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('Searched: ');
        stringBuffer.append(file_.getPath());
        stringBuffer.append(' Total: ');
        stringBuffer.appendint(size);
        portion := ((size) div (total)) + (1);
        start := (portion) * (current);
        end_ := (start) + (portion);
        if (end_) > (size) then begin
            end_ := size;
        end;
        stringBuffer.append(' Section: ');
        stringBuffer.appendint(start);
        stringBuffer.append(' - ');
        stringBuffer.appendint(end_);
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILE_) then begin
            Self.logUtil.putF(stringBuffer.toString(), TFileUtil.getInstance(), 'copySomeFilesToDirectory()');
        end;
        
        for index := start to end_ - 1 do begin
            nextFile := TAbFile(fileList.get(index));
            if nextFile.isDirectory() then begin
            end else begin
                path := TAbPath.Create(nextFile.getPath(), TStringUtil.getInstance().EMPTY_STRING).getPath();
                beginIndex := fromDirectoryAbPath.getPath().length();
                if (path.indexOf(URLGLOBALS.getWebappPath())) < (0) then begin
                    beginIndex := (beginIndex) - (TAbPath.Create(URLGLOBALS.getWebappPath(), TStringUtil.getInstance().EMPTY_STRING).getPath().length());
                end;
                newPath := TJava.ToString(toDirectoryAbPath.toFileSystemString()) + path.substring(beginIndex);
                toFile := TAbFile.createAbFileFromAbPath(TAbPath.Create(newPath, TStringUtil.getInstance().EMPTY_STRING));
                Self.copyFile(nextFile, toFile, overwriteNewer, overwriteAll);
            end;
        end;
end;
    

// throws Exception
procedure TFileUtil.copyDirectory(fromFile: TAbFile; to_: TAbFile);
var
  stringBuffer: TStringMaker;
  newDirectory: string;
  newDirectoryAbPath: TAbPath;
  fileArray: TArray<TAbFile>;
  size: Integer;
  file_: TAbFile;
  index: Integer;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILE_) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Copying Directory from: ');
                stringBuffer.append(fromFile.getPath());
                stringBuffer.append(' to: ');
                stringBuffer.append(to_.getPath());
                Self.logUtil.putF(stringBuffer.toString(), TFileUtil.getInstance(), 'copyDirectory');
            end;
            newDirectory := TFileUtil.getNewDirectory(fromFile);
            newDirectoryAbPath := TAbPath.Create(TJava.ToString((to_.getPath()) + (TAbPathData.getInstance().SEPARATOR)) + newDirectory, TStringUtil.getInstance().EMPTY_STRING);
            if not (Self.directory.create(newDirectoryAbPath)) then begin
                raise SysUtils.Exception.Create('Failed to create directory: ' + TJava.ToString(newDirectoryAbPath));
            end;
            fileArray := TFileWrapperUtil.wrapFiles(fromFile.listFiles());
            size := System.Length(fileArray);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILE_) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Copying ');
                stringBuffer.appendint(size);
                stringBuffer.append(' files from: ');
                stringBuffer.append(fromFile.getPath());
                stringBuffer.append(' to: ');
                stringBuffer.append(to_.getPath());
                Self.logUtil.putF(stringBuffer.toString(), TFileUtil.getInstance(), 'copyDirectory');
            end;
            
            for index := 0 to size - 1 do begin
                file_ := fileArray[index];
                if file_.isFile() then begin
                    Self.copyFile(file_, TAbFile.createAbFilePathAndName(newDirectoryAbPath.toString(), file_.getName()));
                end else if file_.isDirectory() then begin
                    Self.copyDirectory(file_, TAbFile.createAbFileFromAbPath(newDirectoryAbPath));
                end else begin
                    raise SysUtils.Exception.Create('File Copy Error');
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILEERROR) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Error Copying Directory fromFile: ');
                stringBuffer.append(fromFile.toString());
                stringBuffer.append(' to: ');
                stringBuffer.append(to_.toString());
                Self.logUtil.put(stringBuffer.toString(), TFileUtil.getInstance(), 'copyDirectory', e);
            end;
            raise e;
            end;
        end;
end;
    

// throws Exception
function TFileUtil.copy(fromAbPath: TAbPath; to_: TAbPath): Boolean;
var
  COPY: string;
  stringBuffer: TStringMaker;
  fromLocationFile: TAbFile;
  toLocationFile: TAbFile;
  fileArray: TArray<TAbFile>;
  file_: TAbFile;
  aFile: TAbFile;
  index: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        COPY := 'copy';
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILE_) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Copying AbPaths from: ');
                stringBuffer.append(fromAbPath.toString());
                stringBuffer.append(' to: ');
                stringBuffer.append(to_.toString());
                Self.logUtil.putF(stringBuffer.toString(), TFileUtil.getInstance(), COPY);
            end;
            if (fromAbPath) = (nil) then begin
                raise SysUtils.Exception.Create('Cannot Copy From A Null Location');
            end;
            if (to_) = (nil) then begin
                raise SysUtils.Exception.Create('Cannot Copy To A Null Location');
            end;
            fromLocationFile := TAbFile.createAbFileFromAbPath(fromAbPath);
            toLocationFile := TAbFile.createAbFileFromAbPath(to_);
            if fromLocationFile.isFile() then begin
                if toLocationFile.isDirectory() then begin
                    file_ := TAbFile.createAbFileWithChild(toLocationFile, fromLocationFile.getName());
                    Self.copyFile(fromLocationFile, file_);
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILE_) then begin
                        stringBuffer := TStringMaker.Create();
                        stringBuffer.append('Copied file=');
                        stringBuffer.append(fromLocationFile.getName());
                        stringBuffer.append(' from: ');
                        stringBuffer.append(fromLocationFile.getPath());
                        stringBuffer.append(' to: ');
                        stringBuffer.append(toLocationFile.getPath());
                        Self.logUtil.putF(stringBuffer.toString(), TFileUtil.getInstance(), COPY);
                    end;
                end else begin
                    Self.copyFile(fromLocationFile, toLocationFile);
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILE_) then begin
                        stringBuffer := TStringMaker.Create();
                        stringBuffer.append('Copied file with new name ');
                        stringBuffer.append(' from: ');
                        stringBuffer.append(fromLocationFile.getPath());
                        stringBuffer.append(' to: ');
                        stringBuffer.append(toLocationFile.getPath());
                        Self.logUtil.putF(stringBuffer.toString(), TFileUtil.getInstance(), COPY);
                    end;
                end;
            end else if (fromLocationFile.isDirectory()) and (toLocationFile.isDirectory()) then begin
                if (fromAbPath.toFileSystemString().charAt((fromAbPath.toFileSystemString().length()) - (1))) = (PathDelim) then begin
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILE_) then begin
                        Self.logUtil.putF('Copying subdirectories', TFileUtil.getInstance(), COPY);
                    end;
                    fileArray := TFileWrapperUtil.wrapFiles(fromLocationFile.listFiles());
                    for index := 0 to System.Length(fileArray) - 1 do begin
                        file_ := fileArray[index];
                        if file_.isFile() then begin
                            aFile := TAbFile.createAbFileWithChild(toLocationFile, file_.getName());
                            Self.copyFile(file_, aFile);
                        end else if file_.isDirectory() then begin
                            Self.copyDirectory(file_, toLocationFile);
                        end else begin
                            raise SysUtils.Exception.Create('File Copy Error');
                        end;
                    end;
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILE_) then begin
                        Self.logUtil.putF('Copied subdirectories', TFileUtil.getInstance(), COPY);
                    end;
                end else begin
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILE_) then begin
                        Self.logUtil.putF('Copyinhg directory', TFileUtil.getInstance(), COPY);
                    end;
                    Self.copyDirectory(fromLocationFile, toLocationFile);
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILE_) then begin
                        Self.logUtil.putF('Copied directory', TFileUtil.getInstance(), COPY);
                    end;
                end;
            end;
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Self.logConfigTypeFactory.FILEERROR) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Error Copying fromAbPath: ');
                stringBuffer.append(fromAbPath.toString());
                stringBuffer.append(' to: ');
                stringBuffer.append(to_.toString());
                Self.logUtil.put(stringBuffer.toString(), TFileUtil.getInstance(), COPY, e);
            end;
            raise e;
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TFileUtil.shouldSkip(file_: TAbFile; skipFiles: TArray<string>): Boolean;
var
  size: Integer;
  skipFile: string;
  index: Integer;
begin
        size := System.Length(skipFiles);
        
        for index := 0 to size - 1 do begin
            skipFile := skipFiles[index];
            if (file_.getPath().compareTo(skipFile)) = (0) then begin
                Exit(True);
            end;
        end;
        Exit(False);
end;
    

// throws Exception
procedure TFileUtil.write(filePath: string; string_: string);
var
  dataOutputStream: TAbDataOutputStream;
  fileInputStreamFactory: TFileStreamFactory;
  fileOutputStream: TOutputStream;
begin
        dataOutputStream := nil;
        try
        begin
            TPreLogUtil.put(TStringMaker.Create().append(Self.WRITE_LABEL).append(filePath).append(Self.DATA_LABEL).append(string_).toString(), Self, Self.WRITE_METHOD);
            fileInputStreamFactory := TFileStreamFactory.getInstance();
            fileOutputStream := fileInputStreamFactory.getFileOutputStreamInstance(TStringUtil.getInstance().EMPTY_STRING, filePath);
            dataOutputStream := TAbDataOutputStream.Create(fileOutputStream);
            dataOutputStream.write(TJava.GetBytes(string_), 0, System.Length(string_));
            dataOutputStream.flush();
        end;
        finally
            TStreamUtil.getInstance().close(dataOutputStream);
        end;
end;
    

function TFileUtil.loadFileAsList(file_: TAbFile; max: Integer; byteArray1: TArray<ShortInt>): TBasicArrayList;
begin
        Exit(TFileUtil2.getInstance().loadFileAsList(file_, max, byteArray1));
end;

initialization
  TFileUtil.instance := TFileUtil.Create();

end.

