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
// package org.allbinary.game.displayable.canvas
unit GameInputMappingCanvas;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, GameCommandsFactory, GameKey, GameKeyFactory, Input, InputFactory, PlatformInputMappingFactory, InputMappingInterface, PersistentInputMapping, AllBinaryGameLayerManager, ColorFillBasePaintable, ColorFillPaintableFactory, HelpPaintable, InputMappingHelpPaintable, ProcessPaintable, StringMaker, StringUtil, AbeClientInformationInterface, BasicArrayList, GameCommandCanvas;

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

  TGameInputMappingCanvas = class(TGameCommandCanvas, IInputMappingInterface)
  public
    paintable: TProcessPaintable;
    helpPaintable: TInputMappingHelpPaintable;
    colorFillPaintable: TColorFillBasePaintable;
    inputMapping: TPersistentInputMapping;
    NONE: TGameKey;
    abeClientInformation: IAbeClientInformationInterface;
    selectedGameKey: TGameKey;
    selectedInput: TInput;
    inputFactory: TInputFactory;
    class var NAME: string;
    class var DISPLAY: TCommand;
    class var DEFAULT: TCommand;
    procedure InitFields;
        constructor Create(abeClientInformation: IAbeClientInformationInterface; commandListener: TCommandListener; allBinaryGameLayerManager: TAllBinaryGameLayerManager; helpPaintable: THelpPaintable);
        procedure close; virtual;
        procedure initCommands(cmdListener: TCommandListener); virtual;
        procedure keyPressed(keyCode: Integer); virtual;
        procedure keyReleased(keyCode: Integer); virtual;
        procedure keyRepeated(keyCode: Integer); virtual;
        procedure keyPressedByDevice(keyCode: Integer; deviceId: Integer); virtual;
        procedure addGameKey(keyCode: Integer; repeated: Boolean);
        procedure processInputMapping(gameKey: TGameKey; input: TInput); virtual;
        procedure setSelectedAction(gameKey: TGameKey);
        procedure gameActionCrud(gameKey: TGameKey; input: TInput);
        procedure addNewMapping(gameKey: TGameKey; input: TInput);
        procedure deleteCurrentMapping;
        procedure setDefault; virtual;
        procedure update; virtual;
        procedure paint(graphics: TGraphics); virtual;
  end;

implementation
uses
  GameInputMappingInstructionsCanvas;



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


procedure TGameInputMappingCanvas.InitFields;
begin
  
  
  
  
  Self.NONE := TGameKeyFactory.getInstance().NONE;
  
  Self.selectedGameKey := Self.NONE;
  Self.selectedInput := Self.NONE;
  Self.inputFactory := TInputFactory.getInstance();
end;
    

constructor TGameInputMappingCanvas.Create(abeClientInformation: IAbeClientInformationInterface; commandListener: TCommandListener; allBinaryGameLayerManager: TAllBinaryGameLayerManager; helpPaintable: THelpPaintable);
begin
        inherited Create(commandListener, TGameInputMappingCanvas.NAME, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor());
        InitFields;
        Self.logUtil.putF(Self.commonStrings.START, Self, Self.commonStrings.CONSTRUCTOR_);
        if (helpPaintable) = (nil) then begin
            raise SysUtils.Exception.Create('Help Paintable Exception');
        end;
        Self.abeClientInformation := abeClientInformation;
        Self.helpPaintable := TInputMappingHelpPaintable(helpPaintable);
        Self.inputMapping := TPlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance();
        Self.paintable := TProcessPaintable.Create();
        Self.colorFillPaintable := TColorFillPaintableFactory.getInstance().getInstance(allBinaryGameLayerManager.getBackgroundBasicColor(), False);
end;
    

// throws Exception
procedure TGameInputMappingCanvas.close;
begin
        inherited close();
        Self.paintable.process();
        Self.selectedGameKey := Self.NONE;
        Self.selectedInput := Self.NONE;
        Self.update();
end;
    

