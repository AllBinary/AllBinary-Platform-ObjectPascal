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
// package org.allbinary.game.midlet
unit GameMidlet;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, J2MEUtil, TsUtil, GameAdStateFactory, FullScreenUtil, GameStatisticsFactory, DebugFactory, DebugInterface, GameAdState, GameInfo, GameMode, GameStrings, GameTypeFactory, PlayerTypesFactory, GameCommandsFactory, GameOptionsForm, GameOptionsFormFactory, InGameFeatures, InGameOptionsForm, InGameOptionsFormFactory, LoadGameForm, ChangedGameFeatureListener, GameFeatureEventHandler, Features, GameFeatureFormUtil, MainFeatureFactory, GamePersistanceSingleton, KeyValuePersistance, AllBinaryGameCanvas, BasicPaintablesCanvas, DemoCanvas, GameCanvasRunnableInterface, GameEventHandlerUtil, GameInputMappingCanvas, GameInputMappingInstructionsCanvas, MenuListener, NullGameCanvasRunnable, TextNotificationUtil, AllBinaryGameLayerManager, GameNotificationEventHandler, HelpPaintable, HighScoreCommands, HighScoreCommandsFactory, HighScoreTextBox, HighScoreUtil, HighScoresCanvas, GameStateFactory, ResizableListenerHandler, ProgressCanvas, ProgressCanvasFactory, BasicColorFactory, ColorChangeEventHandler, CanvasStrings, MyCanvas, MyCommandsFactory, AboutCommandProcessor, AboutPaintableFactory, CommandForm, WebCommandProcessor, AllBinarySensorManager, VirtualKeyboardEventHandler, BasicMotionGesturesHandler, ForcedLogUtil, PreLogUtil, SmallIntegerSingletonFactory, StringMaker, ClientInformationFactory, InApplicationPurchaseFactory, LockableFeature, LockableFeatureFactory, AllBinaryEventObject, EventStrings, AllBinaryMediaManager, MidletStrings, ProgressMidlet, NullThread, ThreadFactoryUtil, ThreadUtil, TimeDelayHelper, BasicArrayList, EnumerationUtil, StdUtil, ABHashtable, GameMidletStateFactory;

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

  TGameMidlet = class(TProgressMidlet, ICommandListener)
  public
    enumerationUtil: TEnumerationUtil;
    basicColorFactory: TBasicColorFactory;
    features: TFeatures;
    midletStrings: TMidletStrings;
    myCommandsFactory: TMyCommandsFactory;
    gameStrings: TGameStrings;
    gameAdStateFactory: TGameAdStateFactory;
    gameStateFactory: TGameStateFactory;
    tsUtil: TTsUtil;
    DISPLAYABLE: string;
    COMMAND_NAME: string;
    NO_COMMAND: string;
    NO_DISPLAYABLE: string;
    COMMAND_ACTION: string;
    PAUSE_APP_BACKGROUND: string;
    UN_PAUSE_APP_BACKGROUND: string;
    aboutCommandProcessor: TAboutCommandProcessor;
    webCommandProcessor: TWebCommandProcessor;
    gameMidletStateFactory: TGameMidletStateFactory;
    gameStartTimeHelper: TTimeDelayHelper;
    fullScreenUtil: TFullScreenUtil;
    debugInterface: IDebugInterface;
    allbinaryGameCanvasRunnableInterface: IGameCanvasRunnableInterface;
    thread: TThread;
    loadGameForm: TCommandForm;
    isFullScreen: Boolean;
    resized: Boolean;
    startedBefore: Boolean;
    procedure InitFields;
        constructor Create(clientInformationFactory: TClientInformationFactory);
        procedure init; virtual;
        procedure setDemo; virtual;
        procedure createGame; virtual;
        procedure mediaShutdown; virtual;
        procedure stopAll; virtual;
        procedure pauseApp; virtual;
        procedure pauseAppBackground(background: Boolean); virtual;
        procedure unPauseApp; virtual;
        procedure unPauseAppBackground(background: Boolean); virtual;
        procedure destroyAppInRunnable(unconditional: Boolean; isProgress: Boolean); virtual;
        procedure destroyApp(unconditional: Boolean); virtual;
        procedure startApp; virtual;
        procedure commandAction(command: TCommand; displayable: TDisplayable); virtual;
        procedure updateFullScreen;
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        function getInputMappingInstructionsCanvas: TMyCanvas; virtual;
        function getInputMappingCanvas: TMyCanvas; virtual;
        function getAboutCanvas: TMyCanvas; virtual;
        function getHelpPaintable: THelpPaintable; virtual;
        function createHighScoresCanvas: THighScoresCanvas; virtual;
        procedure startGameCanvasRunnableInterface; virtual;
        procedure stopGameCanvasRunnableInterface; virtual;
        function getGameCanvasRunnableInterface: IGameCanvasRunnableInterface; virtual;
        procedure setGameCanvasRunnableInterface(gameCanvasRunnableInterface: IGameCanvasRunnableInterface); virtual;
        function createGameLayerManager: TAllBinaryGameLayerManager; virtual;
        function getGameOptionsForm: TCommandForm; virtual;
        procedure save; virtual;
        function getCurrentStateHashtable: TABHashtable<TObject, TObject>; virtual;
        procedure setLoadGameForm(loadGameForm: TLoadGameForm); virtual;
        function getLoadGameForm: TCommandForm; virtual;
        procedure setResized(resized: Boolean); virtual;
        function isResized: Boolean; virtual;
        function isDemoLoading: Boolean; virtual;
  end;

