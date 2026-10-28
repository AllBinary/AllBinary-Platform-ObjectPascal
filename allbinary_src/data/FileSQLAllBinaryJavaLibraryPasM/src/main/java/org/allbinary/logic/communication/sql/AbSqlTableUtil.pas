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
// package org.allbinary.logic.communication.sql
unit AbSqlTableUtil;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, StringMaker, Portion, AbFileOutputStream, BufferedLineReader, StreamUtil, AbFile, FileUtil, Directory, AbPath, AbPathData, LogUtil, PATH_GLOBALS, CommonSeps, CommonStrings, StringUtil, SqlStrings, AbSqlTable;

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

  TAbSqlTableUtil = class(TObject)
  public
    logUtil: TLogUtil;
    EXTENSION: string;
    END_: string;
    SAVING_BACKUP_PATH: string;
    FILE_LABEL: string;
    METHOD_RESTORE_TABLE: string;
    METHOD_BACKUP_TABLE: string;
    METHOD_BACKUP_FILE: string;
    METHOD_GET_OUTPUT_STREAM: string;
    TABLE_CREATION_SUCCESS: string;
    DROPPED_SUCCESS: string;
    SAVING: string;
    APPENDING: string;
    TABLE_LABEL: string;
    BACKUP_SUCCESS: string;
    ERROR_CREATING: string;
    TOTAL_LABEL: string;
    SECTION_LABEL: string;
    DASH: string;
    PORTION_RESTORED: string;
    specialCharArray: TArray<WideChar>;
    NEW_LINE: string;
    stringUtil: TStringUtil;
    commonStrings: TCommonStrings;
    commonSeps: TCommonSeps;
    sqlStrings: TSqlStrings;
    class var instance: TAbSqlTableUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TAbSqlTableUtil; static;
        function getOutputStream(backupPath: string; tableName: string): TOutputStream;
        function backupFile(path: TAbPath; backupPath: string; tableName: string): Boolean;
        function convertNewLines(value: string): string;
        function backupTable(abSqlTable: TAbSqlTable): string; virtual;
        function restoreTable(abSqlTable: TAbSqlTable; portion: TPortion): string; virtual;
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


