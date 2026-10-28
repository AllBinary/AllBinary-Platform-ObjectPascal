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
// package org.allbinary.graphics.canvas.transition.progress
unit AndroidBasicTitleProgressBar;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, Activity, AndroidUtil, GameFeatureImageCacheFactory, PreResourceImageUtil, ForcedLogUtil, ExceptionUtil, Animation, NullAnimationFactory, Features, MainFeatureFactory, BasicColor, DisplayInfoSingleton, DisplayChangeEvent, DisplayChangeEventHandler, DisplayChangeEventListener, ImageCacheFactory, ImageScaleUtil, AllBinaryEventObject, AnimationBehavior, ImageAnimation, ResourceUtil, EventStrings, ARunnable, NullRunnable, ProgressCanvas;

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

  TAndroidBasicTitleProgressBar = class(TProgressCanvas, IDisplayChangeEventListener)
  public
    showTitleProgressBarRunnable: TARunnable;
    dismissTitleProgressBarRunnable: TARunnable;
    titleProgressDialogPortionSetProgressRunnable: TARunnable;
    titleProgressDialogSetProgressRunnable: TARunnable;
    midletActivity: TActivity;
    portion: Integer;
    IMAGE: TArray<TImage>;
    image: TImage;
    animation: TAnimation;
    class var RESOURCE: string;
    class var background: Integer;
    procedure InitFields;
        constructor Create(title: string; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
        procedure init;
        procedure initActivity(activity: TActivity); virtual;
        procedure updateCurrent;
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure onDisplayChangeEvent(displayChangeEvent: TDisplayChangeEvent); virtual;
        procedure loadProgressImages;
        function isInitialized: Boolean; virtual;
        procedure start; virtual;
        procedure end_; virtual;
        procedure addEarlyPortion(value: Integer; text: string; index: Integer); virtual;
        procedure addPortion(value: Integer; text: string; index: Integer); virtual;
        procedure addNormalPortion(value: Integer; text: string); virtual;
        procedure setValue(value: Integer); virtual;
        procedure waitUntilDisplayed; virtual;
        procedure setImages(index: Integer; lastWidth: Integer; lastHeight: Integer);
        procedure initOpenGL(graphics: TGraphics); virtual;
        procedure update(graphics: TGraphics); virtual;
        function getImage(index: Integer): TImage;
        procedure paint2(graphics: TGraphics); virtual;
        class procedure setBackgroundResource(background: Integer); static;
        procedure setBackground(background: Boolean); virtual;
        procedure setPortion(portion: Integer); virtual;
        function getPortion: Integer; virtual;
  end;

implementation
uses
  ShowTitleProgressBarRunnable, DismissTitleProgressBarRunnable, TitleProgressBarSetProgressRunnable, TitleProgressBarPortionSetProgressRunnable;



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


procedure TAndroidBasicTitleProgressBar.InitFields;
begin
  Self.showTitleProgressBarRunnable := TNullRunnable.getInstance();
  Self.dismissTitleProgressBarRunnable := TNullRunnable.getInstance();
  Self.titleProgressDialogPortionSetProgressRunnable := TNullRunnable.getInstance();
  Self.titleProgressDialogSetProgressRunnable := TNullRunnable.getInstance();
  Self.midletActivity := TAndroidUtil.NULL_ACTIVITY;
  Self.portion := 0;
  Self.IMAGE := TJava.NewArray<TImage>(4);
  Self.image := TNullImage.NULL_IMAGE;
  Self.animation := TNullAnimationFactory.getFactoryInstance().getInstance(0);
end;
    

constructor TAndroidBasicTitleProgressBar.Create(title: string; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
var
  size: Integer;
  index: Integer;
begin
        inherited Create(title, backgroundBasicColor, foregroundBasicColor);
        InitFields;
        Self.init();
        TDisplayChangeEventHandler.getInstance().addListenerInterface(Self);
        size := System.Length(Self.IMAGE);
        for index := 0 to size - 1 do begin
            Self.IMAGE[index] := TNullImage.NULL_IMAGE;
        end;
end;
    

procedure TAndroidBasicTitleProgressBar.init;
begin
        try
            if (TAndroidBasicTitleProgressBar.background) <> (0) then begin
                TResourceUtil.getInstance().addResource(TAndroidBasicTitleProgressBar.RESOURCE, TAndroidBasicTitleProgressBar.background);
                TGameFeatureImageCacheFactory.init();
                Self.image := TImageCacheFactory.getInstance().getWithKey(TAndroidBasicTitleProgressBar.RESOURCE);
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.commonStrings.INIT, e);
            end;
        end;
end;
    

procedure TAndroidBasicTitleProgressBar.initActivity(activity: TActivity);
begin
        try
            if (Self.midletActivity) <> (activity) then begin
                Self.midletActivity := activity;
                Self.showTitleProgressBarRunnable := TShowTitleProgressBarRunnable.Create(Self.midletActivity, Self);
                Self.dismissTitleProgressBarRunnable := TDismissTitleProgressBarRunnable.Create(Self.midletActivity, Self);
                Self.titleProgressDialogSetProgressRunnable := TTitleProgressBarSetProgressRunnable.Create(Self.midletActivity, Self);
                Self.titleProgressDialogPortionSetProgressRunnable := TTitleProgressBarPortionSetProgressRunnable.Create(Self.midletActivity, Self);
                Self.loadProgressImages();
            end;
            Self.updateCurrent();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.commonStrings.INIT, e);
            end;
        end;
