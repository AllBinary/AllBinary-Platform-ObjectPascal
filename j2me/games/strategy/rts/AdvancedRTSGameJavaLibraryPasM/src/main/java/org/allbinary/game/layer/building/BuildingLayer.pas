{
 
  AllBinary Open License Version 1 
  Copyright (c) 2006 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer.building
unit BuildingLayer;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, ExplosionBasicSound, NullAnimationFactory, NullIndexedAnimationFactory, GroupFactory, NullRTSFormInputFactory, RTSFormInput, VisibleCellPositionsSingleton, AdvancedRTSGameLayer, AdvancedRTSPlayerLayerInterface, AdvancedRTSProperties, CollidableRTSBehavior, RTSLayerUtil, RTSPlayerLayerInterface, SelectionHudPaintable, Waypoint, TileLayerPositionIntoViewPosition, RectangleFactory, StringUtil, BasicArrayList, BasicArrayListD, AnimationInterfaceFactoryInterface, ProceduralAnimationInterfaceFactoryInterface, RotationAnimationInterfaceCompositeInterface, Direction, DirectionFactory, DamageFloaters, Health, Group, GeographicMapCellPositionAreaBase, NullPathFindingLayer, TrackingEvent, TrackingEventHandler, TrackingEventListenerInterface, Rectangle, Paintable, AllBinaryLayerManager, SecondaryPlayerQueueFactory, SelectSound, GeographicMapCellPosition, GeographicMapDirectionUtil, DropCellPositionHistory, TimeDelayHelper, BasicArrayListS, RemoteInfo, ABHashtable, BuildingPropertiesFactory;

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

  TBuildingLayer = class(TAdvancedRTSGameLayer, IRotationAnimationInterfaceCompositeInterface, ITrackingEventListenerInterface)
  public
    buildingLevelCost: Integer;
    productivity: Integer;
    efficiency: Integer;
    efficiencyPerLevel: Integer;
    trackingEvent: TTrackingEvent;
    damageFloaters: TDamageFloaters;
    damageFloatersPaintableInterface: TPaintable;
    healthBar: TPaintable;
    pathsHashtable: TABHashtable<TObject, TObject>;
    local: Boolean;
    timeDelayHelper: TTimeDelayHelper;
    procedure InitFields;
        class function createSimulated: TBuildingLayer; static;
        constructor Create(remoteInfo: TRemoteInfo; buildingPropertiesFactory: TBuildingPropertiesFactory; advancedRTSProperties: TAdvancedRTSProperties; groupInterface: TArray<TGroup>; rootName: string; name: string; healthInterface: THealth; rtsFormInput: TRTSFormInput; animationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; emptyAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; baseAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; buildAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; verticleBuildAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; proceduralAnimationInterfaceFactoryInterface: IProceduralAnimationInterfaceFactoryInterface; rectangle: TRectangle; x: Integer; y: Integer);
        procedure initVisibility(rtsPlayerLayerInterface: IRTSPlayerLayerInterface); virtual;
        procedure construct(rtsPlayerLayerInterface: IRTSPlayerLayerInterface); virtual;
        procedure onMovement(trackingEvent: TTrackingEvent); virtual;
        procedure processBuiltTick(allBinaryLayerManager: TAllBinaryLayerManager); virtual;
        function calculateEfficiency: Integer;
        function getCost: Integer; virtual;
        function getDowngradeCost: Integer; virtual;
        function getUpgradeCost: Integer; virtual;
        procedure downgrade; virtual;
        procedure upgrade; virtual;
        function getBuildingLevelCost: Integer;
        procedure setBuildingLevelCost(buildingLevelCost: Integer); virtual;
        function getProductivity: Integer; virtual;
        procedure setProductivity(productivity: Integer); virtual;
        function getEfficiency: Integer; virtual;
        procedure setEfficiency(efficiency: Integer); virtual;
        procedure generateMoveOutOfBuildAreaPaths;
        function getMoveOutOfBuildAreaPath(geographicMapCellPosition: TGeographicMapCellPosition): TBasicArrayList; virtual;
        function getEndGeographicMapCellPositionList: TBasicArrayList; virtual;
        function shouldHandleStartSameAsEnd: Boolean; virtual;
        procedure paint(graphics: TGraphics); virtual;
        procedure damage(damage: Integer; damageType: Integer); virtual;
        function getDamage(damageType: Integer): Integer; virtual;
        procedure addVisibility; virtual;
        procedure removeVisibility; virtual;
        procedure setDestroyed(destroyed: Boolean); virtual;
        function createHudPaintable: TSelectionHudPaintable; virtual;
        function getHudPaintable: TSelectionHudPaintable; virtual;
        function getType: Integer; virtual;
        class function getStaticType: Integer; static;
  end;

implementation
uses
  SimulatedBuildingPropertiesFactory, BuildingInfoHudPaintable;



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


procedure TBuildingLayer.InitFields;
begin
  
  
  
  
  
  
  
  
  
  
  Self.timeDelayHelper := TTimeDelayHelper.Create(3000);
end;
    

// throws Exception
class function TBuildingLayer.createSimulated: TBuildingLayer;
var
  nullAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface;
  nullIndexedAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface;
begin
        nullAnimationInterfaceFactoryInterface := TNullAnimationFactory.getFactoryInstance();
        nullIndexedAnimationInterfaceFactoryInterface := TNullIndexedAnimationFactory.getFactoryInstance();
        Exit(TBuildingLayer.Create(TRemoteInfo.REMOTE_INFO, TSimulatedBuildingPropertiesFactory.getInstance(), TAdvancedRTSProperties.createPropertiesSimulated(), TGroupFactory.getInstance().NULL_GROUP_ARRAY, TStringUtil.getInstance().EMPTY_STRING, TStringUtil.getInstance().EMPTY_STRING, THealth.NULL_HEALTH, TNullRTSFormInputFactory.getInstance(), nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullAnimationInterfaceFactoryInterface, nullIndexedAnimationInterfaceFactoryInterface, TNullIndexedAnimationFactory.getFactoryInstance(), TRectangleFactory.SINGLETON, 0, 0));
end;
    

constructor TBuildingLayer.Create(remoteInfo: TRemoteInfo; buildingPropertiesFactory: TBuildingPropertiesFactory; advancedRTSProperties: TAdvancedRTSProperties; groupInterface: TArray<TGroup>; rootName: string; name: string; healthInterface: THealth; rtsFormInput: TRTSFormInput; animationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; emptyAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; baseAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; buildAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; verticleBuildAnimationInterfaceFactoryInterface: IAnimationInterfaceFactoryInterface; proceduralAnimationInterfaceFactoryInterface: IProceduralAnimationInterfaceFactoryInterface; rectangle: TRectangle; x: Integer; y: Integer);
begin
        inherited Create(remoteInfo, TNullPathFindingLayer.NULL_PATH_FINDING_LAYER, advancedRTSProperties, groupInterface, rootName, name, healthInterface, rtsFormInput, animationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y, TTileLayerPositionIntoViewPosition.Create());
        InitFields;
        Self.setCollidableInferface(TCollidableRTSBehavior.Create(True));
        Self.getWaypointBehavior().setWaypoint(TWaypoint.Create(Self, TSelectSound.getInstance()));
        Self.damageFloaters := buildingPropertiesFactory.getDamageFloaters(Self);
        Self.damageFloatersPaintableInterface := buildingPropertiesFactory.damageFloatersPaintableInterface;
        Self.healthBar := buildingPropertiesFactory.getHealthBar(Self);
        Self.pathsHashtable := buildingPropertiesFactory.getHashtable();
        Self.setMaxLevel(30);
        Self.setProductivity(1);
        Self.setEfficiency(Self.calculateEfficiency());
        Self.efficiencyPerLevel := buildingPropertiesFactory.getEfficiencyPerLevel(Self);
        Self.efficiency := Self.efficiencyPerLevel;
        Self.generateMoveOutOfBuildAreaPaths();
        Self.trackingEvent := buildingPropertiesFactory.getTrackingEvent(Self);
end;
    

procedure TBuildingLayer.initVisibility(rtsPlayerLayerInterface: IRTSPlayerLayerInterface);
var
  advancedRTSPlayerLayerInterface: IAdvancedRTSPlayerLayerInterface;
begin
        advancedRTSPlayerLayerInterface := IAdvancedRTSPlayerLayerInterface(Pointer(rtsPlayerLayerInterface));
        if advancedRTSPlayerLayerInterface.isLocalPlayer() then begin
            Self.local := True;
            Self.addVisibility();
        end else begin
            Self.local := False;
        end;
        inherited initVisibility(rtsPlayerLayerInterface);
end;
    

// throws Exception
procedure TBuildingLayer.construct(rtsPlayerLayerInterface: IRTSPlayerLayerInterface);
begin
        inherited construct(rtsPlayerLayerInterface);
        TTrackingEventHandler.getInstance().addListenerInterface(Self);
end;
    

procedure TBuildingLayer.onMovement(trackingEvent: TTrackingEvent);
var
  layerInterface: TAdvancedRTSGameLayer;
begin
        try
            layerInterface := TAdvancedRTSGameLayer(trackingEvent.getLayerInterface());
            if (layerInterface.getGroupInterface()[0]) <> (Self.getGroupInterface()[0]) then begin
                layerInterface.onMovementFound(Self.trackingEvent);
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'onMovement', e);
            end;
        end;
