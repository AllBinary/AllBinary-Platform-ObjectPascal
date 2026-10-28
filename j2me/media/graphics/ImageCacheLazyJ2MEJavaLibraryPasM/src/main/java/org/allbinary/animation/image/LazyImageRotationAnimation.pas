{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.animation.image
unit LazyImageRotationAnimation;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, AnimationBehavior, IndexedAnimation, NullRotationAnimationFactory, RotationAnimation, BasicColor, ImageCache, ImageCacheFactory, LogUtil, AngleFactory, AngleInfo, CommonSeps, StringMaker, ScaleProperties, CircularIndexUtil, BaseImageAnimationFactory;

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

  TLazyImageRotationAnimation = class(TRotationAnimation)
  public
    logUtil: TLogUtil;
    layoutIndex: Integer;
    instanceId: Integer;
    animationInterfaceFactoryInterface: TBaseImageAnimationFactory;
    NULL_INDEX_ANIMATION: TIndexedAnimation;
    animation: TIndexedAnimation;
    scaleProperties: TScaleProperties;
    class var SET_REAL_ANIMATION: string;
    procedure InitFields;
        constructor Create(layoutIndex: Integer; instanceId: Integer; scaleProperties: TScaleProperties; animationInterfaceFactoryInterface: TBaseImageAnimationFactory; animationBehavior: TAnimationBehavior);
        procedure setRealAnimation; virtual;
        procedure setScale(scaleX: Single; scaleY: Single); override;
        function getAnimationBehavior: TAnimationBehavior; override;
        procedure set_(gl: TGL); override;
        procedure setAlpha(alpha: Integer); override;
        procedure setDx(dx: Integer); override;
        procedure setDy(dy: Integer); override;
        procedure setMaxScale(maxScaleX: Single; maxScaleY: Single); override;
        procedure nextRotation; override;
        procedure previousRotation; override;
        procedure nextRotationX; override;
        procedure previousRotationX; override;
        procedure nextRotationZ; override;
        procedure previousRotationZ; override;
        procedure changeBasicColor(basicColor: TBasicColor); override;
        function getBasicColorP: TBasicColor; override;
        function getChangeBasicColor: TBasicColor; override;
        function getChangeColor: Integer; override;
        function getColor: Integer; override;
        function getDx: Integer; override;
        function getDy: Integer; override;
        function isThreed: Boolean; override;
        procedure nextFrame; override;
        procedure reset; override;
        procedure setFrame(index: Integer); override;
        function getFrame: Integer; override;
        function getAnimationSize: Integer; override;
        function getSize: Integer; override;
        procedure previousFrame; override;
        function isLastFrame: Boolean; override;
        procedure setSequence(sequence: TArray<Integer>); override;
        function getSequence: TArray<Integer>; override;
        function getWidth: Integer; override;
        procedure paintXY(graphics: TGraphics; x: Integer; y: Integer); override;
        procedure paintThreedXYZ(graphics: TGraphics; x: Integer; y: Integer; z: Integer); override;
        function toString: string; override;
  end;

implementation
uses
  ActualRotationAnimation;



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


procedure TLazyImageRotationAnimation.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
  
  Self.scaleProperties := TScaleProperties.instance;
end;
    

constructor TLazyImageRotationAnimation.Create(layoutIndex: Integer; instanceId: Integer; scaleProperties: TScaleProperties; animationInterfaceFactoryInterface: TBaseImageAnimationFactory; animationBehavior: TAnimationBehavior);
var
  imageCache: TImageCache;
begin
        inherited Create(TAngleInfo.getInstance(TAngleFactory.getInstance().QUARTER_TOTAL_ANGLE), TCircularIndexUtil.createInstance(4), animationBehavior);
        InitFields;
        Self.layoutIndex := layoutIndex;
        Self.instanceId := instanceId;
        Self.animationInterfaceFactoryInterface := animationInterfaceFactoryInterface;
        imageCache := TImageCacheFactory.getInstance();
        imageCache.add(Self);
        Self.scaleProperties := scaleProperties;
        Self.NULL_INDEX_ANIMATION := TIndexedAnimation(TNullRotationAnimationFactory.getFactoryInstance().getInstance(0));
        { Java local class ActualRotationAnimation: move it to the unit }
        Self.animation := TActualRotationAnimation.Create(Self);
end;
    

procedure TLazyImageRotationAnimation.setRealAnimation;
var
  animation: TIndexedAnimation;
begin
        try
            animation := Self.animation;
            Self.animationInterfaceFactoryInterface.setInitialScale(Self.scaleProperties);
            Self.animation := TIndexedAnimation(Self.animationInterfaceFactoryInterface.getInstance(Self.instanceId));
            Self.animation.setState(animation);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, TLazyImageRotationAnimation.SET_REAL_ANIMATION, e);
            end;
        end;
end;
    

procedure TLazyImageRotationAnimation.setScale(scaleX: Single; scaleY: Single);
begin
        Self.animation.setScale(scaleX, scaleY);
end;
    

function TLazyImageRotationAnimation.getAnimationBehavior: TAnimationBehavior;
begin
        Exit(Self.animation.getAnimationBehavior());
end;
    

// throws Exception
procedure TLazyImageRotationAnimation.set_(gl: TGL);
begin
        Self.animation.set_(gl);
end;
    

procedure TLazyImageRotationAnimation.setAlpha(alpha: Integer);
begin
        Self.animation.setAlpha(alpha);
end;
    

procedure TLazyImageRotationAnimation.setDx(dx: Integer);
begin
        Self.animation.setDx(dx);
