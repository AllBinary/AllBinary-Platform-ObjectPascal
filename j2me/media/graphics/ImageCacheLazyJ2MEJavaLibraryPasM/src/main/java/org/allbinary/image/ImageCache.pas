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
// package org.allbinary.image
unit ImageCache;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, J2MEUtil, TsUtil, LazyImageRotationAnimation, GameGlobalsFactory, Processor, LogUtil, CommonStrings, StringMaker, ResourceUtil, ABToGBUtil, AllBinaryGameCanvas, GDLazyResources, GDResources, ProgressCanvas, ProgressCanvasFactory, CommonSeps, StringUtil, Memory, BaseImageLoadingProcessor, ConcurrentImageLoadingProcessor, SynchObject, BasicArrayList, BasicArrayListD, ABSystemWrapper, ImageCacheBase;

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

  TNotHTMLProcessor = class(TProcessor)
  public
    constructor Create;
        procedure process; override;
  end;
  TNotHTMLEndProcessor = class(TProcessor)
  public
    constructor Create;
        procedure process; override;
  end;
  THTMLEndProcessor = class(TProcessor)
  public
    constructor Create;
        procedure process; override;
  end;
  TFirstProcessor = class(TProcessor)
  public
    constructor Create;
        procedure process; override;
  end;
  TImageCache = class(TImageCacheBase)
  public
    tsUtil: TTsUtil;
    concurrentImageLoadingProcessor: TBaseImageLoadingProcessor;
    commonStrings: TCommonStrings;
    commonSeps: TCommonSeps;
    resourceUtil: TResourceUtil;
    gameGlobalsFactory: TGameGlobalsFactory;
    gdResources: TGDResources;
    loadNowList: TBasicArrayList;
    loadSoonList: TBasicArrayList;
    loadList: TBasicArrayList;
    loadAfterList: TBasicArrayList;
    lock: TSynchObject;
    firstTime: Boolean;
    totalLoaded: Integer;
    progressEnded_: Boolean;
    hasAnyLazyAnimationFactories: Boolean;
    processor: TProcessor;
    endProcessor: TProcessor;
    LOAD_IMAGE_FOR_ANIMATION: string;
    class var NULL_IMAGE_CACHE: TImageCache;
    procedure InitFields;
        constructor Create;
        procedure firstProcess; virtual;
        procedure addListener(renderer: TObject); virtual;
        procedure waitForLoadNow; virtual;
        procedure loadImageForAnimation; virtual;
        procedure loadImages; virtual;
        procedure loadImageForAnimations; virtual;
        procedure loadRemainingAnimations; virtual;
        function loadImageForLazyAnimation(lazyImageRotationAnimation: TLazyImageRotationAnimation): Boolean;
        procedure loadNextImage;
        function loadImage(image: TImage): Boolean;
        procedure init(image: TImage; image2: TImage); virtual;
        function creatImage(key: string): TImage; virtual;
        function get(caller: string; width: Integer; height: Integer): TImage; override;
        function getWithKey(key: TObject): TImage; override;
        function getIndex(key: TObject): Integer; virtual;
        function createImageFromInputStream(key: TObject; inputStream: TInputStream): TImage; override;
        function createImageLater(key: string; width: Integer; height: Integer): TImage; virtual;
        function getAssociated(lazyImageRotationAnimation: TLazyImageRotationAnimation): TBasicArrayList; virtual;
        procedure add(lazyImageRotationAnimation: TLazyImageRotationAnimation); virtual;
        procedure insertFirst(lazyImageRotationAnimation: TLazyImageRotationAnimation); virtual;
        procedure progressEnded; virtual;
        procedure runTask; virtual;
        procedure initProgress; override;
        function isLazy: Boolean; virtual;
  end;

implementation
uses
  NotHTMLEndProcessor, FirstProcessor, NotHTMLProcessor, HTMLEndProcessor, ImageFactory;



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


constructor TNotHTMLProcessor.Create;
begin
  inherited Create;
end;
    

    procedure TNotHTMLProcessor.process;
begin
            Self.concurrentImageLoadingProcessor.runTask();
end;

constructor TNotHTMLEndProcessor.Create;
begin
  inherited Create;
