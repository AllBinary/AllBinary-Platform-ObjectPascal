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
// package org.allbinary.game.score
unit RecordStoreHighScores;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, TsUtil, GameInfo, NullRecordComparator, NullRecordFilter, NullRecordStore, StdUtil, LogUtil, PreLogUtil, StringMaker, AbeClientInformationInterface, PlatformRecordIdUtil, CommonSeps, CommonStrings, ABHashtable, BasicArrayList, BasicArrayListD, HighScores, HighScore;

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

  TRecordStoreHighScores = class(THighScores)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    platformRecordIdUtil: TPlatformRecordIdUtil;
    tsUtil: TTsUtil;
    RECORD_ID: string;
    MAXHIGHSCORES: Integer;
    gameInfo: TGameInfo;
    abeClientInformation: IAbeClientInformationInterface;
    recordComparatorInterface: TRecordComparator;
    class var hashTable: TABHashtable<TObject, TObject>;
    procedure InitFields;
        constructor Create(abeClientInformation: IAbeClientInformationInterface; gameInfo: TGameInfo; name: string; heading: string; columnTwoHeading: string; recordComparatorInterface: TRecordComparator);
        class function getInstance(abeClientInformation: IAbeClientInformationInterface; gameInfo: TGameInfo; highScoreName: string; heading: string; columnTwoHeading: string; recordComparatorInterface: TRecordComparator): THighScores; static;
        function getRecordId(abeClientInformation: IAbeClientInformationInterface): string;
        procedure addHighScore(newHighScore: THighScore); override;
        procedure removeLowestHighScore;
        procedure load;
        function isTooManyHighScores: Boolean;
        function isBestScore(newHighScore: THighScore): Boolean; override;
        function toString: string; override;
  end;

implementation
uses
  ScoreComparator;



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


procedure TRecordStoreHighScores.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.platformRecordIdUtil := TPlatformRecordIdUtil.getInstance();
  Self.tsUtil := TTsUtil.getInstance();
  Self.RECORD_ID := '_HS';
  Self.MAXHIGHSCORES := 100;
  
  
  
end;
    

constructor TRecordStoreHighScores.Create(abeClientInformation: IAbeClientInformationInterface; gameInfo: TGameInfo; name: string; heading: string; columnTwoHeading: string; recordComparatorInterface: TRecordComparator);
begin
        inherited Create(name, heading, columnTwoHeading);
        InitFields;
        Self.abeClientInformation := abeClientInformation;
        Self.gameInfo := gameInfo;
        Self.recordComparatorInterface := recordComparatorInterface;
        Self.load();
end;
    

class function TRecordStoreHighScores.getInstance(abeClientInformation: IAbeClientInformationInterface; gameInfo: TGameInfo; highScoreName: string; heading: string; columnTwoHeading: string; recordComparatorInterface: TRecordComparator): THighScores;
var
  highScoresCanBeNull: TObject;
  highScores: THighScores;
begin
    TJava.MonitorEnter(nil);
    try
        highScoresCanBeNull := TRecordStoreHighScores.hashTable.get(TObject(highScoreName));
        if (highScoresCanBeNull) = (nil) then begin
            highScores := TRecordStoreHighScores.Create(abeClientInformation, gameInfo, highScoreName, heading, columnTwoHeading, recordComparatorInterface);
            TRecordStoreHighScores.hashTable.put(highScores.getName(), highScores);
            Exit(highScores);
        end;
        Exit(THighScores(highScoresCanBeNull));
    finally
    TJava.MonitorExit(nil);
    end;
end;
    

function TRecordStoreHighScores.getRecordId(abeClientInformation: IAbeClientInformationInterface): string;
begin
        Exit(Self.platformRecordIdUtil.getRecordId(abeClientInformation, TStringMaker.Create().append(TCommonSeps.getInstance().UNDERSCORE).append(Self.getName()).append(Self.RECORD_ID).toString()));
end;
    