implementation
uses
  GameMidletEventHandler, DemoGameMidletEvent, DemoGameMidletStateFactory;



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


procedure TGameMidlet.InitFields;
begin
  Self.enumerationUtil := TEnumerationUtil.getInstance();
  Self.basicColorFactory := TBasicColorFactory.getInstance();
  Self.features := TFeatures.getInstance();
  Self.midletStrings := TMidletStrings.getInstance();
  Self.myCommandsFactory := TMyCommandsFactory.getInstance();
  Self.gameStrings := TGameStrings.getInstance();
  Self.gameAdStateFactory := TGameAdStateFactory.getInstance();
  Self.gameStateFactory := TGameStateFactory.getInstance();
  Self.tsUtil := TTsUtil.getInstance();
  Self.DISPLAYABLE := ' Displayable: ';
  Self.COMMAND_NAME := 'command Name/Label: ';
  Self.NO_COMMAND := 'No Command';
  Self.NO_DISPLAYABLE := 'No Displayable';
  Self.COMMAND_ACTION := TStringMaker.Create().append('GameMidlet::').append(Self.midletStrings.COMMAND_ACTION).toString();
  Self.PAUSE_APP_BACKGROUND := 'pauseAppBackground';
  Self.UN_PAUSE_APP_BACKGROUND := 'unPauseAppBackground';
  Self.aboutCommandProcessor := TAboutCommandProcessor.getInstance();
  Self.webCommandProcessor := TWebCommandProcessor.getInstance();
  Self.gameMidletStateFactory := TGameMidletStateFactory.getInstance();
  Self.gameStartTimeHelper := TTimeDelayHelper.Create(240);
  Self.fullScreenUtil := TFullScreenUtil.getInstance();
  
  Self.allbinaryGameCanvasRunnableInterface := TNullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE;
  Self.thread := TNullThread.NULL_THREAD;
  
  
  
  Self.startedBefore := False;
end;
    

constructor TGameMidlet.Create(clientInformationFactory: TClientInformationFactory);
var
  progressCanvas: TProgressCanvas;
begin
        inherited Create(clientInformationFactory);
        InitFields;
        TSmallIntegerSingletonFactory.getInstance().initWithRange($291, 6);
        Self.loadGameForm := TCommandForm.getNullCommandForm();
        progressCanvas := TProgressCanvasFactory.getInstance();
        progressCanvas.init(Self);
        TGameFeatureEventHandler.getInstance().addListenerInterface(TChangedGameFeatureListener.getInstance());
        TGamePersistanceSingleton.getInstance().clear();
        Self.debugInterface := TDebugFactory.getInstance();
        Self.init();
end;
    

procedure TGameMidlet.init;
begin
end;
    

// throws Exception
procedure TGameMidlet.setDemo;
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

// throws Exception
procedure TGameMidlet.createGame;
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

// throws Exception
procedure TGameMidlet.mediaShutdown;
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

procedure TGameMidlet.stopAll;
begin
end;
    

procedure TGameMidlet.pauseApp;
var
  gameAdState: TGameAdState;
begin
        Self.pauseAppBackground(True);
        gameAdState := Self.gameAdStateFactory.getCurrentInstance();
        gameAdState.getAdvertisements().stopAll();
end;
    

procedure TGameMidlet.pauseAppBackground(background: Boolean);
begin
        Self.logUtil.putF(Self.commonStrings.START, Self, Self.PAUSE_APP_BACKGROUND);
        if (Self.allbinaryGameCanvasRunnableInterface) <> (TNullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE) then begin
            Self.allbinaryGameCanvasRunnableInterface.pause();
        end else begin
            Self.logUtil.putF('<<<<<< Null', Self, Self.PAUSE_APP_BACKGROUND);
        end;
        TAllBinarySensorManager.getInstance().shutdown();