end;
    

    procedure TNotHTMLEndProcessor.process;
var
  progressCanvas: TProgressCanvas;
begin
            progressCanvas := TProgressCanvasFactory.getInstance();
            progressCanvas.endIfPaintedSinceStart();
end;

constructor THTMLEndProcessor.Create;
begin
  inherited Create;
end;
    

    procedure THTMLEndProcessor.process;
var
  size: Integer;
  progressCanvas: TProgressCanvas;
begin
            size := Self.gdResources.currentLayoutRequiredTotal;
            if (size) = (0) then begin
                progressCanvas := TProgressCanvasFactory.getInstance();
                progressCanvas.endIfPaintedSinceStart();
            end else if (Self.totalLoaded) > ((size) div (12)) then begin
                progressCanvas := TProgressCanvasFactory.getInstance();
                progressCanvas.endIfPaintedSinceStart();
                Self.endProcessor := TNotHTMLEndProcessor.Create();
            end;
end;

constructor TFirstProcessor.Create;
begin
  inherited Create;
end;
    

    procedure TFirstProcessor.process;
begin
            Self.firstProcess();
end;

procedure TImageCache.InitFields;
begin
  Self.tsUtil := TTsUtil.getInstance();
  Self.concurrentImageLoadingProcessor := TConcurrentImageLoadingProcessor.Create(Self);
  Self.commonStrings := TCommonStrings.getInstance();
  Self.commonSeps := TCommonSeps.getInstance();
  Self.resourceUtil := TResourceUtil.getInstance();
  Self.gameGlobalsFactory := TGameGlobalsFactory.getInstance();
  Self.gdResources := TGDResources.getInstance();
  Self.loadNowList := TBasicArrayListD.Create();
  Self.loadSoonList := TBasicArrayListD.Create();
  Self.loadList := TBasicArrayListD.Create();
  Self.loadAfterList := TBasicArrayListD.Create();
  Self.lock := TSynchObject.Create();
  Self.firstTime := True;
  Self.totalLoaded := 0;
  Self.progressEnded_ := False;
  Self.hasAnyLazyAnimationFactories := False;
  Self.processor := TFirstProcessor.Create();
  Self.endProcessor := TProcessor.getInstance();
  Self.LOAD_IMAGE_FOR_ANIMATION := 'Load Image Animation';
end;
    

constructor TImageCache.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TImageCache.firstProcess;
var
  logUtil: TLogUtil;
  isHTML: Boolean;
begin
        logUtil := TLogUtil.getInstance();
        isHTML := TJ2MEUtil.isHTML();
        if isHTML then begin
            Self.processor := TProcessor.getInstance();
            Self.endProcessor := THTMLEndProcessor.Create();
        end else begin
            Self.processor := TNotHTMLProcessor.Create();
            Self.endProcessor := TNotHTMLEndProcessor.Create();
            try
                Self.runTask();
            except
                on e: SysUtils.Exception do begin
                logUtil.putF(Self.commonStrings.EXCEPTION, Self, Self.commonStrings.END_METHOD_NAME);
                end;
            end;
        end;
end;
    

procedure TImageCache.addListener(renderer: TObject);
begin
end;
    

// throws Exception
procedure TImageCache.waitForLoadNow;
var
  abToGBUtil: TABToGBUtil;
  abCanvas: TAllBinaryGameCanvas;
begin
        if Self.firstTime then begin
            abToGBUtil := TABToGBUtil.getInstance();
            abCanvas := TAllBinaryGameCanvas(abToGBUtil.abCanvas);
            while ((Self.loadNowList.isEmpty()) and (((not (abCanvas.isInitialized())) or (((abCanvas.isInitialized()) and (Self.hasAnyLazyAnimationFactories)))))) and (not (Self.progressEnded_)) do begin
                Sleep(120);
            end;
            Self.firstTime := False;
        end;
end;
    

// throws Exception
procedure TImageCache.loadImageForAnimation;
var
  lazyImageRotationAnimation: TLazyImageRotationAnimation;
  list: TBasicArrayList;
  size: Integer;
  progressCanvas: TProgressCanvas;
  isHTML: Boolean;