end;
    

// throws Exception
procedure TBuildingLayer.processBuiltTick(allBinaryLayerManager: TAllBinaryLayerManager);
var
  currentFrame: Integer;
  size: Integer;
begin
        if Self.getHealthInterface().isDamaged() then begin
            Self.setAnimationInterface(Self.destroyAnimationInterface);
        end;
        if not (not (Self.getHealthInterface().Finished)) then begin
            if Self.isReadyForExplosion() then begin
                currentFrame := Self.destroyAnimationInterface.getFrame();
                size := (Self.destroyAnimationInterface.getSize()) - (1);
                if ((currentFrame) = (size)) and (not (Self.timeDelayHelper.isTimeTNT())) then begin
                    if not (not (Self.getHealthInterface().Finished)) then begin
                        Self.setDestroyed(True);
                    end;
                end else begin
                    Self.destroyAnimationInterface.nextFrame();
                end;
            end else begin
                Self.setAnimationInterface(Self.destroyAnimationInterface);
                TSecondaryPlayerQueueFactory.getInstance().add(TExplosionBasicSound.getInstance());
                Self.shakeListener.onSmallShakeEvent();
                Self.vibration.vibrate(Self.duration, 0, 0);
                Self.timeDelayHelper.setStartTimeTNT();
                Self.setReadyForExplosion(True);
            end;
        end else begin
            inherited processBuiltTick(allBinaryLayerManager);
        end;
        Self.indexedButShouldBeRotationAnimationInterface.nextFrame();
