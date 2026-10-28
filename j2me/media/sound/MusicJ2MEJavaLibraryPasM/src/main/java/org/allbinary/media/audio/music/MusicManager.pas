// Generated Code Do Not Modify
// package org.allbinary.media.audio.music
unit MusicManager;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, ARunnable, AvianUtil, PreLogUtil, StringMaker, StringUtil, NoSound, PlayerStateUtil, Sound, CommonLabels, CommonSeps, CommonStrings, GameTickTimeDelayHelper, GameTickTimeDelayHelperFactory, TimeDelayHelper, BasicArrayList, BasicArrayListUtil;

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

  // Handle Media ending for Avian
  TMusicManagerPlayerListener = class(TInterfacedObject, IPlayerListener)
  public
    constructor Create;
        procedure playerUpdate(player: TPlayer; event: string; eventData: TObject); virtual;
  end;
  TMusicManager = class(TObject)
  public
    commonStrings: TCommonStrings;
    commonSeps: TCommonSeps;
    basicArrayListUtil: TBasicArrayListUtil;
    gameTickTimeDelayHelper: TGameTickTimeDelayHelper;
    playerStateUtil: TPlayerStateUtil;
    timeDelayHelper: TTimeDelayHelper;
    playerListener: TPlayerListener;
    PLAY: string;
    SONG: string;
    NEXT_SONG: string;
    STOPPING: string;
    ENDING: string;
    WAITING_FOR_MEDIA_TO_END: string;
    ALREADY_PLAYING: string;
    ALREADY_ENDED: string;
    songList: TBasicArrayList;
    currentSongSound: TSound;
    nextSongSound: TSound;
    reset_: Boolean;
    noDuration: Boolean;
    stopped: Boolean;
    procedure InitFields;
        constructor Create(musicServiceClass: TClass; songList: TBasicArrayList);
        procedure startNewSong; virtual;
        procedure nextSong(nextSongSound: TSound; leftVolume: Integer; rightVolume: Integer); virtual;
        procedure reset; virtual;
        procedure process; virtual;
        procedure waitForStateChange(endingCurrentSongSound: TSound; startingCurrentSongSound: TSound);
        procedure stop; virtual;
  end;

implementation
uses
  MusicManagerPlayerListener;



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


constructor TMusicManagerPlayerListener.Create;
begin
  inherited Create;
end;
    

    procedure TMusicManagerPlayerListener.playerUpdate(player: TPlayer; event: string; eventData: TObject);
begin
            TPreLogUtil.put(event, Self, Self.commonStrings.PROCESS);
            if (((event) = (TPlayerListener.END_OF_MEDIA)) or ((event) = (TPlayerListener.STOPPED))) or ((event) = (TPlayerListener.CLOSED)) then begin
                Self.reset();
            end;
end;

procedure TMusicManager.InitFields;
begin
  Self.commonStrings := TCommonStrings.getInstance();
  Self.commonSeps := TCommonSeps.getInstance();
  Self.basicArrayListUtil := TBasicArrayListUtil.getInstance();
  Self.gameTickTimeDelayHelper := TGameTickTimeDelayHelperFactory.getInstance();
  Self.playerStateUtil := TPlayerStateUtil.getInstance();
  Self.timeDelayHelper := TTimeDelayHelper.Create(0);
  Self.playerListener := TMusicManagerPlayerListener.Create();
  Self.PLAY := 'Play ';
  Self.SONG := ' for: ';
  Self.NEXT_SONG := TJava.ToString(TCommonLabels.getInstance().NEXT) + ' Song: ';
  Self.STOPPING := 'Stopping Current Song: ';
  Self.ENDING := 'Ending Current Song: ';
  Self.WAITING_FOR_MEDIA_TO_END := 'Waiting for media to end';
  Self.ALREADY_PLAYING := 'Already Playing: ';
  Self.ALREADY_ENDED := 'Last Song already ended: ';
  
  Self.currentSongSound := TNoSound.getInstance();
  Self.nextSongSound := TNoSound.getInstance();
  
  
  Self.stopped := True;
end;
    

constructor TMusicManager.Create(musicServiceClass: TClass; songList: TBasicArrayList);
begin
    inherited Create;
    InitFields;
        Self.songList := songList;
end;
    

procedure TMusicManager.startNewSong;
var
  randomSongSound: TSound;
begin
        if (Self.nextSongSound) = (TNoSound.getInstance()) then begin
            randomSongSound := TSound(Self.basicArrayListUtil.getRandom(Self.songList));
            Self.nextSong(randomSongSound, 0, 0);
        end;
        Self.process();
end;
    

procedure TMusicManager.nextSong(nextSongSound: TSound; leftVolume: Integer; rightVolume: Integer);
begin
        TPreLogUtil.put(TStringMaker.Create().append(Self.NEXT_SONG).append(nextSongSound.getResource()).toString(), Self, Self.commonStrings.PROCESS);
        Self.nextSongSound := nextSongSound;
        Self.reset();
        Self.stopped := False;
end;
    

procedure TMusicManager.reset;
begin
        Self.reset_ := True;
end;
    

procedure TMusicManager.process;
var
  endingCurrentSongSound: TSound;
  nextSongSound: TSound;
  startingCurrentSongSound: TSound;
  duration: Int64;
  NO_DURATION_FOR: string;
  resource: string;