begin
        lazyImageRotationAnimation := nil;
        TJava.MonitorEnter(Self.lock);
        try
            if Self.loadNowList.isEmpty() then begin
                Self.endProcessor.process();
                if Self.loadSoonList.isEmpty() then begin
                    if Self.loadAfterList.isEmpty() then begin
                        if Self.firstTime then begin
                        end else if Self.gameGlobalsFactory.newCanvas then begin
                        end else begin
                            Self.loadNextImage();
                        end;
                        Exit;
                    end else begin
                        lazyImageRotationAnimation := TLazyImageRotationAnimation(Self.loadAfterList.get(0));
                        if Self.loadImageForLazyAnimation(lazyImageRotationAnimation) then begin
                            Self.loadAfterList.remove(lazyImageRotationAnimation);
                        end;
                    end;
                end else begin
                    lazyImageRotationAnimation := TLazyImageRotationAnimation(Self.loadSoonList.get(0));
                    if Self.loadImageForLazyAnimation(lazyImageRotationAnimation) then begin
                        Self.loadSoonList.remove(lazyImageRotationAnimation);
                    end;
                end;
                Exit;
            end;
            lazyImageRotationAnimation := TLazyImageRotationAnimation(Self.loadNowList.get(0));
        finally
            TJava.MonitorExit(Self.lock);
        end;
        if Self.loadImageForLazyAnimation(lazyImageRotationAnimation) then begin
            TJava.MonitorEnter(Self.lock);
            try
                Self.loadNowList.remove(lazyImageRotationAnimation);
            finally
                TJava.MonitorExit(Self.lock);
            end;
            if (lazyImageRotationAnimation.layoutIndex) <> (0) then begin
                list := Self.getAssociated(lazyImageRotationAnimation);
                TJava.MonitorEnter(Self.lock);
                try
                    size := list.size();
                    if (size) > (0) then begin
                        Self.loadSoonList.addAllList(list);
                    end;
                finally
                    TJava.MonitorExit(Self.lock);
                end;
            end;
            progressCanvas := TProgressCanvasFactory.getInstance();
            isHTML := TJ2MEUtil.isHTML();
            if (Self.loadNowList.isEmpty()) and (((not (isHTML)) or (Self.firstTime))) then begin
                progressCanvas.endFromInitialLazyLoadingComplete();
            end else begin
                if ((Self.totalLoaded) mod (10)) = (0) then begin
                    progressCanvas.addNormalPortion(1, Self.LOAD_IMAGE_FOR_ANIMATION);
                end;
            end;
        end;
end;
    

// throws Exception
procedure TImageCache.loadImages;
begin
        while (not (Self.loadList.isEmpty())) or (not (Self.loadNowList.isEmpty())) do begin
            Self.loadImageForAnimations();
            Self.loadNextImage();
        end;
end;
    

// throws Exception
procedure TImageCache.loadImageForAnimations;
begin
        while not (Self.loadNowList.isEmpty()) do begin
            Self.loadImageForAnimation();
        end;
end;
    

// throws Exception
procedure TImageCache.loadRemainingAnimations;
var
  lazyImageRotationAnimation: TLazyImageRotationAnimation;
begin
        while (not (Self.loadAfterList.isEmpty())) or (not (Self.loadNowList.isEmpty())) do begin
            while not (Self.loadNowList.isEmpty()) do begin
                Self.loadImageForAnimation();
            end;
            lazyImageRotationAnimation := nil;
            TJava.MonitorEnter(Self.lock);
            try
                if not (Self.loadAfterList.isEmpty()) then begin
                    lazyImageRotationAnimation := TLazyImageRotationAnimation(Self.loadAfterList.removeAt(0));
                end;
            finally
                TJava.MonitorExit(Self.lock);
            end;
            if (lazyImageRotationAnimation) <> (nil) then begin
                Self.loadImageForLazyAnimation(lazyImageRotationAnimation);
            end;
        end;
end;
    

// throws Exception
function TImageCache.loadImageForLazyAnimation(lazyImageRotationAnimation: TLazyImageRotationAnimation): Boolean;
var
  image: TImage;