end;
    

procedure TAndroidBasicTitleProgressBar.updateCurrent;
var
  displayInfo: TDisplayInfoSingleton;
  currentImage: TImage;
begin
        try
            if not (Self.isBackground()) then begin
                Self.animation := TNullAnimationFactory.getFactoryInstance().getInstance(0);
            end else if (TAndroidBasicTitleProgressBar.background) <> (0) then begin
                displayInfo := TDisplayInfoSingleton.getInstance();
                
                if displayInfo.isPortrait() then begin
                    currentImage := Self.getImage(0);
                end else begin
                    currentImage := Self.getImage(2);
                end;
                if (currentImage) = (nil) then begin
                    Self.animation := TNullAnimationFactory.getFactoryInstance().getInstance(0);
                end else begin
                    Self.animation := TImageAnimation.Create(currentImage, TAnimationBehavior.getInstance());
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.commonStrings.UPDATE, e);
            end;
        end;
end;
    

procedure TAndroidBasicTitleProgressBar.onEvent(eventObject: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, Self);
end;
    

procedure TAndroidBasicTitleProgressBar.onDisplayChangeEvent(displayChangeEvent: TDisplayChangeEvent);
begin
        try
            Self.loadProgressImages();
            Self.updateCurrent();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.putF((Self.commonStrings.EXCEPTION_LABEL) + (TExceptionUtil.getInstance().getStackTrace(e)), Self, Self.canvasStrings.ON_DISPLAY_CHANGE_EVENT);
            Self.animation := TNullAnimationFactory.getFactoryInstance().getInstance(0);
            end;
        end;
end;
    

procedure TAndroidBasicTitleProgressBar.loadProgressImages;
var
  displayInfo: TDisplayInfoSingleton;
  lastWidth: Integer;
  lastHeight: Integer;
begin
        try
            displayInfo := TDisplayInfoSingleton.getInstance();
            lastWidth := displayInfo.getLastWidth();
            lastHeight := displayInfo.getLastHeight();
            if displayInfo.isPortraitWH(lastWidth, lastHeight) then begin
                Self.setImages(0, lastWidth, lastHeight);
            end else begin
                Self.setImages(2, lastWidth, lastHeight);
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.putF('IllegalArgumentException ' + TJava.ToString(TExceptionUtil.getInstance().getStackTrace(e)), Self, 'loadProgressImages');
            Self.animation := TNullAnimationFactory.getFactoryInstance().getInstance(0);
            end;
            on e: SysUtils.Exception do begin
            Self.logUtil.putF((Self.commonStrings.EXCEPTION_LABEL) + (TExceptionUtil.getInstance().getStackTrace(e)), Self, 'loadProgressImages');
            Self.animation := TNullAnimationFactory.getFactoryInstance().getInstance(0);
            end;
        end;
end;
    

function TAndroidBasicTitleProgressBar.isInitialized: Boolean;
begin
        if (Self.midletActivity) <> (TAndroidUtil.NULL_ACTIVITY) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

procedure TAndroidBasicTitleProgressBar.start;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, Self, Self.commonStrings.START_METHOD_NAME);
            inherited start();
            Self.midletActivity.runOnUiThread(Self.showTitleProgressBarRunnable);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.commonStrings.START_METHOD_NAME, e);
            end;
        end;
end;
    

procedure TAndroidBasicTitleProgressBar.end_;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, Self, Self.commonStrings.END_METHOD_NAME);
            Self.midletActivity.runOnUiThread(Self.dismissTitleProgressBarRunnable);
            inherited end_();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.commonStrings.END_METHOD_NAME, e);
            end;
        end;
end;
    

procedure TAndroidBasicTitleProgressBar.addEarlyPortion(value: Integer; text: string; index: Integer);
begin
        try
            Self.portion := value;
            inherited addEarlyPortion(value, text, index);
            if (Self.midletActivity) <> (TAndroidUtil.NULL_ACTIVITY) then begin
                Self.midletActivity.runOnUiThread(Self.titleProgressDialogPortionSetProgressRunnable);
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.ADD_PORTION, e);
            end;
        end;
end;
    

procedure TAndroidBasicTitleProgressBar.addPortion(value: Integer; text: string; index: Integer);
begin
        try
            Self.portion := value;
            inherited addPortion(value, text, index);
            Self.midletActivity.runOnUiThread(Self.titleProgressDialogPortionSetProgressRunnable);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.ADD_PORTION, e);
            end;
        end;
end;
    