end;
    

procedure TGameMidlet.unPauseApp;
var
  gameAdState: TGameAdState;
begin
        Self.unPauseAppBackground(True);
        gameAdState := Self.gameAdStateFactory.getCurrentInstance();
        gameAdState.getAdvertisements().startAll();
end;
    

procedure TGameMidlet.unPauseAppBackground(background: Boolean);
var
  gameCanvasRunnableInterface: IGameCanvasRunnableInterface;
begin
        Self.logUtil.putF(Self.commonStrings.START, Self, Self.UN_PAUSE_APP_BACKGROUND);
        TAllBinarySensorManager.getInstance().init();
        gameCanvasRunnableInterface := Self.allbinaryGameCanvasRunnableInterface;
        if (gameCanvasRunnableInterface) <> (TNullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE) then begin
            gameCanvasRunnableInterface.unPause();
        end else begin
            Self.logUtil.putF('<<<<<< Null', Self, Self.UN_PAUSE_APP_BACKGROUND);
        end;
end;
    

procedure TGameMidlet.destroyAppInRunnable(unconditional: Boolean; isProgress: Boolean);
var
  progressCanvas: TProgressCanvas;
begin
        progressCanvas := TProgressCanvasFactory.getInstance();
        if isProgress then begin
            progressCanvas.start();
            Self.commandAction(Self.myCommandsFactory.SET_DISPLAYABLE, progressCanvas);
        end;
        Self.destroyApp(unconditional);
        if isProgress then begin
            progressCanvas.end_();
        end;
end;
    

procedure TGameMidlet.destroyApp(unconditional: Boolean);
var
  METHOD_NAME: string;
  gameAdState: TGameAdState;
begin
        METHOD_NAME := 'GameMidlet::destroyApp';
        try
            TPreLogUtil.put(TGameStatisticsFactory.getInstance().toString(), Self, METHOD_NAME);
            gameAdState := Self.gameAdStateFactory.getCurrentInstance();
            gameAdState.getAdvertisements().stopAll();
            if not (Self.isDestroyed()) then begin
                Self.stopGameCanvasRunnableInterface();
                Self.setGameCanvasRunnableInterface(TNullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE);
                Self.mediaShutdown();
            end else begin
                Self.logUtil.putF('Midlet Managment Error: Midlet Should Only Be Destroyed Once', Self, METHOD_NAME);
            end;
            inherited destroyApp(True);
            TPreLogUtil.put(Self.commonStrings.END_, Self, METHOD_NAME);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, METHOD_NAME, e);
            end;
        end;
        Self.logUtil.putF(Self.commonStrings.END_, Self, METHOD_NAME);
end;
    

// throws MIDletStateChangeException
procedure TGameMidlet.startApp;
var
  gameAdState: TGameAdState;
  START_APP: string;
  gameCanvasRunnableInterface: TObject;
begin
        try
            gameAdState := Self.gameAdStateFactory.getCurrentInstance();
            gameAdState.getAdvertisements().startAll();
            START_APP := 'startApp';
            Self.logUtil.putF(Self.commonStrings.START, Self, START_APP);
            gameCanvasRunnableInterface := Self.allbinaryGameCanvasRunnableInterface;
            if (gameCanvasRunnableInterface) = (TNullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE) then begin
                Self.gameMidletStateFactory.setCurrentGameState(Self.gameStateFactory.NO_GAME_STATE);
                Self.setDemo();
            end else begin
                Self.logUtil.putF('GameCanvasRunnableInterface is available', Self, START_APP);
                if (gameCanvasRunnableInterface) = (Self.getCurrentDisplayable()) then begin
                    Self.unPauseAppBackground(False);
                end else begin
                    Self.logUtil.putF('GameCanvasRunnableInterface is not current displayable', Self, START_APP);
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'startApp', e);
            Self.destroyApp(False);
            Self.notifyDestroyed();
            end;
        end;
end;
    

procedure TGameMidlet.commandAction(command: TCommand; displayable: TDisplayable);
var
  displayableAsString: string;
  label_: string;
  gameCommandsFactory: TGameCommandsFactory;
  allbinaryGameCanvasRunnableInterface: IGameCanvasRunnableInterface;
  gameCanvasRunnableInterface: TObject;
  mainFeatureFactory: TMainFeatureFactory;
  isFullScreen: Boolean;
  virtualKeyboardEventHandler: TVirtualKeyboardEventHandler;
  highScoreTextBox: THighScoreTextBox;
  keyValuePersistance: TKeyValuePersistance;
  loadGameForm: TLoadGameForm;
  index: Integer;
  menuListener: TMenuListener;
  layerManager: TAllBinaryGameLayerManager;
  stringBuffer: TStringMaker;
  inGameOptionsForm: TInGameOptionsForm;
  progressCanvas: TProgressCanvas;
  inGameOptionsFormFactory: TInGameOptionsFormFactory;
  tempDisplayable: TDisplayable;
  gameInputMappingCanvas: TGameInputMappingCanvas;
  highScoresCanvas: THighScoresCanvas;
  gameCanvas: TAllBinaryGameCanvas;
  inApplicationPurchaseFactory: TInApplicationPurchaseFactory;
  list: TBasicArrayList;
  lockableFeature: TLockableFeature;