begin
        image := lazyImageRotationAnimation.animationInterfaceFactoryInterface.getImage();
        if Self.loadImage(image) then begin
            lazyImageRotationAnimation.setRealAnimation();
            Exit(True);
        end;
        Exit(False);
end;
    

// throws Exception
procedure TImageCache.loadNextImage;
var
  image: TImage;
begin
        image := nil;
        TJava.MonitorEnter(Self.lock);
        try
            if (Self.loadList.size()) = (0) then begin
                Exit;
            end;
            image := TImage(Self.loadList.removeAt(0));
        finally
            TJava.MonitorExit(Self.lock);
        end;
        Self.loadImage(image);
end;
    

// throws Exception
function TImageCache.loadImage(image: TImage): Boolean;
var
  key: string;
  image2: TImage;
begin
        if image.isReady() then begin
            Exit(True);
        end else begin
            if (image.getImage()) <> (nil) then begin
                if image.setReady() then begin
                    if image.isReady() then begin
                        Inc(Self.totalLoaded);
                        Exit(True);
                    end;
                end;
            end else begin
                key := image.getName();
                image2 := Self.creatImage(key);
                if image2.isReady() then begin
                    Self.init(image, image2);
                    Exit(True);
                end else begin
                    image.setImage(image2.getImage());
                end;
            end;
        end;
        Exit(False);
end;
    

// throws Exception
procedure TImageCache.init(image: TImage; image2: TImage);
begin
        image.init(image2.getImage());
end;
    

// throws Exception
function TImageCache.creatImage(key: string): TImage;
var
  inputStream: TInputStream;
  image: TImage;
begin
        inputStream := Self.resourceUtil.getResourceAsStream(key);
        image := TImageFactory.getInstance().createImageFromInputStream(inputStream);
        image.setName(key);
        Exit(image);
end;
    

// throws Exception
function TImageCache.get(caller: string; width: Integer; height: Integer): TImage;
var
  foundIndex: Integer;
  image: TImage;
begin
        foundIndex := Self.getIndexWH(width, height);
        image := Self.getFromAvailable(foundIndex, width, height);
        if (image) = (TNullImage.NULL_IMAGE) then begin
            Self.volume := (Self.volume) + ((width) * (height));
            if (Self.volume) > (32000) then begin
                Self.tsUtil.gc();
                Self.volume := 0;
            end;
            image := Self.createImage(caller, width, height);
            if (Self.nextIndex) > ((System.Length(Self.widths)) - (1)) then begin
                if (foundIndex) = (-1) then begin
                    foundIndex := Self.nextIndex;
                    Self.widths[Self.nextIndex] := width;
                    Self.heights[Self.nextIndex] := height;
                    Inc(Self.nextIndex);
                end;
                Self.listOfList[foundIndex].add(image);
            end;
        end;
        Exit(image);
end;
    

// throws Exception
function TImageCache.getWithKey(key: TObject): TImage;
var
  image: TImage;
  inputStream: TInputStream;
begin
        image := Self.getImage(key);
        if (image) = (TNullImage.NULL_IMAGE) then begin
            inputStream := nil;
            try
                image := Self.createImageFromInputStream(key, inputStream);
            except
                on e: SysUtils.Exception do begin
                Self.logUtil.put('Exception: Trying Again After GC', Self, Self.commonStrings.GET, e);
                Self.logUtil.putF(TStringMaker.Create().append('InputStream: ').append(TStringUtil.getInstance().toString(inputStream)).toString(), Self, Self.commonStrings.GET);
                Self.tsUtil.gc();
                Self.tsUtil.gc();
                Self.logUtil.putF(TMemory.getInfo(), Self, Self.commonStrings.GET);
                Sleep(100);
                image := Self.createImageFromInputStream(key, inputStream);
                end;
            end;
            Self.hashtable.put(key, image);
        end;
        Exit(image);
end;
    

function TImageCache.getIndex(key: TObject): Integer;
var
  gdResources: TGDResources;
  resourceStringArray: TArray<string>;
  size: Integer;
  index: Integer;