end;
    

procedure TLazyImageRotationAnimation.setDy(dy: Integer);
begin
        Self.animation.setDy(dy);
end;
    

procedure TLazyImageRotationAnimation.setMaxScale(maxScaleX: Single; maxScaleY: Single);
begin
        Self.animation.setMaxScale(maxScaleX, maxScaleY);
end;
    

procedure TLazyImageRotationAnimation.nextRotation;
var
  rotationAnimation: TRotationAnimation;
begin
        rotationAnimation := (TRotationAnimation(Self.animation));
        rotationAnimation.nextRotation();
end;
    

procedure TLazyImageRotationAnimation.previousRotation;
var
  rotationAnimation: TRotationAnimation;
begin
        rotationAnimation := (TRotationAnimation(Self.animation));
        rotationAnimation.previousRotation();
end;
    

procedure TLazyImageRotationAnimation.nextRotationX;
var
  rotationAnimation: TRotationAnimation;
begin
        rotationAnimation := (TRotationAnimation(Self.animation));
        rotationAnimation.nextRotationX();
end;
    

procedure TLazyImageRotationAnimation.previousRotationX;
var
  rotationAnimation: TRotationAnimation;
begin
        rotationAnimation := (TRotationAnimation(Self.animation));
        rotationAnimation.previousRotationX();
end;
    

procedure TLazyImageRotationAnimation.nextRotationZ;
var
  rotationAnimation: TRotationAnimation;
begin
        rotationAnimation := (TRotationAnimation(Self.animation));
        rotationAnimation.nextRotationZ();
end;
    

procedure TLazyImageRotationAnimation.previousRotationZ;
var
  rotationAnimation: TRotationAnimation;
begin
        rotationAnimation := (TRotationAnimation(Self.animation));
        rotationAnimation.previousRotationZ();
end;
    

procedure TLazyImageRotationAnimation.changeBasicColor(basicColor: TBasicColor);
begin
        Self.animation.changeBasicColor(basicColor);
end;
    

function TLazyImageRotationAnimation.getBasicColorP: TBasicColor;
begin
        Exit(Self.animation.getBasicColorP());
end;
    

function TLazyImageRotationAnimation.getChangeBasicColor: TBasicColor;
begin
        Exit(Self.animation.getChangeBasicColor());
end;
    

function TLazyImageRotationAnimation.getChangeColor: Integer;
begin
        Exit(Self.animation.getChangeColor());
end;
    

function TLazyImageRotationAnimation.getColor: Integer;
begin
        Exit(Self.animation.getColor());
end;
    

function TLazyImageRotationAnimation.getDx: Integer;
begin
        Exit(Self.animation.getDx());
end;
    

function TLazyImageRotationAnimation.getDy: Integer;
begin
        Exit(Self.animation.getDy());
end;
    

function TLazyImageRotationAnimation.isThreed: Boolean;
begin
        Exit(Self.animation.isThreed());
end;
    

// throws Exception
procedure TLazyImageRotationAnimation.nextFrame;
begin
        Self.animation.nextFrame();
end;
    

procedure TLazyImageRotationAnimation.reset;
begin
        Self.animation.reset();
end;
    

procedure TLazyImageRotationAnimation.setFrame(index: Integer);
begin
        Self.animation.setFrame(index);
end;
    

function TLazyImageRotationAnimation.getFrame: Integer;
begin
        Exit(Self.animation.getFrame());
end;
    

// throws Exception
function TLazyImageRotationAnimation.getAnimationSize: Integer;
begin
        Exit(Self.animation.getAnimationSize());
end;
    

function TLazyImageRotationAnimation.getSize: Integer;
begin
        Exit(Self.animation.getSize());
end;
    

procedure TLazyImageRotationAnimation.previousFrame;
begin
        Self.animation.previousFrame();
end;
    

function TLazyImageRotationAnimation.isLastFrame: Boolean;
begin
        Exit(Self.animation.isLastFrame());
end;
    

procedure TLazyImageRotationAnimation.setSequence(sequence: TArray<Integer>);
begin
        Self.animation.setSequence(sequence);
end;
    

function TLazyImageRotationAnimation.getSequence: TArray<Integer>;
begin
        Exit(Self.animation.getSequence());
end;
    

function TLazyImageRotationAnimation.getWidth: Integer;
begin
        Exit(Self.animation.getWidth());
end;
    

procedure TLazyImageRotationAnimation.paintXY(graphics: TGraphics; x: Integer; y: Integer);
begin
        try
            Self.animation.paintXY(graphics, x, y);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.commonStrings.PROCESS, e);
            end;
        end;
end;
    

procedure TLazyImageRotationAnimation.paintThreedXYZ(graphics: TGraphics; x: Integer; y: Integer; z: Integer);
begin
        try
            Self.animation.paintThreedXYZ(graphics, x, y, z);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.commonStrings.PROCESS, e);
            end;
        end;
end;
    

function TLazyImageRotationAnimation.toString: string;
var
  commonSeps: TCommonSeps;
  image: TImage;
begin
        commonSeps := TCommonSeps.getInstance();
        image := Self.animationInterfaceFactoryInterface.getImage();
        Exit(TStringMaker.Create().append(inherited toString()).append(commonSeps.SPACE).append(image.getName()).append(commonSeps.SPACE).appendint(Integer(Trunc(image.getWidth()))).append(commonSeps.SPACE).appendint(Integer(Trunc(image.getHeight()))).toString());
end;

initialization
  TLazyImageRotationAnimation.SET_REAL_ANIMATION := 'setRealAnimation';

end.