begin
    TJava.MonitorEnter(Self);
    try
        try
            displayableAsString := Self.NO_DISPLAYABLE;
            if (displayable) <> (nil) then begin
                displayableAsString := displayable.toString();
            end;
            label_ := Self.NO_COMMAND;
            if (command) <> (nil) then begin
                label_ := command.getLabel();
            end;
            TPreLogUtil.put(TStringMaker.Create().append(Self.COMMAND_NAME).append(label_).append(Self.DISPLAYABLE).append(displayableAsString).toString(), Self, Self.COMMAND_ACTION);
            gameCommandsFactory := TGameCommandsFactory.getInstance();
            allbinaryGameCanvasRunnableInterface := Self.allbinaryGameCanvasRunnableInterface;
            gameCanvasRunnableInterface := allbinaryGameCanvasRunnableInterface;
            if (command) = (gameCommandsFactory.SHOW_GAME_CANVAS) then begin
                if ((Self.getDisplay().getCurrent()) <> (gameCanvasRunnableInterface)) and ((allbinaryGameCanvasRunnableInterface.getType()) <> (TNullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE.getType())) then begin
                    Self.setDisplay(TDisplayable(gameCanvasRunnableInterface));
                end;
                Self.unPauseAppBackground(False);
            end else if (command) = (gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS) then begin
                menuListener := TMenuListener(displayable);
                menuListener.close();
                Self.setDisplay(TDisplayable(gameCanvasRunnableInterface));
                Self.unPauseAppBackground(False);
            end else if (command) = (gameCommandsFactory.EXIT_COMMAND) then begin
                if (TGameMidletEventHandler.getInstance().getEventListenerInterfaceListP().size()) = (0) then begin
                    Self.exitProgress(True);
                end;
                TGameMidletEventHandler.getInstance().fireEvent(TDemoGameMidletEvent.Create(Self, TDemoGameMidletStateFactory.getInstance().NONE));
            end else if (command) = (gameCommandsFactory.EXIT_WITHOUT_PROGRESS_COMMAND) then begin
                Self.exitProgress(False);
            end else if (((command) = (gameCommandsFactory.START_COMMAND)) or ((command) = (gameCommandsFactory.RESTART_COMMAND))) or ((command) = (gameCommandsFactory.CONTINUE_COMMAND)) then begin
                if ((Self.gameMidletStateFactory.getCurrentGameState()) <> (Self.gameStateFactory.PLAYING_GAME_STATE)) or ((command) = (gameCommandsFactory.RESTART_COMMAND)) then begin
                    if Self.gameStartTimeHelper.isTimeTNT() then begin
                        if ((command) = (gameCommandsFactory.START_COMMAND)) and (Self.isDemoLoading()) then begin
                            Self.logUtil.putF('Trying to Start Game Before Loading Complete', Self, Self.midletStrings.COMMAND_ACTION);
                        end else begin
                            Self.startedBefore := True;
                            Self.createGame();
                            Self.gameMidletStateFactory.setCurrentGameState(Self.gameStateFactory.PLAYING_GAME_STATE);
                        end;
                    end else begin
                        Self.logUtil.putF('Starting Game Too Often', Self, Self.midletStrings.COMMAND_ACTION);
                    end;
                end else begin
                    Self.logUtil.putF('Already in playing state', Self, Self.COMMAND_ACTION);
                end;
            end else if (command) = (gameCommandsFactory.BUY_COMMAND) then begin
                inApplicationPurchaseFactory := TInApplicationPurchaseFactory.getInstance();
                list := TLockableFeatureFactory.getInstance().getList();
                lockableFeature := TLockableFeature(list.get(0));
                if ((list.size()) > (0)) and (not (inApplicationPurchaseFactory.isPurchased(lockableFeature))) then begin
                    inApplicationPurchaseFactory.purchase(lockableFeature);
                end else begin
                    TTextNotificationUtil.getInstance().fireSuccess('Already Purchased');
                end;
            end else if (command) = (gameCommandsFactory.QUIT_COMMAND) then begin
                if Self.gameStartTimeHelper.isTimeTNT() then begin
                    if (displayable is THighScoreTextBox) then begin
                        menuListener := TMenuListener(displayable);
                        menuListener.close();
                    end;
                    Self.stopGameCanvasRunnableInterface();
                    Self.gameMidletStateFactory.setCurrentGameState(Self.gameStateFactory.NO_GAME_STATE);
                    Self.setDemo();
                end;
            end else if (command) = (Self.myCommandsFactory.RESUME_COMMAND) then begin
                Self.unPauseAppBackground(False);
            end else if (command) = (Self.myCommandsFactory.PAUSE_COMMAND) then begin
                Self.pauseAppBackground(False);
            end else if (command) = (Self.myCommandsFactory.SET_DISPLAYABLE) then begin
                Self.pauseAppBackground(False);
                Self.setDisplay(displayable);
            end else if (command) = (gameCommandsFactory.SET_MENU_DISPLAYABLE) then begin
                Self.pauseAppBackground(False);
                menuListener := TMenuListener(displayable);
                menuListener.open();
                Self.setDisplay(displayable);
            end else if (command) = (gameCommandsFactory.START_TRACE) then begin
                Self.debugInterface.start();
                gameCanvas := TAllBinaryGameCanvas(allbinaryGameCanvasRunnableInterface);
                gameCanvas.addCommand(gameCommandsFactory.STOP_TRACE);
                gameCanvas.removeCommand(gameCommandsFactory.START_TRACE);
            end else if (command) = (gameCommandsFactory.STOP_TRACE) then begin
                Self.pauseAppBackground(False);
                Self.debugInterface.stop();
                Self.unPauseAppBackground(False);
                gameCanvas := TAllBinaryGameCanvas(allbinaryGameCanvasRunnableInterface);
                gameCanvas.addCommand(gameCommandsFactory.START_TRACE);
                gameCanvas.removeCommand(gameCommandsFactory.STOP_TRACE);
            end else if (command) = (gameCommandsFactory.DEFAULT_OPTIONS) then begin
                tempDisplayable := displayable;
                if (tempDisplayable is TGameOptionsForm) then begin
                    TGameFeatureFormUtil.getInstance().setDefault(TCommandForm(tempDisplayable));
                end;
            end else if (command) = (TGameInputMappingInstructionsCanvas.DISPLAY) then begin
                tempDisplayable := displayable;
                if (tempDisplayable is TGameInputMappingCanvas) then begin
                    gameInputMappingCanvas := TGameInputMappingCanvas(tempDisplayable);
                    gameInputMappingCanvas.update();
                end;
                Self.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, Self.getInputMappingInstructionsCanvas());
            end else if THighScoreCommandsFactory.getInstance().isHighScoreCommand(command) then begin
                tempDisplayable := displayable;
                if (tempDisplayable is THighScoresCanvas) then begin
                    highScoresCanvas := THighScoresCanvas(tempDisplayable);
                    highScoresCanvas.updateCommand(command);
                end;
            end else if (command) = (THighScoreCommands.getInstance().DISPLAY) then begin
                Self.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, Self.createHighScoresCanvas());
            end else if (command) = (TGameInputMappingInstructionsCanvas.CLOSE) then begin
                menuListener := TMenuListener(displayable);
                menuListener.close();
                Self.commandAction(TGameInputMappingCanvas.DISPLAY, TNullCanvas.NULL_CANVAS);
            end else if (command) = (TGameInputMappingCanvas.DISPLAY) then begin
                if TJ2MEUtil.isHTML() then begin
                    Self.pauseAppBackground(False);
                end;
                Self.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, Self.getInputMappingCanvas());
            end else if (command) = (TGameInputMappingCanvas.DEFAULT) then begin
                tempDisplayable := displayable;
                if (tempDisplayable is TGameInputMappingCanvas) then begin
                    gameInputMappingCanvas := TGameInputMappingCanvas(tempDisplayable);
                    gameInputMappingCanvas.setDefault();
                end;
            end else if (command) = (TInGameOptionsForm.DISPLAY) then begin
                Self.pauseAppBackground(False);
                progressCanvas := TProgressCanvasFactory.getInstance();
                progressCanvas.addNormalPortion(50, 'In Game Options');
                layerManager := Self.createGameLayerManager();
                inGameOptionsFormFactory := TInGameOptionsFormFactory.getInstance();
                inGameOptionsFormFactory.init(Self, TInGameFeatures.Create(), 'Options In Game', layerManager.getBackgroundBasicColor(), layerManager.getForegroundBasicColor());
                inGameOptionsForm := inGameOptionsFormFactory.get();
                inGameOptionsForm.setItemStateListener(allbinaryGameCanvasRunnableInterface);
                Self.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, inGameOptionsForm);
            end else if (command) = (TInGameOptionsForm.DEFAULT) then begin
                inGameOptionsForm := TInGameOptionsForm(TInGameOptionsFormFactory.getInstance().get());
                TGameFeatureFormUtil.getInstance().setDefault(inGameOptionsForm);
            end else if (command) = (gameCommandsFactory.DISPLAY_OPTIONS) then begin
                TAllBinaryMediaManager.setMuted(True);
                Self.stopAll();
                mainFeatureFactory := TMainFeatureFactory.getInstance();
                Self.isFullScreen := Self.features.isFeature(mainFeatureFactory.FULL_SCREEN);
                TResizableListenerHandler.getInstance().fireEvent(True);
                Self.setResized(False);
                Self.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, Self.getGameOptionsForm());
            end else if (command) = (gameCommandsFactory.CLOSE_OPTIONS) then begin
                TResizableListenerHandler.getInstance().fireEvent(False);
                Self.commandAction(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS, displayable);
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Close isFullScreen/change: ');
                stringBuffer.appendboolean(Self.isFullScreen);
                stringBuffer.appendboolean(Self.fullScreenUtil.isScreenChange(Self.isFullScreen));
                stringBuffer.append(' isResized: ');
                stringBuffer.appendboolean(Self.isResized());
                TPreLogUtil.put(stringBuffer.toString(), Self, Self.COMMAND_ACTION);
                if (Self.isResized()) or (Self.fullScreenUtil.isScreenChange(Self.isFullScreen)) then begin
                    Self.updateFullScreen();
                end;
                TAllBinaryMediaManager.setMuted(False);
            end else if (command) = (gameCommandsFactory.DISPLAY_LOAD_FORM) then begin
                Self.pauseAppBackground(False);
                keyValuePersistance := TGamePersistanceSingleton.getInstance();
                keyValuePersistance.clear();
                keyValuePersistance.loadAll(Self.abeClientInformation);
                if (Self.getLoadGameForm()) = (TCommandForm.getNullCommandForm()) then begin
                    layerManager := Self.createGameLayerManager();
                    Self.setLoadGameForm(TLoadGameForm.Create(Self, 'Load Game', layerManager.getBackgroundBasicColor(), layerManager.getForegroundBasicColor()));
                end else begin
                    Self.getLoadGameForm().update();
                end;
                Self.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, Self.getLoadGameForm());
            end else if (command) = (gameCommandsFactory.LOAD_FILE) then begin
                loadGameForm := TLoadGameForm(Self.getLoadGameForm());
                index := loadGameForm.getSelectedId();
                if (index) <> (-1) then begin
                    keyValuePersistance := TGamePersistanceSingleton.getInstance();
                    Self.setStartStateHashtable(keyValuePersistance.get(index));
                    menuListener := Self.getLoadGameForm();
                    menuListener.close();
                    TPreLogUtil.put(TBasicMotionGesturesHandler.getInstance().toString(), Self, Self.COMMAND_ACTION);
                    Self.commandAction(gameCommandsFactory.START_COMMAND, TNullCanvas.NULL_CANVAS);
                    TPreLogUtil.put(TBasicMotionGesturesHandler.getInstance().toString(), Self, Self.COMMAND_ACTION);
                end;
            end else if (command) = (gameCommandsFactory.DELETE_FILE) then begin
                loadGameForm := TLoadGameForm(Self.getLoadGameForm());
                index := loadGameForm.getSelectedText();
                if (index) <> (-1) then begin
                    keyValuePersistance := TGamePersistanceSingleton.getInstance();
                    keyValuePersistance.delete_(Self.abeClientInformation, index);
                    keyValuePersistance.clear();
                    keyValuePersistance.loadAllSize(Self.abeClientInformation, 1);
                    Self.getLoadGameForm().update();
                end;
            end else if (command) = (gameCommandsFactory.SAVE) then begin
                keyValuePersistance := TGamePersistanceSingleton.getInstance();
                Self.pauseAppBackground(False);
                keyValuePersistance.save(Self.abeClientInformation, Self.getCurrentStateHashtable());
                Self.unPauseAppBackground(False);
            end else if (command) = (THighScoreUtil.SUBMIT_TEXTBOX_COMMAND) then begin
                Self.logUtil.putF('Submitted Score', Self, Self.COMMAND_ACTION);
                if (displayable is THighScoreTextBox) then begin
                    highScoreTextBox := THighScoreTextBox(displayable);
                    highScoreTextBox.submitted := True;
                end;
                allbinaryGameCanvasRunnableInterface.setHighScoreSubmitted(True);
                Self.commandAction(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS, displayable);
            end else if (command) = (gameCommandsFactory.DISPLAY_ABOUT) then begin
                Self.aboutCommandProcessor.process(Self, gameCommandsFactory.SET_MENU_DISPLAYABLE, Self.getAboutCanvas());
            end else if (command) = (gameCommandsFactory.OPEN_WEB_URL) then begin
                Self.webCommandProcessor.process(Self, gameCommandsFactory.OPEN_WEB_URL, TNullCanvas.NULL_CANVAS);
            end else if (command) = (gameCommandsFactory.TOGGLE_KEYBOARD) then begin
                virtualKeyboardEventHandler := TVirtualKeyboardEventHandler.getInstance();
                virtualKeyboardEventHandler.fireEvent(virtualKeyboardEventHandler.SHOW_EVENT);
            end else if (Self.tsUtil.compareTo(command.getLabel(), gameCommandsFactory.TOGGLE_FULLSCREEN.getLabel())) = (0) then begin
                mainFeatureFactory := TMainFeatureFactory.getInstance();
                isFullScreen := Self.features.isFeature(mainFeatureFactory.FULL_SCREEN);
                if isFullScreen then begin
                    Self.features.removeDefault(mainFeatureFactory.FULL_SCREEN);
                end else begin
                    Self.features.addDefault(mainFeatureFactory.FULL_SCREEN);
                end;
                Self.updateFullScreen();
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(TStringMaker.Create().append(Self.commonStrings.EXCEPTION_LABEL).append(command.getLabel()).toString(), Self, Self.midletStrings.COMMAND_ACTION, e);
            if (command) <> (TGameCommandsFactory.getInstance().EXIT_COMMAND) then begin
                Self.exitProgress(False);
            end;
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TGameMidlet.updateFullScreen;
var
  mainFeatureFactory: TMainFeatureFactory;
  isFullScreen: Boolean;
  displayable: TDisplayable;
  canvas: TCanvas;