end;
    

function TBuildingLayer.calculateEfficiency: Integer;
begin
        Exit(Self.efficiencyPerLevel);
end;
    

function TBuildingLayer.getCost: Integer;
var
  total: Int64;
begin
        total := TRTSLayerUtil.getInstance().getCostExponential(Int64(Trunc(((Self.getLevel()) * (Self.getBuildingLevelCost())))));
        Exit(Integer(total));
end;
    

function TBuildingLayer.getDowngradeCost: Integer;
var
  downgradeCost: Int64;
begin
        downgradeCost := TRTSLayerUtil.getInstance().getCostExponential(Int64(Trunc(((((Self.getLevel()) - (1))) * (Self.getBuildingLevelCost())))));
        Self.logUtil.putF('Cost: ' + IntToStr(downgradeCost), Self, 'getDowngradeCost');
        Exit(((Integer(downgradeCost)) * (9)) div (10));
end;
    

function TBuildingLayer.getUpgradeCost: Integer;
var
  upgradeCost: Int64;
begin
        upgradeCost := TRTSLayerUtil.getInstance().getCostExponential(Int64(Trunc(((((Self.getLevel()) + (1))) * (Self.getBuildingLevelCost())))));
        Exit(Integer(upgradeCost));
end;
    

procedure TBuildingLayer.downgrade;
begin
        inherited downgrade();
        Self.setProductivity((Self.getProductivity()) - (1));
        Self.setEfficiency((Self.getEfficiency()) - (Self.calculateEfficiency()));
        Self.getHealthInterface().setMaxHealth((Self.getHealthInterface().getMaxHealth()) - (((((Self.getLevel()) + (1))) * (100))));