procedure TRecordStoreHighScores.addHighScore(newHighScore: THighScore);
var
  recordStore: TRecordStore;
  highScoreBytes: TArray<ShortInt>;
  recordId: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        recordStore := TNullRecordStore.NULL_RECORD_STORE;
        try
        try
            Self.logUtil.putF(TStringMaker.Create().append('Adding HighScore: ').appendlong(Int64(Trunc(newHighScore.getScore()))).toString(), Self, Self.commonStrings.ADD);
            if Self.isTooManyHighScores() then begin
                Self.logUtil.putF('Removing Lowest Score', Self, Self.commonStrings.ADD);
                Self.removeLowestHighScore();
            end;
            recordStore := TRecordStore.openRecordStore(Self.getRecordId(Self.abeClientInformation), True);
            highScoreBytes := newHighScore.getAsBytes();
            recordId := recordStore.addRecord(highScoreBytes, 0, System.Length(highScoreBytes));
            Self.load();
        except
            on e: TRecordStoreException do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.commonStrings.ADD, e);
            end;
            on e: TIOException do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.commonStrings.ADD, e);
            end;
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.commonStrings.ADD, e);
            end;
        end;
        finally
            try
                if (recordStore) <> (nil) then begin
                    TPreLogUtil.put('Closing RecordStore', Self, Self.commonStrings.ADD);
                    recordStore.closeRecordStore();
                end;
            except
                on e: TRecordStoreException do begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.commonStrings.ADD, e);
                end;
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TRecordStoreHighScores.removeLowestHighScore;
var
  recordStore: TRecordStore;
  recordEnum: TRecordEnumeration;
  scoreComparator: TScoreComparator;
  bestHighScore: THighScore;
  recordAsBytes: TArray<ShortInt>;
  byteArrayInputStream: TByteArrayInputStream;
  inputStream: TDataInputStream;
  id: Integer;
  name: string;
  nextScore: Int64;
  nextCurrentHighScore: THighScore;
begin
        recordStore := TNullRecordStore.NULL_RECORD_STORE;
        try
        try
            recordStore := TRecordStore.openRecordStore(Self.getRecordId(Self.abeClientInformation), True);
            recordEnum := recordStore.enumerateRecords(TNullRecordFilter.NULL_RECORD_FILTER, TNullRecordComparator.NULL_RECORD_COMPARATOR, True);
            scoreComparator := (TScoreComparator(Self.recordComparatorInterface));
            bestHighScore := THighScore.Create(-1, 'none', TGameInfo.NONE, scoreComparator.getBestScore());
            
            
            
            while recordEnum.hasNextElement() do begin
                id := recordEnum.nextRecordId();
                recordAsBytes := Self.tsUtil.getRecord(recordStore, id);
                if (recordAsBytes) <> (nil) then begin
                    byteArrayInputStream := TByteArrayInputStream.Create(recordAsBytes);
                    inputStream := TDataInputStream.Create(byteArrayInputStream);
                    name := inputStream.readUTF();
                    nextScore := inputStream.readLong();
                    nextCurrentHighScore := THighScore.Create(id, name, TGameInfo.NONE, nextScore);
                    if (Self.recordComparatorInterface.compare(nextCurrentHighScore.getAsBytes(), bestHighScore.getAsBytes())) = (TRecordComparator.FOLLOWS) then begin
                        bestHighScore := nextCurrentHighScore;
                    end;
                end;
            end;
            if (bestHighScore.getId()) <> (-1) then begin
                Self.logUtil.putF(TStringMaker.Create().append('Removing Lowest HighScore: ').appendlong(Int64(Trunc(bestHighScore.getScore()))).toString(), Self, Self.commonStrings.LOAD);
                recordStore.deleteRecord(bestHighScore.getId());
            end;
        except
            on e: TRecordStoreException do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'removeLowestHighScore', e);
            end;
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'removeLowestHighScore', e);
            end;
        end;
        finally
            try
                if (recordStore) <> (nil) then begin
                    TPreLogUtil.put('Closing RecordStore', Self, 'removeLowestHighScore');
                    recordStore.closeRecordStore();
                end;
            except
                on e: TRecordStoreException do begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'removeLowestHighScore', e);
                end;
            end;
        end;
end;
    

procedure TRecordStoreHighScores.load;
var
  recordStore: TRecordStore;
  recordEnum: TRecordEnumeration;
  recordAsBytes: TArray<ShortInt>;
  byteArrayInputStream: TByteArrayInputStream;
  inputStream: TDataInputStream;
  id: Integer;
  name: string;
  score: Int64;
  newHighScore: THighScore;
  list: TBasicArrayList;
  size: Integer;
  lastIndex: Integer;
  highScore: THighScore;
  index: Integer;