begin
        mainFeatureFactory := TMainFeatureFactory.getInstance();
        isFullScreen := Self.features.isFeature(mainFeatureFactory.FULL_SCREEN);
        displayable := Self.getDisplay().getCurrent();
        if (displayable is TCanvas) then begin
            canvas := TCanvas(displayable);
            canvas.setFullScreenMode(isFullScreen);
        end;
end;
    

procedure TGameMidlet.onEvent(eventObject: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, Self);
end;
    

// throws Exception
function TGameMidlet.getInputMappingInstructionsCanvas: TMyCanvas;
begin
        Exit(TGameInputMappingInstructionsCanvas.Create(Self, Self.createGameLayerManager()));
end;
    

// throws Exception
function TGameMidlet.getInputMappingCanvas: TMyCanvas;
begin
        Exit(TGameInputMappingCanvas.Create(Self.abeClientInformation, Self, Self.createGameLayerManager(), Self.getHelpPaintable()));
end;
    

// throws Exception
function TGameMidlet.getAboutCanvas: TMyCanvas;
begin
        Exit(TBasicPaintablesCanvas.Create(Self, TCanvasStrings.getInstance().ABOUT, Self.createGameLayerManager(), TAboutPaintableFactory.getInstance().paintableArray));
end;
    

// throws Exception
function TGameMidlet.getHelpPaintable: THelpPaintable;
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