procedure TGameInputMappingCanvas.initCommands(cmdListener: TCommandListener);
begin
        Self.removeAllCommands();
        Self.addCommand(TGameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS);
        Self.addCommand(TGameInputMappingCanvas.DEFAULT);
        Self.addCommand(TGameInputMappingInstructionsCanvas.DISPLAY);
        Self.setCommandListener(cmdListener);
end;
    

procedure TGameInputMappingCanvas.keyPressed(keyCode: Integer);
begin
        Self.keyPressedByDevice(keyCode, 0);
end;
    

procedure TGameInputMappingCanvas.keyReleased(keyCode: Integer);
begin
        Self.keyReleasedByDevice(keyCode, 0);
end;
    

procedure TGameInputMappingCanvas.keyRepeated(keyCode: Integer);
begin
        Self.keyRepeatedByDevice(keyCode, 0);
end;
    

procedure TGameInputMappingCanvas.keyPressedByDevice(keyCode: Integer; deviceId: Integer);
begin
        Self.addGameKey(keyCode, False);
        inherited keyPressedByDevice(keyCode, 0);
end;
    

procedure TGameInputMappingCanvas.addGameKey(keyCode: Integer; repeated: Boolean);
var
  gameKey: TGameKey;
  input: TInput;
begin
        try
            Self.logUtil.putF(TStringMaker.Create().append('Raw Device Key Code: ').append(IntToHex(keyCode)).toString(), Self, Self.gameInputStrings.ADD_KEY_EVENT);
            gameKey := Self.inputToGameKeyMapping.getInstanceForCanvas(Self, keyCode);
            input := Self.inputFactory.getInstanceById(keyCode);
            Self.processInputMapping(gameKey, input);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put('Key Event Error', Self, Self.gameInputStrings.ADD_KEY_EVENT, e);
            end;
        end;
end;
    

// throws Exception
procedure TGameInputMappingCanvas.processInputMapping(gameKey: TGameKey; input: TInput);
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('Start Passed GameKey: ');
        stringBuffer.append(Self.stringUtil.toString(gameKey));
        stringBuffer.append(' Input: ');
        stringBuffer.append(Self.stringUtil.toString(input));
        Self.logUtil.putF(stringBuffer.toString(), Self, Self.commonStrings.PROCESS);
        if (Self.selectedGameKey) <> (Self.NONE) then begin
            Self.gameActionCrud(gameKey, input);
        end else begin
            Self.setSelectedAction(gameKey);
        end;
end;
    

procedure TGameInputMappingCanvas.setSelectedAction(gameKey: TGameKey);
begin
        Self.logUtil.putF(TStringMaker.Create().append('Selected GameKey: ').append(Self.stringUtil.toString(gameKey)).toString(), Self, 'setSelectedAction');
        Self.selectedGameKey := gameKey;
        Self.selectedInput := Self.NONE;
        Self.helpPaintable.update(Self.selectedGameKey, Self.selectedInput);
        Self.repaintBehavior.onChangeRepaint(Self);
end;
    

// throws Exception
procedure TGameInputMappingCanvas.gameActionCrud(gameKey: TGameKey; input: TInput);
var
  stringBuffer: TStringMaker;
  list: TBasicArrayList;
  isInputAlreadyMappedToSelectedAction: Boolean;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('Start GameKey: ');
        stringBuffer.append(Self.stringUtil.toString(Self.selectedGameKey));
        stringBuffer.append(' Input: ');
        stringBuffer.append(Self.stringUtil.toString(Self.selectedInput));
        Self.logUtil.putF(stringBuffer.toString(), Self, 'gameActionCrud');
        if (Self.selectedInput) = (Self.NONE) then begin
            list := Self.inputMapping.getInputMapping().getMappedInput(Self.selectedGameKey);
            isInputAlreadyMappedToSelectedAction := list.contains(input);
            if isInputAlreadyMappedToSelectedAction then begin
                Self.logUtil.putF(TStringMaker.Create().append('Already Mapped Input: ').append(Self.stringUtil.toString(input)).toString(), Self, 'gameActionCrud');
                Self.selectedInput := input;
                Self.helpPaintable.update(Self.selectedGameKey, Self.selectedInput);
                Self.repaintBehavior.onChangeRepaint(Self);
            end else begin
                Self.addNewMapping(gameKey, input);
            end;
        end else if Self.inputMapping.isDelete(input) then begin
            Self.deleteCurrentMapping();
        end else begin
            Self.setSelectedAction(gameKey);
        end;
