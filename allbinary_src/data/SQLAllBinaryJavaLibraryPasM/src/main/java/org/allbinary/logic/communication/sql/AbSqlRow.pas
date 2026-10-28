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
unit AbSqlRow;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, BasicArrayList, BasicArrayListD, DbConnectionInfo, LogUtil, StringMaker, StringUtil, Replace, AbSqlColumn;

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

  TAbSqlRow = class(TAbSqlColumn)
  public
    logUtil: TLogUtil;
    EQUAL_QUOTE: string;
    ESCAPE_QUOTES: string;
    GET_ROW: string;
    METHOD_GET_ROW: string;
    METHOD_GET_ROWS: string;
    METHOD_GET_ALL_ROWS: string;
    METHOD_UPDATE_WHERE: string;
    METHOD_GET_ROWS_WHERE_BETWEEN: string;
    METHOD_DELETE_WHERE: string;
    ROW_VALUE_LABEL: string;
    ROW_VALUES_LABEL: string;
    NO_RESULTS_IN_RESULT_SET: string;
    COLUMN_NAME_LABEL: string;
    INSERT_END: string;
    procedure InitFields;
        constructor Create(databaseConnectionInfoInterface: TDbConnectionInfo);
        function getValue(value: string): string;
        procedure updateWhere(key: string; value: string; updatedKeyValuePairs: TJavaHashMap); overload; virtual;
        procedure updateWhere(whereKeyValuePairs: TJavaHashMap; updatedKeyValuePairs: TJavaHashMap); overload; virtual;
        procedure deleteWhere(key: string; value: string); overload; virtual;
        procedure deleteWhere(keysAndValues: TJavaHashMap); overload; virtual;
        procedure insert(values: TBasicArrayList); virtual;
        function getRow(keysAndValues: TJavaHashMap): TJavaHashMap; virtual;
        function getRows(keysAndValues: TJavaHashMap): TBasicArrayList; overload; virtual;
        function getRows(keysAndValues: TJavaHashMap; more: string): TBasicArrayList; overload; virtual;
        function getAllRows: TBasicArrayList; virtual;
        function getRowsWhereBetween(whereKeyValuePairs: TJavaHashMap; betweenColumn: string; smallest: string; largest: string): TBasicArrayList; overload; virtual;
        function getRowsWhereBetween(betweenColumn: string; smallest: string; largest: string): TBasicArrayList; overload; virtual;
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