// throws Exception
function TGameMidlet.createHighScoresCanvas: THighScoresCanvas;
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

// throws Exception
procedure TGameMidlet.startGameCanvasRunnableInterface;
var
  threadFactoryUtil: TThreadFactoryUtil;
begin
        threadFactoryUtil := TThreadFactoryUtil.getInstance();
        Self.thread := threadFactoryUtil.getInstanceGameCanvasRunnable(Self.allbinaryGameCanvasRunnableInterface);
        Self.logUtil.putF(TStringMaker.Create().append('Thread Priority: ').appendint(Integer(Trunc(Self.thread.getPriority()))).toString(), Self, 'startGameCanvasRunnableInterface');
        Self.allbinaryGameCanvasRunnableInterface.setThread(Self.thread);
        threadFactoryUtil.start(Self.thread);
end;
    

// throws Exception
procedure TGameMidlet.stopGameCanvasRunnableInterface;
var
  gameCanvasRunnableInterface: IGameCanvasRunnableInterface;
  progressCanvas: TProgressCanvas;
begin
        Self.logUtil.putF(Self.commonStrings.START, Self, Self.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE);
        TGameNotificationEventHandler.getInstance().removeAllListeners();
        TColorChangeEventHandler.getInstance().removeAllListeners();
        TGameEventHandlerUtil.removeAllListeners();
        gameCanvasRunnableInterface := Self.allbinaryGameCanvasRunnableInterface;
        if (gameCanvasRunnableInterface) <> (TNullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE) then begin
            Self.logUtil.putF(TStringMaker.Create().append('Set Running False: ').append(TJava.InterfaceToString(Pointer(gameCanvasRunnableInterface))).toString(), Self, Self.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE);
            gameCanvasRunnableInterface.setRunning(False);
        end else begin
            Self.logUtil.putF('StopGame - Could Not Stop', Self, Self.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE);
        end;
        TThreadUtil.getInstance().join(Self.thread);
        progressCanvas := TProgressCanvasFactory.getInstance();
        if Self.features.isFeature(TMainFeatureFactory.getInstance().LOAD_ALL) then begin
            progressCanvas.addNormalPortion(50, 'Stopped Game Runnable');
        end else begin
            progressCanvas.addNormalPortion(50, 'Stopped Main Runnable');
        end;
        Self.logUtil.putF(Self.commonStrings.END_, Self, Self.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE);
