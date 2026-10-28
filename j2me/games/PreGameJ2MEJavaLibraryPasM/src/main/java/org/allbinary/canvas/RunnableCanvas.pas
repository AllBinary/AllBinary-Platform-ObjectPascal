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
// package org.allbinary.canvas
unit RunnableCanvas;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, TsUtil, NullWaitGameRunnable, MyCanvas, ABSystemWrapper, NullUtil, StdUtil, StringMaker, StringUtil, CommonLabels, CommonStrings, NullThread, RunnableInterface, ThreadObjectUtil, TimeDelayHelper, BasicArrayList, Processor;

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

  TRunnableCanvas = class(TMyCanvas, IRunnableInterface)
  public
    nullUtil: TNullUtil;
    stdUtil: TStdUtil;
    systemWrapper: TABSystemWrapper;
    tsUtil: TTsUtil;
    thread: TThread;
    currentThread: TThread;
    running: Boolean;
    loopTimeHelper: TTimeDelayHelper;
    runnableCanvasRefreshHelper: TProcessor;
    commonLabels: TCommonLabels;
    threadObjectUtil: TThreadObjectUtil;
    SET_RUNNING: string;
    IS_RUNNING: string;
    THREAD: string;
    NOT_EQUAL: string;
    PAUSE_SLEEP: string;
    START_PAUSE: string;
    END_PAUSE: string;
    PROCESS_LOOP_SLEEP: string;
    pauseWait: Int64;
    notified: Boolean;
    procedure InitFields;
        constructor Create(commandListener: TCommandListener; childNameList: TBasicArrayList; hasParam: Boolean);
        procedure initCommands(cmdListener: TCommandListener); virtual;
        function isMainCanvas: Boolean; virtual;
        procedure setThread(thread: TThread); virtual;
        procedure setRunning(running: Boolean); virtual;
        function isRunning: Boolean; virtual;
        function getLoopTimeHelperP: TTimeDelayHelper; virtual;
        procedure setWait(wait: Integer); virtual;
        function getWait: Integer; virtual;
        procedure setCurrentThread; virtual;
        procedure setCurrentThreadFake; virtual;
        procedure showNotify; virtual;
        procedure stopWaiting;
        procedure waitOnNotify(wait: Int64); virtual;
        procedure processSleep; virtual;
        function isPausable: Boolean; virtual;
        procedure processGameSleep(sleep: Int64); virtual;
        procedure processLoopSleep; virtual;
        function isSingleThread: Boolean; virtual;
        procedure run; virtual;
        procedure end2; virtual;
        function getType: Integer; virtual;
  end;

implementation
uses
  RunnableCanvasRefreshHelper;



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


procedure TRunnableCanvas.InitFields;
begin
  Self.nullUtil := TNullUtil.getInstance();
  Self.stdUtil := TStdUtil.getInstance();
  Self.systemWrapper := TABSystemWrapper.getInstance();
  Self.tsUtil := TTsUtil.getInstance();
  Self.thread := TNullThread.NULL_THREAD;
  Self.currentThread := TNullThread.NULL_THREAD;
  
  Self.loopTimeHelper := TTimeDelayHelper.Create(TNullWaitGameRunnable.getInstance().WAIT);
  Self.runnableCanvasRefreshHelper := TProcessor.getInstance();
  Self.commonLabels := TCommonLabels.getInstance();
  Self.threadObjectUtil := TThreadObjectUtil.getInstance();
  Self.SET_RUNNING := 'setRunning';
  Self.IS_RUNNING := 'isRunning';
  Self.THREAD := 'Thread: ';
  Self.NOT_EQUAL := ' != ';
  Self.PAUSE_SLEEP := 'pause sleep';
  Self.START_PAUSE := 'start pause - game thread sleep at: ';
  Self.END_PAUSE := 'end pause - game thread sleep at: ';
  Self.PROCESS_LOOP_SLEEP := 'processLoopSleep';
  Self.pauseWait := 0;
  Self.notified := False;
end;
    

constructor TRunnableCanvas.Create(commandListener: TCommandListener; childNameList: TBasicArrayList; hasParam: Boolean);
begin
        inherited Create(TCommonStrings.getInstance().UNKNOWN, childNameList);
        InitFields;
        Self.logUtil.putF(TStringMaker.Create().append('RunnableCanvas delay: ').appendint(Integer(Trunc(Self.loopTimeHelper.delay))).toString(), Self, Self.commonStrings.CONSTRUCTOR_);
        Self.runnableCanvasRefreshHelper := TRunnableCanvasRefreshHelper.Create(Self);
        if (commandListener) <> (nil) then begin
            Self.initCommands(commandListener);
        end else if hasParam then begin
            Self.logUtil.putF('commandListener was null', Self, 'initCommands');
        end;
end;
    

procedure TRunnableCanvas.initCommands(cmdListener: TCommandListener);
begin
        Self.logUtil.putF(Self.commonStrings.NOT_IMPLEMENTED, Self, 'initCommands');
end;
    

function TRunnableCanvas.isMainCanvas: Boolean;
begin
        if (Self.getCustomCommandListener()) <> (nil) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

procedure TRunnableCanvas.setThread(thread: TThread);
begin
        Self.thread := thread;
end;
    