begin
        gdResources := TGDResources.getInstance();
        resourceStringArray := gdResources.resourceStringArray;
        size := System.Length(resourceStringArray);
        for index := 0 to size - 1 do begin
            if (resourceStringArray[index]) = (key) then begin
                Exit(index);
            end;
        end;
        Self.logUtil.putF(TStringMaker.Create().append('unable to find key: ').append(TStringUtil.getInstance().toString(key)).toString(), Self, Self.commonStrings.RUN);
        raise SysUtils.Exception.Create('');
end;
    

// throws Exception
function TImageCache.createImageFromInputStream(key: TObject; inputStream: TInputStream): TImage;
var
  gdLazyResources: TGDLazyResources;
  resourceStringArray: TArray<string>;
  size: Integer;
  index: Integer;
  width: Integer;
  height: Integer;
  image: TImage;
begin
        gdLazyResources := TGDLazyResources.getInstance();
        resourceStringArray := gdLazyResources.requiredResourcesBeforeLoadingArray;
        size := System.Length(resourceStringArray);
        for index := 0 to size - 1 do begin
            if (key) = (resourceStringArray[index]) then begin
                Exit(Self.creatImage(string(key)));
            end;
        end;
        Self.runTask();
        index := Self.getIndex(key);
        width := gdLazyResources.imageResourceWidthArray[index];
        height := gdLazyResources.imageResourceHeightArray[index];
        image := Self.createImageLater(string(key), width, height);
        TJava.MonitorEnter(Self.lock);
        try
            Self.loadList.add(image);
        finally
            TJava.MonitorExit(Self.lock);
        end;
        Exit(image);
end;
    

// throws Exception
function TImageCache.createImageLater(key: string; width: Integer; height: Integer): TImage;
begin
        Exit(TImage.createImageLater(key, width, height));
end;
    

function TImageCache.getAssociated(lazyImageRotationAnimation: TLazyImageRotationAnimation): TBasicArrayList;
var
  list: TBasicArrayList;
  lazyImageRotationAnimation2: TLazyImageRotationAnimation;
  size: Integer;
  index: Integer;
  size2: Integer;
begin
        list := TBasicArrayListD.Create();
        TJava.MonitorEnter(Self.lock);
        try
            lazyImageRotationAnimation2 := nil;
            size := Self.loadAfterList.size();
            for index := 0 to size - 1 do begin
                lazyImageRotationAnimation2 := TLazyImageRotationAnimation(Self.loadAfterList.get(index));
                if (lazyImageRotationAnimation2.instanceId) = (lazyImageRotationAnimation.instanceId) then begin
                    list.add(lazyImageRotationAnimation2);
                end;
            end;
            size2 := list.size();
            for index := 0 to size2 - 1 do begin
                Self.loadAfterList.remove(list.get(index));
            end;
        finally
            TJava.MonitorExit(Self.lock);
        end;
        Exit(list);
end;
    

procedure TImageCache.add(lazyImageRotationAnimation: TLazyImageRotationAnimation);
begin
        TJava.MonitorEnter(Self.lock);
        try
            Self.loadAfterList.add(lazyImageRotationAnimation);
        finally
            TJava.MonitorExit(Self.lock);
        end;
end;
    

// throws Exception
procedure TImageCache.insertFirst(lazyImageRotationAnimation: TLazyImageRotationAnimation);
begin
        if Self.loadNowList.contains(lazyImageRotationAnimation) then begin
        end else begin
            TJava.MonitorEnter(Self.lock);
            try
                Self.loadNowList.add(lazyImageRotationAnimation);
                Self.loadAfterList.remove(lazyImageRotationAnimation);
            finally
                TJava.MonitorExit(Self.lock);
            end;
        end;
        Self.runTask();
end;
    

procedure TImageCache.progressEnded;
begin
        Self.progressEnded_ := True;
end;
    

// throws Exception
procedure TImageCache.runTask;
begin
        Self.processor.process();
end;
    

procedure TImageCache.initProgress;
begin
        if Self.firstTime then begin
            Self.firstTime := False;
        end;
end;
    

function TImageCache.isLazy: Boolean;
begin
        Exit(True);
end;

initialization
  TImageCache.NULL_IMAGE_CACHE := TImageCache.Create();

end.