procedure TAndroidBasicTitleProgressBar.addNormalPortion(value: Integer; text: string);
begin
        try
            Self.portion := value;
            inherited addNormalPortion(value, text);
            Self.midletActivity.runOnUiThread(Self.titleProgressDialogPortionSetProgressRunnable);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.ADD_PORTION, e);
            end;
        end;
end;
    

procedure TAndroidBasicTitleProgressBar.setValue(value: Integer);
begin
        try
            inherited setValue(value);
            Self.midletActivity.runOnUiThread(Self.titleProgressDialogSetProgressRunnable);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'setValue', e);
            end;
        end;
end;
    

procedure TAndroidBasicTitleProgressBar.waitUntilDisplayed;
begin
end;
    

// throws Exception
procedure TAndroidBasicTitleProgressBar.setImages(index: Integer; lastWidth: Integer; lastHeight: Integer);
var
  image: TImage;
  nextIndex: Integer;
begin
        image := Self.image;
        if (image) <> (TNullImage.NULL_IMAGE) then begin
            if TFeatures.getInstance().isFeature(TMainFeatureFactory.getInstance().FULL_SCREEN) then begin
                if (Self.IMAGE[index]) = (TNullImage.NULL_IMAGE) then begin
                    Self.IMAGE[index] := TImageScaleUtil.getInstance().createImage2(TImageCacheFactory.getInstance(), image, lastWidth, Single(image.getWidth()), (lastHeight) - (20.0), Single(image.getHeight()), False);
                end;
            end else begin
                nextIndex := (index) + (1);
                if (Self.IMAGE[nextIndex]) = (TNullImage.NULL_IMAGE) then begin
                    Self.IMAGE[nextIndex] := TImageScaleUtil.getInstance().createImage2(TImageCacheFactory.getInstance(), image, lastWidth, Single(image.getWidth()), (lastHeight) - (28.0), Single(image.getHeight()), False);
                end;
            end;
        end;
end;
    

// throws Exception
procedure TAndroidBasicTitleProgressBar.initOpenGL(graphics: TGraphics);
var
  preResourceImageUtil: TPreResourceImageUtil;
  size: Integer;
  index: Integer;
begin
        Self.logUtil.putF(Self.commonStrings.START, Self, Self.commonStrings.INIT);
        Self.image := TGameFeatureImageCacheFactory.getInstance().getWithKey(TAndroidBasicTitleProgressBar.RESOURCE);
        preResourceImageUtil := TPreResourceImageUtil.getInstance();
        size := System.Length(Self.IMAGE);
        for index := 0 to size - 1 do begin
            if (Self.IMAGE[index]) <> (TNullImage.NULL_IMAGE) then begin
                Self.IMAGE[index] := preResourceImageUtil.encapsulate(Self.IMAGE[index]);
            end;
        end;
        Self.updateCurrent();
end;
    

// throws Exception
procedure TAndroidBasicTitleProgressBar.update(graphics: TGraphics);
var
  preResourceImageUtil: TPreResourceImageUtil;
  size: Integer;
  index: Integer;
begin
        Self.logUtil.putF(Self.commonStrings.START, Self, Self.commonStrings.UPDATE);
        Self.initOpenGL(graphics);
        Self.image := TGameFeatureImageCacheFactory.getInstance().getWithKey(TAndroidBasicTitleProgressBar.RESOURCE);
        preResourceImageUtil := TPreResourceImageUtil.getInstance();
        size := System.Length(Self.IMAGE);
        for index := 0 to size - 1 do begin
            if (Self.IMAGE[index]) <> (TNullImage.NULL_IMAGE) then begin
                preResourceImageUtil.update(graphics, Self.IMAGE[index]);
            end;
        end;
end;
    

// throws Exception
function TAndroidBasicTitleProgressBar.getImage(index: Integer): TImage;
var
  image: TImage;
begin
        image := TNullImage.NULL_IMAGE;
        if TFeatures.getInstance().isFeature(TMainFeatureFactory.getInstance().FULL_SCREEN) then begin
            image := Self.IMAGE[index];
        end else begin
            image := Self.IMAGE[(index) + (1)];
        end;
        Exit(image);
end;
    

procedure TAndroidBasicTitleProgressBar.paint2(graphics: TGraphics);
begin
        try
            Self.animation.paintXY(graphics, 0, 20);
            inherited paint2(graphics);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.canvasStrings.PAINT, e);
            end;
        end;
end;
    

class procedure TAndroidBasicTitleProgressBar.setBackgroundResource(background: Integer);
begin
        TAndroidBasicTitleProgressBar.background := background;
end;
    

procedure TAndroidBasicTitleProgressBar.setBackground(background: Boolean);
begin
        inherited setBackground(background);
        Self.updateCurrent();
end;
    

procedure TAndroidBasicTitleProgressBar.setPortion(portion: Integer);
begin
        Self.portion := portion;
end;
    

function TAndroidBasicTitleProgressBar.getPortion: Integer;
begin
        Exit(Self.portion);
end;

initialization
  TAndroidBasicTitleProgressBar.RESOURCE := 'ProgressImage';
  

end.