procedure TAbSqlTableUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.EXTENSION := '.adb';
  Self.END_ := ''')'#10'';
  Self.SAVING_BACKUP_PATH := 'Saving Backup: Path: ';
  Self.FILE_LABEL := ' File: ';
  Self.METHOD_RESTORE_TABLE := 'restoreTable()';
  Self.METHOD_BACKUP_TABLE := 'backupTable()';
  Self.METHOD_BACKUP_FILE := 'backupFile()';
  Self.METHOD_GET_OUTPUT_STREAM := 'getOutputStream()';
  Self.TABLE_CREATION_SUCCESS := 'Table Creation Successful: ';
  Self.DROPPED_SUCCESS := ' Dropped Successfully';
  Self.SAVING := 'Saving: ';
  Self.APPENDING := 'Appending: ';
  Self.TABLE_LABEL := 'Table: ';
  Self.BACKUP_SUCCESS := ' Backup Success';
  Self.ERROR_CREATING := 'Error Creating: ';
  Self.TOTAL_LABEL := ' Total: ';
  Self.SECTION_LABEL := ' Section: ';
  Self.DASH := ' - ';
  Self.PORTION_RESTORED := ' Portion Restored';
  Self.specialCharArray := [#10, '\f', #13];
  Self.NEW_LINE := '\'#10'';
  Self.stringUtil := TStringUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.commonSeps := TCommonSeps.getInstance();
  Self.sqlStrings := TSqlStrings.getInstance();
end;

constructor TAbSqlTableUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TAbSqlTableUtil.getInstance: TAbSqlTableUtil;
begin
        Exit(TAbSqlTableUtil.instance);
end;
    

function TAbSqlTableUtil.getOutputStream(backupPath: string; tableName: string): TOutputStream;
var
  fileName: string;
  backupFilePath: TAbPath;
  backupFile: TAbFile;
  outputStream: TOutputStream;
begin
    TJava.MonitorEnter(Self);
    try
        try
            fileName := tableName + Self.EXTENSION;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(Self.SAVING + tableName, Self, Self.METHOD_GET_OUTPUT_STREAM);
            end;
            backupFilePath := TAbPath.Create(backupPath, fileName);
            backupFile := TAbFile.createAbFile(backupFilePath);
            if backupFile.exists() then begin
                Self.backupFile(backupFilePath, backupPath, tableName);
                backupFile.delete_();
            end;
            backupFile.createNewFile();
            outputStream := TAbFileOutputStream.Create(backupFile);
            Exit(outputStream);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put('Create File', Self, Self.METHOD_GET_OUTPUT_STREAM, e);
            end;
            Exit(nil);
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TAbSqlTableUtil.backupFile(path: TAbPath; backupPath: string; tableName: string): Boolean;
var
  calendar: TDateTime;
  timeLong: Int64;
  time: string;
  stringBuffer: TStringMaker;
  fileName: string;
  backupAbPath: TAbPath;
  backupFileBak: TAbFile;
begin
    TJava.MonitorEnter(Self);
    try
        try
            calendar := Now;
            timeLong := calendar.getTimeInMillis();
            time := timeLong.toString();
            stringBuffer := TStringMaker.Create();
            fileName := tableName + Self.EXTENSION;
            stringBuffer.append(backupPath);
            stringBuffer.append(TAbPathData.getInstance().SEPARATOR);
            stringBuffer.append(time);
            backupAbPath := TAbPath.Create(stringBuffer.toString());
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                stringBuffer.delete_(0, stringBuffer.length());
                stringBuffer.append(Self.SAVING_BACKUP_PATH);
                stringBuffer.append(backupAbPath.toFileSystemString());
                stringBuffer.append(Self.FILE_LABEL);
                stringBuffer.append(fileName);
                Self.logUtil.putF(stringBuffer.toString(), Self, Self.METHOD_BACKUP_FILE);
            end;
            TDirectory.create(backupAbPath);
            backupFileBak := TAbFile.createAbFile(backupAbPath.toFileSystemString());
            backupFileBak.createNewFile();
            TFileUtil.getInstance().copy(path, backupAbPath);
            Exit(True);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.METHOD_BACKUP_FILE, e);
            end;
            Exit(False);
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TAbSqlTableUtil.convertNewLines(value: string): string;
var
  stringBuffer: TStringMaker;
  index: Integer;
  lastIndex: Integer;
  nextLine: string;
begin
        stringBuffer := TStringMaker.Create();
        index := 0;
        lastIndex := 0;
        while (index) < (System.Length(value)) do begin
            index := value.indexOf(Self.specialCharArray[0], lastIndex);
            if (index) <> (-1) then begin
                nextLine := Copy(value, (lastIndex) + 1, ((index) - (1)) - (lastIndex));
                stringBuffer.append(nextLine);
                stringBuffer.append(Self.NEW_LINE);
                lastIndex := (index) + (1);
            end else begin
                Break;
            end;
        end;
        if (lastIndex) < (System.Length(value)) then begin
            stringBuffer.append(Copy(value, (lastIndex) + 1, (System.Length(value)) - (lastIndex)));
        end;
        Exit(stringBuffer.toString());
end;
    

function TAbSqlTableUtil.backupTable(abSqlTable: TAbSqlTable): string;
var
  tableName: string;
  count: Integer;
  sqlStatement: string;
  path: string;
  rset: TResultSet;
  rsmd: TResultSetMetaData;
  colNum: Integer;
  QUERY_START: string;
  stringBuffer: TStringMaker;
  outputStream: TOutputStream;
  value: string;
  i: Integer;
  sqlStatementLine: string;
begin
    TJava.MonitorEnter(Self);
    try
        tableName := abSqlTable.getTableName();
        try
            count := 0;
            sqlStatement := TJava.ToString(Self.sqlStrings.SELECT_ALL_FROM) + tableName;
            path := (Torg.allbinary.globals.URLGLOBALS.getMainPath()) + (PATH_GLOBALS.getInstance().BACKUP_PATH);
            if not (TDirectory.create(TAbPath.Create(path))) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                    Self.logUtil.putF(Self.ERROR_CREATING + TJava.ToString(path), Self, Self.METHOD_BACKUP_TABLE);
                end;
            end;
            rset := abSqlTable.executeSQLStatement(sqlStatement);
            rsmd := rset.getMetaData();
            colNum := rsmd.getColumnCount();
            QUERY_START := string.Create().append(Self.sqlStrings.INSERT_INTO).append(tableName).append(Self.sqlStrings.VALUES).toString();
            stringBuffer := TStringMaker.Create();
            outputStream := Self.getOutputStream(path, tableName);
            while rset.next() do begin
                stringBuffer.delete_(0, stringBuffer.length());
                stringBuffer.append(QUERY_START);
                for i := 1 to colNum - 1 do begin
                    value := rset.getString(i);
                    stringBuffer.append(Self.convertNewLines(value));
                    stringBuffer.append(Self.sqlStrings.SINGLE_QUOTE_COMMA_SEP);
                end;
                stringBuffer.append(rset.getString(colNum));
                stringBuffer.append(Self.END_);
                sqlStatementLine := stringBuffer.toString();
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                    Self.logUtil.putF(Self.APPENDING + sqlStatementLine, Self, Self.METHOD_BACKUP_TABLE);
                end;
                outputStream.write(TJava.GetBytes(sqlStatementLine));
            end;
            TStreamUtil.getInstance().close(outputStream);
            Exit(Self.TABLE_LABEL + tableName + Self.BACKUP_SUCCESS);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put('Backup Table Failed'#10'SQL Statement', Self, Self.METHOD_BACKUP_TABLE, e);
            end;
            Exit(Self.TABLE_LABEL + tableName + ' Backup Failed');
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TAbSqlTableUtil.restoreTable(abSqlTable: TAbSqlTable; portion: TPortion): string;
var
  tableName: string;
  path: string;
  current: Integer;
  backupFile: TAbFile;
  bufferedLineReader: TBufferedLineReader;
  size: Int64;
  section: Int64;
  start: Int64;
  end_: Int64;
  stringBuffer: TStringMaker;
  line: string;
begin
    TJava.MonitorEnter(Self);
    try
        tableName := abSqlTable.getTableName();
        try
            path := (Torg.allbinary.globals.URLGLOBALS.getMainPath()) + (PATH_GLOBALS.getInstance().BACKUP_PATH);
            current := portion.getCurrent().intValue();
            if (current) = (0) then begin
                if TDirectory.create(TAbPath.Create(path)) then begin
                    if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                        Self.logUtil.putF(Self.ERROR_CREATING + TJava.ToString(path), Self, Self.METHOD_RESTORE_TABLE);
                    end;
                end;
            end;
            backupFile := TAbFile.createAbFile(path, tableName + Self.EXTENSION);
            bufferedLineReader := TBufferedLineReader.Create(backupFile);
            size := bufferedLineReader.getSize();
            section := ((size) div (Int64(portion.getTotal().intValue()))) + (1);
            start := (section) * (Int64(current));
            end_ := (start) + (section);
            if (end_) > (size) then begin
                end_ := size;
            end;
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(Self.TOTAL_LABEL);
            stringBuffer.append(size);
            stringBuffer.append(Self.SECTION_LABEL);
            stringBuffer.append(start);
            stringBuffer.append(Self.DASH);
            stringBuffer.append(end_);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(stringBuffer.toString(), Self, Self.METHOD_RESTORE_TABLE);
            end;
            bufferedLineReader.readUpToLines(start);
            line := Self.stringUtil.EMPTY_STRING;
            while ((bufferedLineReader.getCurrent()) < (end_)) and (((TJava.Assign(line, bufferedLineReader.readLine()))) <> (nil)) do begin
                if (System.Length(line)) > (1) then begin
                    abSqlTable.executeSQLStatement(line);
                end;
            end;
            stringBuffer.append(Self.commonSeps.SPACE);
            stringBuffer.append(Self.TABLE_LABEL);
            stringBuffer.append(tableName);
            stringBuffer.append(Self.PORTION_RESTORED);
            Exit(stringBuffer.toString());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put('Restore Table Failed'#10'SQL Statement', Self, Self.METHOD_RESTORE_TABLE, e);
            end;
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(Self.TABLE_LABEL);
            stringBuffer.append(tableName);
            stringBuffer.append(' Restoration Failed');
            Exit(stringBuffer.toString());
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  TAbSqlTableUtil.instance := TAbSqlTableUtil.Create();

end.