procedure TRunnableCanvas.setRunning(running: Boolean);
begin
        Self.running := running;
        if not (Self.running) then begin
            Self.thread := TNullThread.NULL_THREAD;
            TJava.MonitorEnter(Self);
            try
                Self.threadObjectUtil.notifyObject(Self);
            finally
                TJava.MonitorExit(Self);
            end;
        end;
        Self.logUtil.putF(TStringMaker.Create().append(Self.IS_RUNNING).appendboolean(Self.running).toString(), Self, Self.SET_RUNNING);
end;
    

function TRunnableCanvas.isRunning: Boolean;
var
  stringBuffer: TStringMaker;
begin
    TJava.MonitorEnter(Self);
    try
        if (Self.thread) = (Self.currentThread) then begin
            Exit(Self.running);
        end else begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(Self.THREAD);
            if (Self.thread) <> (nil) then begin
                stringBuffer.append(Self.thread.toString());
            end;
            stringBuffer.append(Self.NOT_EQUAL);
            if (Self.currentThread) <> (nil) then begin
                stringBuffer.append(TStringUtil.getInstance().toString(Self.currentThread));
            end;
            Self.logUtil.putF(stringBuffer.toString(), Self, Self.IS_RUNNING);
            Exit(False);
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TRunnableCanvas.getLoopTimeHelperP: TTimeDelayHelper;
begin
        Exit(Self.loopTimeHelper);
end;
    

procedure TRunnableCanvas.setWait(wait: Integer);
begin
        Self.loopTimeHelper.delay := wait;
        Self.pauseWait := (Int64(wait)) * (3);
        Self.logUtil.putF(TStringMaker.Create().append('setWait - delay: ').appendint(Integer(Trunc(Self.loopTimeHelper.delay))).toString(), Self, Self.commonStrings.CONSTRUCTOR_);
end;
    

function TRunnableCanvas.getWait: Integer;
begin
        Exit(Self.loopTimeHelper.delay);
end;
    

procedure TRunnableCanvas.setCurrentThread;
begin
        Self.currentThread := TThread.currentThread();
end;
    

procedure TRunnableCanvas.setCurrentThreadFake;
begin
        Self.currentThread := Self.thread;
end;
    

procedure TRunnableCanvas.showNotify;
begin
        try
            Self.stopWaiting();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'showNotify', e);
            end;
        end;
end;
    

// throws Exception
procedure TRunnableCanvas.stopWaiting;
begin
        Self.notified := True;
        TJava.MonitorEnter(Self);
        try
            Self.threadObjectUtil.notifyObject(Self);
        finally
            TJava.MonitorExit(Self);
        end;
        Self.repaint();
end;
    

// throws Exception
procedure TRunnableCanvas.waitOnNotify(wait: Int64);
begin
    TJava.MonitorEnter(Self);
    try
        if not (Self.notified) then begin
            if (wait) > (0) then begin
                Self.threadObjectUtil.waitObjectFor(Self, wait);
            end else begin
                Self.threadObjectUtil.waitObject(Self);
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
procedure TRunnableCanvas.processSleep;
begin
        Sleep(Self.pauseWait);
end;
    

function TRunnableCanvas.isPausable: Boolean;
begin
        Exit(False);
end;
    

// throws Exception
procedure TRunnableCanvas.processGameSleep(sleep: Int64);
begin
        Sleep(sleep);
end;
    

// throws Exception
procedure TRunnableCanvas.processLoopSleep;
var
  stringMaker: TStringMaker;
  currentTimeMillis: Int64;
  elapsedTime: Int64;
  wait: Int64;
begin
        Self.runnableCanvasRefreshHelper.process();
        if Self.isPaused() then begin
            stringMaker := TStringMaker.Create();
            if (Self.isRunning()) and (not (Self.isSingleThread())) then begin
                stringMaker.delete_(0, stringMaker.length());
                currentTimeMillis := Self.systemWrapper.currentTimeMillis();
                Self.logUtil.putF(stringMaker.append(Self.START_PAUSE).appendlong(currentTimeMillis).append(Self.PAUSE_SLEEP).appendlong(Self.pauseWait).toString(), Self, Self.PROCESS_LOOP_SLEEP);
                while ((Self.isPaused()) and (Self.isRunning())) and (not (Self.isSingleThread())) do begin
                    Self.processSleep();
                    if not (Self.isPausable()) then begin
                        stringMaker.delete_(0, stringMaker.length());
                        Self.logUtil.putF(stringMaker.append(Self.END_PAUSE).appendlong(currentTimeMillis).toString(), Self, Self.PROCESS_LOOP_SLEEP);
                        Exit;
                    end;
                end;
            end;
        end;
        elapsedTime := Self.loopTimeHelper.getElapsedTNT();
        wait := Int64(Trunc(Self.loopTimeHelper.delay));
        if (elapsedTime) > (wait) then begin
            elapsedTime := wait;
        end else begin
            Self.processGameSleep((wait) - (elapsedTime));
        end;
end;
    

function TRunnableCanvas.isSingleThread: Boolean;
begin
        Exit(False);
end;
    

procedure TRunnableCanvas.run;
begin
        Self.setCurrentThread();
end;
    

// throws Exception
procedure TRunnableCanvas.end2;
begin
end;
    

function TRunnableCanvas.getType: Integer;
begin
        Exit(-1);
end;

initialization

end.