end;
    

function TGameMidlet.getGameCanvasRunnableInterface: IGameCanvasRunnableInterface;
begin
        Exit(Self.allbinaryGameCanvasRunnableInterface);
end;
    

procedure TGameMidlet.setGameCanvasRunnableInterface(gameCanvasRunnableInterface: IGameCanvasRunnableInterface);
begin
        Self.allbinaryGameCanvasRunnableInterface := gameCanvasRunnableInterface;
end;
    

function TGameMidlet.createGameLayerManager: TAllBinaryGameLayerManager;
var
  gameInfo: TGameInfo;
begin
        gameInfo := TGameInfo.Create(TGameTypeFactory.getInstance().SINGLE_PLAYER, TGameMode.SERVER, TPlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 1, 1);
        Exit(TAllBinaryGameLayerManager.Create(Self.basicColorFactory.BLACK, Self.basicColorFactory.WHITE, gameInfo));
end;
    

function TGameMidlet.getGameOptionsForm: TCommandForm;
var
  layerManager: TAllBinaryGameLayerManager;
begin
        layerManager := Self.createGameLayerManager();
        Exit(TGameOptionsFormFactory.getInstance().init(Self, 'Game Options', layerManager.getBackgroundBasicColor(), layerManager.getForegroundBasicColor()));