procedure TAbSqlRow.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.EQUAL_QUOTE := '="';
  Self.ESCAPE_QUOTES := '\"';
  Self.GET_ROW := 'Row Value: ';
  Self.METHOD_GET_ROW := 'getRow()';
  Self.METHOD_GET_ROWS := 'getRows()';
  Self.METHOD_GET_ALL_ROWS := 'getAllRows()';
  Self.METHOD_UPDATE_WHERE := 'updateWhere()';
  Self.METHOD_GET_ROWS_WHERE_BETWEEN := 'getRowsWhereBetween()';
  Self.METHOD_DELETE_WHERE := 'deleteWhere()';
  Self.ROW_VALUE_LABEL := 'Row Value: ';
  Self.ROW_VALUES_LABEL := 'Row Values: ';
  Self.NO_RESULTS_IN_RESULT_SET := 'No Results in ResultSet';
  Self.COLUMN_NAME_LABEL := 'columnName: ';
  Self.INSERT_END := ''')';
end;
    

constructor TAbSqlRow.Create(databaseConnectionInfoInterface: TDbConnectionInfo);
begin
        inherited Create(databaseConnectionInfoInterface);
        InitFields;
end;
    

function TAbSqlRow.getValue(value: string): string;
begin
    TJava.MonitorEnter(Self);
    try
        if nil.isEmpty(value) then begin
            Exit(Self.stringUtil.EMPTY_STRING);
        end else begin
            Exit(value);
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TAbSqlRow.updateWhere(key: string; value: string; updatedKeyValuePairs: TJavaHashMap);
var
  stringBuffer: TStringMaker;
  keyArray: TArray<TObject>;
  size: Integer;
  columnName: string;
  columnValue: string;
  i: Integer;
  sqlStatement: string;
begin
    TJava.MonitorEnter(Self);
    try
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.UPDATE);
        stringBuffer.append(Self.getTableName());
        stringBuffer.append(Self.sqlStrings.SET_);
        try
            keyArray := updatedKeyValuePairs.keySet().toArray();
            size := System.Length(keyArray);
            for i := 0 to size - 1 do begin
                columnName := keyArray[i].toString();
                stringBuffer.append(Self.commonSeps.SPACE);
                stringBuffer.append(columnName);
                stringBuffer.append(Self.EQUAL_QUOTE);
                columnValue := string(updatedKeyValuePairs.get(columnName));
                if (columnValue) = ('') then begin
                    columnValue := Self.stringUtil.EMPTY_STRING;
                end else begin
                    columnValue := TReplace.Create(Self.sqlStrings.CLOSE_QUOTE, Self.ESCAPE_QUOTES).all(columnValue);
                end;
                stringBuffer.append(Self.getValue(columnValue));
                stringBuffer.append(Self.sqlStrings.CLOSE_QUOTE);
                if (i) < ((size) - (1)) then begin
                    stringBuffer.append(Self.commonSeps.COMMA);
                end;
            end;
            stringBuffer.append(Self.sqlStrings.WHERE);
            stringBuffer.append(key);
            stringBuffer.append(Self.sqlStrings.EQUAL_QUOTE);
            stringBuffer.append(Self.getValue(value));
            stringBuffer.append(Self.sqlStrings.CLOSE_QUOTE);
            sqlStatement := stringBuffer.toString();
            Self.executeSQLStatement(sqlStatement);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(TJava.ToString(Self.SUCCESS_SQL_STATEMENT) + sqlStatement, Self, Self.METHOD_UPDATE_WHERE);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put((Self.FAILED_SQL_STATEMENT) + (stringBuffer), Self, Self.METHOD_UPDATE_WHERE, e);
            end;
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
procedure TAbSqlRow.updateWhere(whereKeyValuePairs: TJavaHashMap; updatedKeyValuePairs: TJavaHashMap);
var
  stringBuffer: TStringMaker;
  keyArray: TArray<TObject>;
  size: Integer;
  columnName: string;
  columnValue: string;
  i: Integer;
  set_: ISet;
  keyArray2: TArray<TObject>;
  size2: Integer;
  key: string;
  value: string;
  sqlStatement: string;
begin
    TJava.MonitorEnter(Self);
    try
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.UPDATE);
        stringBuffer.append(Self.getTableName());
        stringBuffer.append(Self.sqlStrings.SET_);
        try
            keyArray := updatedKeyValuePairs.keySet().toArray();
            size := System.Length(keyArray);
            for i := 0 to size - 1 do begin
                columnName := keyArray[i].toString();
                stringBuffer.append(Self.commonSeps.SPACE);
                stringBuffer.append(columnName);
                stringBuffer.append(Self.EQUAL_QUOTE);
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                    Self.logUtil.putF(Self.COLUMN_NAME_LABEL + columnName, Self, Self.METHOD_UPDATE_WHERE);
                end;
                columnValue := string(updatedKeyValuePairs.get(columnName));
                if (columnValue) = ('') then begin
                    columnValue := Self.stringUtil.EMPTY_STRING;
                end else begin
                    columnValue := TReplace.Create(Self.sqlStrings.CLOSE_QUOTE, Self.ESCAPE_QUOTES).all(columnValue);
                end;
                stringBuffer.append(Self.getValue(columnValue));
                stringBuffer.append(Self.sqlStrings.CLOSE_QUOTE);
                if (i) < ((size) - (1)) then begin
                    stringBuffer.append(Self.commonSeps.COMMA);
                end;
            end;
            stringBuffer.append(Self.sqlStrings.WHERE);
            set_ := whereKeyValuePairs.keySet();
            keyArray2 := set_.toArray();
            size2 := System.Length(keyArray2);
            for i := 0 to size2 - 1 do begin
                key := string(keyArray2[i]);
                value := string(whereKeyValuePairs.get(key));
                begin
                    stringBuffer.append(key);
                    stringBuffer.append(Self.sqlStrings.EQUAL_QUOTE);
                    stringBuffer.append(Self.getValue(value));
                    stringBuffer.append(Self.sqlStrings.CLOSE_QUOTE);
                    if (i) < ((size2) - (1)) then begin
                        stringBuffer.append(Self.sqlStrings.AND_);
                    end;
                end;
            end;
            sqlStatement := stringBuffer.toString();
            Self.executeSQLStatement(sqlStatement);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(TJava.ToString(Self.SUCCESS_SQL_STATEMENT) + sqlStatement, Self, Self.METHOD_UPDATE_WHERE);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put((Self.FAILED_SQL_STATEMENT) + (stringBuffer), Self, Self.METHOD_UPDATE_WHERE, e);
            end;
            raise e;
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TAbSqlRow.deleteWhere(key: string; value: string);
var
  stringBuffer: TStringMaker;
  sqlStatement: string;
begin
    TJava.MonitorEnter(Self);
    try
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.DELETE_);
        stringBuffer.append(Self.sqlStrings.FROM);
        stringBuffer.append(Self.getTableName());
        stringBuffer.append(Self.sqlStrings.WHERE);
        stringBuffer.append(key);
        stringBuffer.append(Self.sqlStrings.EQUAL_QUOTE);
        stringBuffer.append(value);
        stringBuffer.append(Self.sqlStrings.CLOSE_QUOTE);
        try
            sqlStatement := stringBuffer.toString();
            Self.executeSQLStatement(sqlStatement);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(TJava.ToString(Self.SUCCESS_SQL_STATEMENT) + sqlStatement, Self, Self.METHOD_DELETE_WHERE);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put(TJava.ToString(Self.FAILED_SQL_STATEMENT) + stringBuffer.toString(), Self, Self.METHOD_DELETE_WHERE, e);
            end;
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TAbSqlRow.deleteWhere(keysAndValues: TJavaHashMap);
var
  stringBuffer: TStringMaker;
  set_: ISet;
  keyArray: TArray<TObject>;
  size: Integer;
  key: string;
  value: string;
  i: Integer;
  sqlStatement: string;
begin
    TJava.MonitorEnter(Self);
    try
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.DELETE_);
        stringBuffer.append(Self.sqlStrings.FROM);
        stringBuffer.append(Self.getTableName());
        stringBuffer.append(Self.sqlStrings.WHERE);
        try
            set_ := keysAndValues.keySet();
            keyArray := set_.toArray();
            size := System.Length(keyArray);
            for i := 0 to size - 1 do begin
                key := string(keyArray[i]);
                value := TJava.NewString(string(keysAndValues.get(key)));
                stringBuffer.append(key);
                stringBuffer.append(Self.sqlStrings.EQUAL_QUOTE);
                stringBuffer.append(Self.getValue(value));
                stringBuffer.append(Self.sqlStrings.CLOSE_QUOTE);
                if (i) < ((size) - (1)) then begin
                    stringBuffer.append(Self.sqlStrings.AND_);
                end;
            end;
            sqlStatement := stringBuffer.toString();
            Self.executeSQLStatement(sqlStatement);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(TJava.ToString(Self.SUCCESS_SQL_STATEMENT) + sqlStatement, Self, Self.METHOD_DELETE_WHERE);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put(TJava.ToString(Self.FAILED_SQL_STATEMENT) + stringBuffer.toString(), Self, Self.METHOD_DELETE_WHERE, e);
            end;
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TAbSqlRow.insert(values: TBasicArrayList);
var
  stringBuffer: TStringMaker;
  value: string;
  i: Integer;
  sqlStatement: string;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.INSERT_INTO);
        stringBuffer.append(Self.getTableName());
        stringBuffer.append(Self.sqlStrings.VALUES);
        try
            for i := 0 to (values.size()) - (1) - 1 do begin
                value := Self.getValue(string(values.get(i)));
                value := TReplace.Create(Self.sqlStrings.ESCAPE, Self.sqlStrings.DOUBLE_ESCAPE).all(value);
                stringBuffer.append(value);
                stringBuffer.append(Self.sqlStrings.SINGLE_QUOTE_COMMA_SEP);
            end;
            value := Self.getValue(string(values.get((values.size()) - (1))));
            value := TReplace.Create(Self.sqlStrings.ESCAPE, Self.sqlStrings.DOUBLE_ESCAPE).all(value);
            stringBuffer.append(value);
            stringBuffer.append(Self.INSERT_END);
            sqlStatement := stringBuffer.toString();
            Self.executeSQLStatement(sqlStatement);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(TJava.ToString(Self.SUCCESS_SQL_STATEMENT) + sqlStatement, Self, Self.INSERT);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put(TJava.ToString(Self.FAILED_SQL_STATEMENT) + stringBuffer.toString(), Self, INSERT, e);
            end;
            end;
        end;
end;
    

function TAbSqlRow.getRow(keysAndValues: TJavaHashMap): TJavaHashMap;
var
  stringBuffer: TStringMaker;
  result_: TJavaHashMap;
  set_: ISet;
  keyArray: TArray<TObject>;
  size: Integer;
  key: string;
  value: string;
  index: Integer;
  sqlStatement: string;
  rset: TResultSet;
  resultSetMetaData: TResultSetMetaData;
  columnCount: Integer;
  columnName: string;
  field: string;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.SELECT_ALL_FROM);
        stringBuffer.append(Self.getTableName());
        stringBuffer.append(Self.sqlStrings.WHERE);
        try
            result_ := nil;
            set_ := keysAndValues.keySet();
            keyArray := set_.toArray();
            size := System.Length(keyArray);
            for index := 0 to size - 1 do begin
                key := string(keyArray[index]);
                value := TJava.NewString(string(keysAndValues.get(key)));
                stringBuffer.append(key);
                stringBuffer.append(Self.sqlStrings.EQUAL_QUOTE);
                stringBuffer.append(Self.getValue(value));
                stringBuffer.append(Self.sqlStrings.CLOSE_QUOTE);
                if (index) < ((size) - (1)) then begin
                    stringBuffer.append(Self.sqlStrings.AND_);
                end;
            end;
            sqlStatement := stringBuffer.toString();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(TJava.ToString(Self.sqlStrings.SQL_STATEMENT_LABEL) + sqlStatement, Self, Self.METHOD_GET_ROW);
            end;
            rset := Self.executeSQLStatement(sqlStatement);
            resultSetMetaData := rset.getMetaData();
            while rset.next() do begin
                result_ := Self.stdUtil.createHashMap();
                columnCount := resultSetMetaData.getColumnCount();
                for index := 1 to columnCount do begin
                    columnName := resultSetMetaData.getColumnName(index);
                    field := rset.getString(columnName);
                    result_.put(columnName, field);
                end;
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                    Self.logUtil.putF(Self.ROW_VALUE_LABEL + result_.toString(), Self, Self.METHOD_GET_ROW);
                end;
                Exit(result_);
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.putF(Self.NO_RESULTS_IN_RESULT_SET, Self, Self.METHOD_GET_ROW);
            end;
            Exit(nil);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put((Self.FAILED_SQL_STATEMENT) + (stringBuffer), Self, Self.METHOD_GET_ROW, e);
            end;
            Exit(nil);
            end;
        end;
end;
    

function TAbSqlRow.getRows(keysAndValues: TJavaHashMap): TBasicArrayList;
begin
        Exit(Self.getRows(keysAndValues, TStringUtil.getInstance().EMPTY_STRING));
end;
    

function TAbSqlRow.getRows(keysAndValues: TJavaHashMap; more: string): TBasicArrayList;
var
  stringBuffer: TStringMaker;
  rows: TBasicArrayList;
  set_: ISet;
  keyArray: TArray<TObject>;
  size: Integer;
  key: string;
  value: string;
  index: Integer;
  sqlStatement: string;
  rset: TResultSet;
  resultSetMetaData: TResultSetMetaData;
  result_: TJavaHashMap;
  columnCount: Integer;
  columnName: string;
  field: string;
  resultAsString: string;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.SELECT_ALL_FROM);
        stringBuffer.append(Self.getTableName());
        stringBuffer.append(Self.sqlStrings.WHERE);
        try
            rows := TBasicArrayListD.Create();
            set_ := keysAndValues.keySet();
            keyArray := set_.toArray();
            size := System.Length(keyArray);
            for index := 0 to size - 1 do begin
                key := string(keyArray[index]);
                value := TJava.NewString(string(keysAndValues.get(key)));
                stringBuffer.append(key);
                stringBuffer.append(Self.sqlStrings.EQUAL_QUOTE);
                stringBuffer.append(Self.getValue(value));
                stringBuffer.append(Self.sqlStrings.CLOSE_QUOTE);
                if (index) < ((size) - (1)) then begin
                    stringBuffer.append(Self.sqlStrings.AND_);
                end;
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF((Self.sqlStrings.SQL_STATEMENT_LABEL) + (stringBuffer), Self, Self.METHOD_GET_ROWS);
            end;
            stringBuffer.append(more);
            sqlStatement := stringBuffer.toString();
            rset := Self.executeSQLStatement(sqlStatement);
            resultSetMetaData := rset.getMetaData();
            while rset.next() do begin
                result_ := Self.stdUtil.createHashMap();
                columnCount := resultSetMetaData.getColumnCount();
                for index := 1 to columnCount do begin
                    columnName := resultSetMetaData.getColumnName(index);
                    field := rset.getString(columnName);
                    result_.put(columnName, field);
                end;
                resultAsString := result_.toString();
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                    Self.logUtil.putF(Self.GET_ROW + resultAsString, Self, Self.METHOD_GET_ROWS);
                end;
                rows.add(result_);
            end;
            Exit(rows);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put((Self.FAILED_SQL_STATEMENT) + (stringBuffer), Self, Self.METHOD_GET_ROWS, e);
            end;
            Exit(nil);
            end;
        end;
end;
    

function TAbSqlRow.getAllRows: TBasicArrayList;
var
  stringBuffer: TStringMaker;
  rows: TBasicArrayList;
  sqlStatement: string;
  rset: TResultSet;
  resultSetMetaData: TResultSetMetaData;
  result_: TJavaHashMap;
  columnCount: Integer;
  columnName: string;
  field: string;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.SELECT_ALL_FROM);
        stringBuffer.append(Self.getTableName());
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF((Self.sqlStrings.SQL_STATEMENT_LABEL) + (stringBuffer), Self, Self.METHOD_GET_ALL_ROWS);
            end;
            rows := TBasicArrayListD.Create();
            sqlStatement := stringBuffer.toString();
            rset := Self.executeSQLStatement(sqlStatement);
            resultSetMetaData := rset.getMetaData();
            while rset.next() do begin
                result_ := Self.stdUtil.createHashMap();
                columnCount := resultSetMetaData.getColumnCount();
                for index := 1 to columnCount do begin
                    columnName := resultSetMetaData.getColumnName(index);
                    field := rset.getString(columnName);
                    result_.put(columnName, field);
                end;
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                    Self.logUtil.putF(Self.ROW_VALUES_LABEL + result_.toString(), Self, Self.METHOD_GET_ALL_ROWS);
                end;
                rows.add(result_);
            end;
            Exit(rows);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put((Self.FAILED_SQL_STATEMENT) + (stringBuffer), Self, Self.METHOD_GET_ALL_ROWS, e);
            end;
            Exit(nil);
            end;
        end;
end;
    

function TAbSqlRow.getRowsWhereBetween(whereKeyValuePairs: TJavaHashMap; betweenColumn: string; smallest: string; largest: string): TBasicArrayList;
var
  stringBuffer: TStringMaker;
  rows: TBasicArrayList;
  set_: ISet;
  key: string;
  value: string;
  keyArray: TArray<TObject>;
  size: Integer;
  index: Integer;
  sqlStatement: string;
  rset: TResultSet;
  resultSetMetaData: TResultSetMetaData;
  result_: TJavaHashMap;
  columnNames: TBasicArrayList;
  columnCount: Integer;
  columnName: string;
  field: string;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.SELECT_ALL_FROM);
        stringBuffer.append(Self.getTableName());
        try
            rows := TBasicArrayListD.Create();
            stringBuffer.append(Self.sqlStrings.WHERE);
            set_ := whereKeyValuePairs.keySet();
            
            
            keyArray := set_.toArray();
            size := System.Length(keyArray);
            for index := 0 to size - 1 do begin
                key := string(keyArray[index]);
                value := string(whereKeyValuePairs.get(key));
                stringBuffer.append(key);
                stringBuffer.append(Self.sqlStrings.EQUAL_QUOTE);
                stringBuffer.append(Self.getValue(value));
                stringBuffer.append(Self.sqlStrings.CLOSE_QUOTE);
                stringBuffer.append(Self.sqlStrings.AND_);
            end;
            stringBuffer.append(betweenColumn);
            stringBuffer.append(Self.sqlStrings.MORE_THAN_QUOTE);
            stringBuffer.append(smallest);
            stringBuffer.append(Self.sqlStrings.CLOSE_QUOTE);
            stringBuffer.append(Self.sqlStrings.AND_);
            stringBuffer.append(betweenColumn);
            stringBuffer.append(Self.sqlStrings.LESS_THAN_QUOTE);
            stringBuffer.append(largest);
            stringBuffer.append(Self.sqlStrings.CLOSE_QUOTE);
            sqlStatement := stringBuffer.toString();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(TJava.ToString(Self.sqlStrings.SQL_STATEMENT_LABEL) + sqlStatement, Self, Self.METHOD_GET_ROWS_WHERE_BETWEEN);
            end;
            rset := Self.executeSQLStatement(sqlStatement);
            resultSetMetaData := rset.getMetaData();
            
            
            
            
            
            while rset.next() do begin
                result_ := Self.stdUtil.createHashMap();
                columnNames := TBasicArrayListD.Create();
                columnCount := resultSetMetaData.getColumnCount();
                for index := 1 to columnCount do begin
                    columnName := resultSetMetaData.getColumnName(index);
                    field := rset.getString(columnName);
                    result_.put(columnName, field);
                end;
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                    Self.logUtil.putF(Self.ROW_VALUE_LABEL + result_.toString(), Self, Self.METHOD_GET_ROWS_WHERE_BETWEEN);
                end;
                rows.add(result_);
            end;
            Exit(rows);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put((Self.FAILED_SQL_STATEMENT) + (stringBuffer), Self, Self.METHOD_GET_ROWS_WHERE_BETWEEN, e);
            end;
            Exit(nil);
            end;
        end;
end;
    

function TAbSqlRow.getRowsWhereBetween(betweenColumn: string; smallest: string; largest: string): TBasicArrayList;
var
  stringBuffer: TStringMaker;
  rows: TBasicArrayList;
  sqlStatement: string;
  rset: TResultSet;
  resultSetMetaData: TResultSetMetaData;
  columnName: string;
  field: string;
  result_: TJavaHashMap;
  columnNames: TBasicArrayList;
  columnCount: Integer;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.sqlStrings.SELECT_ALL_FROM);
        stringBuffer.append(Self.getTableName());
        try
            rows := TBasicArrayListD.Create();
            stringBuffer.append(Self.sqlStrings.WHERE);
            stringBuffer.append(betweenColumn);
            stringBuffer.append(Self.sqlStrings.MORE_THAN_QUOTE);
            stringBuffer.append(smallest);
            stringBuffer.append(Self.sqlStrings.CLOSE_QUOTE);
            stringBuffer.append(Self.sqlStrings.AND_);
            stringBuffer.append(betweenColumn);
            stringBuffer.append(Self.sqlStrings.LESS_THAN_QUOTE);
            stringBuffer.append(largest);
            stringBuffer.append(Self.sqlStrings.CLOSE_QUOTE);
            sqlStatement := stringBuffer.toString();
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF(TJava.ToString(Self.sqlStrings.SQL_STATEMENT_LABEL) + sqlStatement, Self, Self.METHOD_GET_ROWS_WHERE_BETWEEN);
            end;
            rset := Self.executeSQLStatement(sqlStatement);
            resultSetMetaData := rset.getMetaData();
            
            
            
            
            
            while rset.next() do begin
                result_ := Self.stdUtil.createHashMap();
                columnNames := TBasicArrayListD.Create();
                columnCount := resultSetMetaData.getColumnCount();
                for index := 1 to columnCount do begin
                    columnName := resultSetMetaData.getColumnName(index);
                    field := rset.getString(columnName);
                    result_.put(columnName, field);
                end;
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                    Self.logUtil.putF(Self.ROW_VALUE_LABEL + result_.toString(), Self, Self.METHOD_GET_ROWS_WHERE_BETWEEN);
                end;
                rows.add(result_);
            end;
            Exit(rows);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR) then begin
                Self.logUtil.put((Self.FAILED_SQL_STATEMENT) + (stringBuffer), Self, Self.METHOD_GET_ROWS_WHERE_BETWEEN, e);
            end;
            Exit(nil);
            end;
        end;
end;

initialization

end.