begin
        try
            if Self.stopped then begin
                Exit;
            end;
            if (Self.songList.size()) = (0) then begin
                Exit;
            end;
            if (((Self.timeDelayHelper.isTime(Self.gameTickTimeDelayHelper.startTime)) and (not (Self.noDuration)))) or (Self.reset_) then begin
                Self.reset_ := False;
                Self.noDuration := False;
                endingCurrentSongSound := Self.currentSongSound;
                nextSongSound := Self.nextSongSound;
                Self.nextSongSound := TNoSound.getInstance();
                if (nextSongSound) = (TNoSound.getInstance()) then begin
                    Self.currentSongSound := TSound(TBasicArrayListUtil.getInstance().getRandom(Self.songList));
                end else begin
                    Self.currentSongSound := nextSongSound;
                end;
                startingCurrentSongSound := Self.currentSongSound;
                duration := Int64(Trunc(Self.currentSongSound.getDuration()));
                Self.timeDelayHelper.delay := Integer(duration);
                if (duration) <= (0) then begin
                    NO_DURATION_FOR := 'No Duration for: ';
                    TPreLogUtil.put(TStringMaker.Create().append(NO_DURATION_FOR).append(Self.currentSongSound.getResource()).toString(), Self, Self.commonStrings.PROCESS);
                    Self.currentSongSound.getPlayerP().addPlayerListener(Self.playerListener);
                    Self.noDuration := True;
                end;
                if (endingCurrentSongSound) <> (TNoSound.getInstance()) then begin
                    if ((endingCurrentSongSound) = (startingCurrentSongSound)) and ((endingCurrentSongSound.getPlayerP().getState()) = (TPlayer.STARTED)) then begin
                        TPreLogUtil.put(TStringMaker.Create().append(Self.ALREADY_PLAYING).append(endingCurrentSongSound.getResource()).toString(), Self, Self.commonStrings.PROCESS);
                        TPreLogUtil.put(TStringMaker.Create().append(Self.STOPPING).append(endingCurrentSongSound.getResource()).append(Self.SONG).appendlong(duration).toString(), Self, Self.commonStrings.PROCESS);
                        endingCurrentSongSound.getPlayerP().stop();
                        Self.waitForStateChange(endingCurrentSongSound, startingCurrentSongSound);
                    end else begin
                        if (endingCurrentSongSound.getPlayerP().getState()) = (TPlayer.STARTED) then begin
                            TPreLogUtil.put(TStringMaker.Create().append(Self.STOPPING).append(endingCurrentSongSound.getResource()).append(Self.SONG).appendlong(duration).toString(), Self, Self.commonStrings.PROCESS);
                            endingCurrentSongSound.getPlayerP().stop();
                            Self.waitForStateChange(endingCurrentSongSound, startingCurrentSongSound);
                        end else begin
                            TPreLogUtil.put(TStringMaker.Create().append(Self.ALREADY_ENDED).append(Self.PLAY).append(startingCurrentSongSound.getResource()).toString(), Self, Self.commonStrings.PROCESS);
                            if TAvianUtil.isAvian() then begin
                                endingCurrentSongSound.getPlayerP().stop();
                                startingCurrentSongSound.getPlayerP().stop();
                            end;
                            startingCurrentSongSound.getPlayerP().start();
                        end;
                    end;
                end else begin
                    TPreLogUtil.put(TStringMaker.Create().append(Self.PLAY).append(Self.currentSongSound.getResource()).append(Self.SONG).appendlong(duration).toString(), Self, Self.commonStrings.PROCESS);
                    Self.currentSongSound.getPlayerP().start();
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            resource := TStringUtil.getInstance().EMPTY_STRING;
            if (Self.currentSongSound) <> (TNoSound.getInstance()) then begin
                resource := Self.currentSongSound.getResource();
            end;
            TPreLogUtil.putOE(TJava.ToString(Self.commonStrings.EXCEPTION_LABEL) + resource, Self, Self.commonStrings.PROCESS, e);
            end;
        end;
end;
    

// throws Exception
procedure TMusicManager.waitForStateChange(endingCurrentSongSound: TSound; startingCurrentSongSound: TSound);
begin
        while (endingCurrentSongSound.getPlayerP().getState()) = (TPlayer.STARTED) do begin
            TPreLogUtil.put(Self.WAITING_FOR_MEDIA_TO_END, Self, Self.commonStrings.PROCESS);
            Sleep(100);
        end;
        TPreLogUtil.put(TStringMaker.Create().append(Self.playerStateUtil.convert(endingCurrentSongSound.getPlayerP().getState())).append(Self.commonSeps.SPACE).append(Self.PLAY).append(startingCurrentSongSound.getResource()).toString(), Self, Self.commonStrings.PROCESS);
        startingCurrentSongSound.getPlayerP().start();
end;
    

// throws Exception
procedure TMusicManager.stop;
var
  currentSongSound: TSound;
  resource: string;
begin
        try
            currentSongSound := Self.currentSongSound;
            if (currentSongSound) <> (TNoSound.getInstance()) then begin
                Self.stopped := True;
                TPreLogUtil.put(TStringMaker.Create().append(Self.ENDING).append(currentSongSound.getResource()).toString(), Self, Self.commonStrings.PROCESS);
                currentSongSound.getPlayerP().stop();
            end;
            Self.timeDelayHelper.setStartTime(0);
            TPreLogUtil.put(TStringMaker.Create().append(Self.commonStrings.END_).append(TStringUtil.getInstance().toString(currentSongSound)).toString(), Self, Self.commonStrings.END_);
        except
            on e: SysUtils.Exception do begin
            resource := TStringUtil.getInstance().EMPTY_STRING;
            if (currentSongSound) <> (TNoSound.getInstance()) then begin
                resource := currentSongSound.getResource();
            end;
            TPreLogUtil.putOE(TJava.ToString(Self.commonStrings.EXCEPTION_LABEL) + resource, Self, Self.commonStrings.END_, e);
            end;
        end;
end;

initialization

end.