begin
        recordStore := TNullRecordStore.NULL_RECORD_STORE;
        try
        try
            recordStore := TRecordStore.openRecordStore(Self.getRecordId(Self.abeClientInformation), True);
            Self.setList(TBasicArrayListD.Create());
            recordEnum := recordStore.enumerateRecords(TNullRecordFilter.NULL_RECORD_FILTER, TNullRecordComparator.NULL_RECORD_COMPARATOR, True);
            
            
            
            while recordEnum.hasNextElement() do begin
                id := recordEnum.nextRecordId();
                recordAsBytes := Self.tsUtil.getRecord(recordStore, id);
                if (recordAsBytes) <> (nil) then begin
                    byteArrayInputStream := TByteArrayInputStream.Create(recordAsBytes);
                    inputStream := TDataInputStream.Create(byteArrayInputStream);
                    try
                        name := inputStream.readUTF();
                        score := inputStream.readLong();
                        newHighScore := THighScore.Create(id, name, TGameInfo.NONE, score);
                        list := Self.getList();
                        size := list.size();
                        lastIndex := size;
                        for index := 0 to size - 1 do begin
                            highScore := THighScore(list.objectArray[index]);
                            if (Self.recordComparatorInterface.compare(newHighScore.getAsBytes(), highScore.getAsBytes())) = (TRecordComparator.PRECEDES) then begin
                                lastIndex := index;
                                Break;
                            end;
                        end;
                        list.addAt(lastIndex, newHighScore);
                    except
                        on e: TEOFException do begin
                        Self.logUtil.put('EOF', Self, Self.commonStrings.LOAD, e);
                        raise e;
                        end;
                    end;
                end;
            end;
        except
            on e: TRecordStoreNotFoundException do begin
            Self.logUtil.put('No High Scores', Self, Self.commonStrings.LOAD, e);
            end;
            on e: TRecordStoreException do begin
            Self.logUtil.put(Self.commonStrings.UNKNOWN, Self, Self.commonStrings.LOAD, e);
            end;
            on e: TIOException do begin
            Self.logUtil.put(Self.commonStrings.UNKNOWN, Self, Self.commonStrings.LOAD, e);
            end;
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.UNKNOWN, Self, Self.commonStrings.LOAD, e);
            end;
        end;
        finally
            try
                if (recordStore) <> (nil) then begin
                    TPreLogUtil.put('Closing RecordStore', Self, Self.commonStrings.LOAD);
                    recordStore.closeRecordStore();
                end;
            except
                on e: TRecordStoreException do begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.commonStrings.LOAD, e);
                end;
            end;
        end;
end;
    

function TRecordStoreHighScores.isTooManyHighScores: Boolean;
begin
        if ((Self.getList()) <> (nil)) and ((Self.getList().size()) < (Self.MAXHIGHSCORES)) then begin
            Exit(False);
        end else begin
            Self.logUtil.putF(TStringMaker.Create().append('HighScores RecordStore Max Reached: ').appendint(Self.MAXHIGHSCORES).toString(), Self, 'isTooManyHighScores');
            Exit(True);
        end;
end;
    

// throws Exception
function TRecordStoreHighScores.isBestScore(newHighScore: THighScore): Boolean;
var
  list: TBasicArrayList;
  size: Integer;
  highScore: THighScore;
  index: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        try
            if not (Self.isTooManyHighScores()) then begin
                Self.logUtil.putF('Slot Available for a High Score', Self, 'isBestScore');
                Exit(True);
            end else begin
                list := Self.getList();
                size := list.size();
                for index := 0 to size - 1 do begin
                    highScore := THighScore(list.objectArray[index]);
                    if (Self.recordComparatorInterface.compare(newHighScore.getAsBytes(), highScore.getAsBytes())) = (TRecordComparator.FOLLOWS) then begin
                        Self.logUtil.putF('Obtained a High Score', Self, 'isBestScore');
                        Exit(True);
                    end;
                end;
            end;
            Self.logUtil.putF('Not a High Score', Self, 'isBestScore');
            Exit(False);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.commonStrings.ADD, e);
            raise e;
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TRecordStoreHighScores.toString: string;
var
  stringBuffer: TStringMaker;
  list: TBasicArrayList;
  size: Integer;
  highScore: THighScore;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(inherited toString());
        list := Self.getList();
        size := list.size();
        for index := 0 to size - 1 do begin
            highScore := THighScore(list.objectArray[index]);
            stringBuffer.append(highScore.getScoreString());
            stringBuffer.append(TCommonSeps.getInstance().COMMA_SEP);
        end;
        Exit(stringBuffer.toString());
end;

initialization
  TRecordStoreHighScores.hashTable := TStdUtil.getInstance().createHashtable();

end.