end;
    

// throws Exception
procedure TGameInputMappingCanvas.addNewMapping(gameKey: TGameKey; input: TInput);
var
  METHOD_NAME: string;
  isInputAlreadyMapped: Boolean;
  stringBuffer: TStringMaker;
begin
        METHOD_NAME := 'addNewMapping';
        Self.logUtil.putF(Self.commonStrings.START, Self, METHOD_NAME);
        isInputAlreadyMapped := Self.inputMapping.getInputMapping().isMapped(input);
        if (not (isInputAlreadyMapped)) and (not (Self.inputMapping.isSystemInput(input))) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Add Key Mapping : GameKey: ');
            stringBuffer.append(Self.stringUtil.toString(Self.selectedGameKey));
            stringBuffer.append(' Input: ');
            stringBuffer.append(Self.stringUtil.toString(Self.selectedInput));
            Self.logUtil.putF(stringBuffer.toString(), Self, METHOD_NAME);
            Self.inputMapping.getInputMapping().add(Self.selectedGameKey, input);
            Self.selectedInput := input;
            Self.update();
        end else begin
            Self.logUtil.putF('Unable to add Mapping since one already exists or is MENU, HOME, or BACK key and setting selected action to what it is already mapped to', Self, METHOD_NAME);
            Self.setSelectedAction(gameKey);
        end;
end;
    

// throws Exception
procedure TGameInputMappingCanvas.deleteCurrentMapping;
var
  METHOD_NAME: string;
  list: TBasicArrayList;
  stringBuffer: TStringMaker;
begin
        METHOD_NAME := 'deleteCurrentMapping';
        list := Self.inputMapping.getInputMapping().getMappedInput(Self.selectedGameKey);
        if (list.size()) > (1) then begin
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Start GameKey: ');
            stringBuffer.append('Remove Key Mapping: GameKey: ');
            stringBuffer.append(Self.stringUtil.toString(Self.selectedGameKey));
            stringBuffer.append(' Input: ');
            stringBuffer.append(Self.stringUtil.toString(Self.selectedInput));
            Self.logUtil.putF(stringBuffer.toString(), Self, METHOD_NAME);
            Self.inputMapping.getInputMapping().remove(Self.selectedGameKey, Self.selectedInput);
            Self.selectedInput := Self.NONE;
            Self.update();
        end else begin
            Self.logUtil.putF('Can''t Remove Last Key Mapping', Self, METHOD_NAME);
        end;
end;
    

// throws Exception
procedure TGameInputMappingCanvas.setDefault;
begin
        Self.inputMapping.setDefault(Self.abeClientInformation);
        Self.helpPaintable.update(Self.NONE, Self.NONE);
        Self.repaintBehavior.onChangeRepaint(Self);
end;
    

// throws Exception
procedure TGameInputMappingCanvas.update;
begin
        Self.inputMapping.update(Self.abeClientInformation);
        Self.helpPaintable.update(Self.selectedGameKey, Self.selectedInput);
        Self.repaintBehavior.onChangeRepaint(Self);
end;
    

procedure TGameInputMappingCanvas.paint(graphics: TGraphics);
begin
        Self.colorFillPaintable.paint(graphics);
        Self.helpPaintable.paint(graphics);
        Self.paintable.paint(graphics);
        inherited paint(graphics);
end;

initialization
  TGameInputMappingCanvas.NAME := 'GameInputMappingCanvas';
  TGameInputMappingCanvas.DISPLAY := TCommand.Create('Controls', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 2);
  TGameInputMappingCanvas.DEFAULT := TCommand.Create('Default', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 2);

end.