end;
    

procedure TBuildingLayer.upgrade;
begin
        inherited upgrade();
        Self.setProductivity((Self.getProductivity()) + (1));
        Self.setEfficiency((Self.getEfficiency()) + (Self.calculateEfficiency()));
        Self.getHealthInterface().setMaxHealth((Self.getHealthInterface().getMaxHealth()) + (((Self.getLevel()) * (100))));
end;
    

function TBuildingLayer.getBuildingLevelCost: Integer;
begin
        Exit(Self.buildingLevelCost);
end;
    

procedure TBuildingLayer.setBuildingLevelCost(buildingLevelCost: Integer);
begin
        Self.buildingLevelCost := buildingLevelCost;
end;
    

function TBuildingLayer.getProductivity: Integer;
begin
        Exit(Self.productivity);
end;
    

procedure TBuildingLayer.setProductivity(productivity: Integer);
begin
        Self.productivity := productivity;
end;
    

function TBuildingLayer.getEfficiency: Integer;
begin
        Exit(Self.efficiency);
end;
    

procedure TBuildingLayer.setEfficiency(efficiency: Integer);
begin
        Self.efficiency := efficiency;
end;
    

// throws Exception
procedure TBuildingLayer.generateMoveOutOfBuildAreaPaths;
var
  occupyList: TBasicArrayList;
  surroundList: TBasicArrayList;
  NO_DIRECTION: TDirection;
  geographicMapDirectionUtil: TGeographicMapDirectionUtil;
  pathsList: TBasicArrayList;
  occupyGeographicMapCellPosition: TGeographicMapCellPosition;
  surroundGeographicMapCellPosition: TGeographicMapCellPosition;
  list: TBasicArrayList;
  index: Integer;
  index2: Integer;
begin
        occupyList := Self.geographicMapCellPositionAreaBase.getOccupyingGeographicMapCellPositionList();
        surroundList := Self.geographicMapCellPositionAreaBase.getSurroundingGeographicMapCellPositionList();
        NO_DIRECTION := TDirectionFactory.getInstance().NO_DIRECTION;
        geographicMapDirectionUtil := TGeographicMapDirectionUtil.getInstance();
        
        
        
        
        for index2 := (occupyList.size()) - (1) downto 0 do begin
            pathsList := TBasicArrayListD.Create();
            occupyGeographicMapCellPosition := TGeographicMapCellPosition(occupyList.get(index2));
            for index := (surroundList.size()) - (1) downto 0 do begin
                surroundGeographicMapCellPosition := TGeographicMapCellPosition(surroundList.get(index));
                if (geographicMapDirectionUtil.getEightDirectionFromCellPositionToAdjacentCellPosition(surroundGeographicMapCellPosition, occupyGeographicMapCellPosition)) <> (NO_DIRECTION) then begin
                    list := TBasicArrayListS.Create(1);
                    list.add(surroundGeographicMapCellPosition);
                    pathsList.add(list);
                end;
            end;
            Self.pathsHashtable.put(occupyGeographicMapCellPosition, pathsList);
        end;
end;
    

function TBuildingLayer.getMoveOutOfBuildAreaPath(geographicMapCellPosition: TGeographicMapCellPosition): TBasicArrayList;
var
  pathsList: TBasicArrayList;
begin
        pathsList := TBasicArrayList(Self.pathsHashtable.get(geographicMapCellPosition));
        Exit(pathsList);
end;
    

function TBuildingLayer.getEndGeographicMapCellPositionList: TBasicArrayList;
begin
        Exit(Self.geographicMapCellPositionAreaBase.getSurroundingGeographicMapCellPositionList());
end;
    

function TBuildingLayer.shouldHandleStartSameAsEnd: Boolean;
begin
        Exit(False);
end;
    

procedure TBuildingLayer.paint(graphics: TGraphics);
begin
        if Self.isVisible() then begin
            inherited paint(graphics);
            Self.damageFloatersPaintableInterface.paint(graphics);
            Self.healthBar.paint(graphics);
        end;