end;
    

// throws Exception
procedure TGameMidlet.save;
var
  hashtable: TABHashtable<TObject, TObject>;
begin
        Self.logUtil.putF(Self.commonStrings.START, Self, Self.commonStrings.SAVE);
        hashtable := Self.getCurrentStateHashtable();
        TGamePersistanceSingleton.getInstance().save(Self.abeClientInformation, hashtable);
end;
    

// throws Exception
function TGameMidlet.getCurrentStateHashtable: TABHashtable<TObject, TObject>;
var
  hashtable: TABHashtable<TObject, TObject>;
  currentHashtable: TABHashtable<TObject, TObject>;
  enumeration: TObject;
  key: TObject;
begin
        Self.logUtil.putF(Self.commonStrings.START, Self, 'getCurrentStateHashtable');
        hashtable := TStdUtil.getInstance().createHashtable();
        if (Self.allbinaryGameCanvasRunnableInterface) <> (TNullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE) then begin
            currentHashtable := Self.allbinaryGameCanvasRunnableInterface.getCurrentStateHashtable();
            enumeration := currentHashtable.keys();
            
            while Self.enumerationUtil.hasMoreElements(enumeration) do begin
                key := Self.enumerationUtil.nextElement(enumeration);
                hashtable.put(key, currentHashtable.get(key));
            end;
        end;
        Exit(hashtable);
end;
    

procedure TGameMidlet.setLoadGameForm(loadGameForm: TLoadGameForm);
begin
        Self.loadGameForm := loadGameForm;
end;
    

function TGameMidlet.getLoadGameForm: TCommandForm;
begin
        Exit(Self.loadGameForm);
end;
    

procedure TGameMidlet.setResized(resized: Boolean);
begin
        Self.resized := resized;
end;
    

function TGameMidlet.isResized: Boolean;
begin
        Exit(Self.resized);
end;
    

function TGameMidlet.isDemoLoading: Boolean;
var
  displayable: TDisplayable;
  demoCanvas: TDemoCanvas;
begin
        if Self.startedBefore then begin
            Exit(False);
        end;
        displayable := Self.getDisplay().getCurrent();
        if (displayable is TDemoCanvas) then begin
            demoCanvas := TDemoCanvas(displayable);
            if demoCanvas.isDemoLoading() then begin
                Exit(True);
            end;
        end;
        Exit(False);
end;

initialization

end.