end;
    

// throws Exception
procedure TBuildingLayer.damage(damage: Integer; damageType: Integer);
begin
        inherited damage(damage, damageType);
        Self.damageFloaters.add(damage);
        if (damage) > (0) then begin
            Self.getHealthInterface().damage(damage);
        end;
end;
    

// throws Exception
function TBuildingLayer.getDamage(damageType: Integer): Integer;
begin
        Exit(0);
end;
    

procedure TBuildingLayer.addVisibility;
var
  geographicMapCellPositionArea: TGeographicMapCellPositionAreaBase;
  occupyList: TBasicArrayList;
  surroundList: TBasicArrayList;
begin
        geographicMapCellPositionArea := Self.geographicMapCellPositionAreaBase;
        occupyList := geographicMapCellPositionArea.getOccupyingGeographicMapCellPositionList();
        TVisibleCellPositionsSingleton.getInstance().addStationaryCellPositions(occupyList);
        surroundList := geographicMapCellPositionArea.getSurroundingGeographicMapCellPositionList();
        TVisibleCellPositionsSingleton.getInstance().addStationaryCellPositions(surroundList);
end;
    

procedure TBuildingLayer.removeVisibility;
var
  occupyList: TBasicArrayList;
  surroundList: TBasicArrayList;
begin
        occupyList := Self.geographicMapCellPositionAreaBase.getOccupyingGeographicMapCellPositionList();
        TVisibleCellPositionsSingleton.getInstance().removeStationaryCellPositions(occupyList);
        surroundList := Self.geographicMapCellPositionAreaBase.getSurroundingGeographicMapCellPositionList();
        TVisibleCellPositionsSingleton.getInstance().removeStationaryCellPositions(surroundList);
end;
    

// throws Exception
procedure TBuildingLayer.setDestroyed(destroyed: Boolean);
var
  damage: Integer;
begin
        inherited setDestroyed(destroyed);
        if Self.isDestroyed() then begin
            TDropCellPositionHistory.getInstance().removeAll(Self);
            TTrackingEventHandler.getInstance().removeListener(Self);
            if Self.local then begin
                Self.removeVisibility();
            end;
            if not (not (Self.getHealthInterface().Finished)) then begin
                damage := Self.getHealthInterface().getMaxHealth();
                if (damage) > (10) then begin
                    TSecondaryPlayerQueueFactory.getInstance().add(TExplosionBasicSound.getInstance());
                    if (damage) < (100) then begin
                        Self.shakeListener.onSmallShakeEvent();
                        Self.vibration.vibrate(Self.duration, 0, 0);
                    end else if (damage) < (1000) then begin
                        Self.shakeListener.onMediumShakeEvent();
                        Self.vibration.vibrate((Self.duration) * (2), 0, 0);
                    end else if (damage) < (3000) then begin
                        Self.shakeListener.onLargeShakeEvent();
                        Self.vibration.vibrate((Self.duration) * (4), 0, 0);
                    end;
                end;
            end;
        end;
end;
    

function TBuildingLayer.createHudPaintable: TSelectionHudPaintable;
var
  buildingInfoHudPaintable: TBuildingInfoHudPaintable;
begin
        buildingInfoHudPaintable := TBuildingInfoHudPaintable.getInstance();
        buildingInfoHudPaintable.setBasicColorP(Self.allBinaryGameLayerManagerP.getForegroundBasicColor());
        buildingInfoHudPaintable.setRtsLayer(Self);
        Exit(buildingInfoHudPaintable);
end;
    

function TBuildingLayer.getHudPaintable: TSelectionHudPaintable;
var
  buildingInfoHudPaintable: TBuildingInfoHudPaintable;
begin
        buildingInfoHudPaintable := TBuildingInfoHudPaintable.getInstance();
        Exit(buildingInfoHudPaintable);
end;
    

function TBuildingLayer.getType: Integer;
begin
        Exit(TBuildingLayer.getStaticType());
end;
    

class function TBuildingLayer.getStaticType: Integer;
begin
        Exit(2);
end;

initialization

end.

