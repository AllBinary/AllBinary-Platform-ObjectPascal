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
// package org.allbinary.input.automation.actions.script.condition.processors.input
unit KeyboardActionScriptInput;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, BasicArrayList, BasicArrayListD, DomNodeHelper, DomSearchHelper, ModDomHelper, KeySingletonFactory, KeyUtil, StdUtil, LogUtil, StringMaker, CommonLabels, Document, Node, NodeList, KeyboardActionScriptInputJPanel, BasicProfileActionScriptInput, KeyboardActionScriptInputInterface;

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

  TKeyboardActionScriptInput = class(TBasicProfileActionScriptInput, IKeyboardActionScriptInputInterface)
  public
    logUtil: TLogUtil;
    keyArray: TArray<Integer>;
    keyboardActionScriptInputJPanel: TKeyboardActionScriptInputJPanel;
    press: Boolean;
    release: Boolean;
    delayBetweenKeys: Integer;
    class var NAME: string;
    procedure InitFields;
        constructor Create(node: TNode); overload;
        constructor Create; overload;
        function getDelayBetweenKeys: Integer; virtual;
        procedure setDelayBetweenKeys(delayBetweenKeys: Integer); virtual;
        function isPress: Boolean; virtual;
        procedure setPress(press: Boolean); virtual;
        function isRelease: Boolean; virtual;
        procedure setRelease(release: Boolean); virtual;
        function isNormal: Boolean; virtual;
        procedure setNormal; virtual;
        function getKeyArray: TArray<Integer>; virtual;
        procedure setKeyArray(keyArray: TArray<Integer>); virtual;
        procedure showDialog; virtual;
        function getText: string; overload; virtual;
        procedure setText(text: string); virtual;
        class function getText(integerArray: TArray<Integer>): string; overload; static;
        function integerArrayValue(text: string): TArray<Integer>;
        function toHashMap: TJavaHashMap; virtual;
        function toXmlNode(document: TDocument): TNode; virtual;
        procedure process(frame: Int64); virtual;
        procedure log; virtual;
        function toString: string; override;
  end;

implementation
uses
  KeyboardActionScriptInputData, KeyboardInputAutomationProcessor;



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


procedure TKeyboardActionScriptInput.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.keyArray := [TKeySingletonFactory.getInstance(TKeyEvent.VK_0)];
  
  
  
  
end;
    

constructor TKeyboardActionScriptInput.Create(node: TNode);
var
  actionNode: TNode;
  nodeList: TNodeList;
  vector: TBasicArrayList;
  childNode: TNode;
  value: string;
  time: string;
  keyString: string;
  index: Integer;
begin
        inherited Create(TKeyboardActionScriptInput.NAME, node);
        InitFields;
        Self.logUtil.putF(Self.commonStrings.START, Self, Self.commonStrings.CONSTRUCTOR_);
        actionNode := TDomSearchHelper.getNode(TKeyboardActionScriptInputData.NAME, node.getChildNodes());
        if (actionNode) <> (nil) then begin
            nodeList := actionNode.getChildNodes();
            vector := TBasicArrayListD.Create();
            for index := 0 to nodeList.getLength() - 1 do begin
                childNode := nodeList.item(index);
                if childNode.getNodeName().startsWith(TKeyboardActionScriptInputData.KEY) then begin
                    keyString := TDomNodeHelper.getTextNodeValue(childNode);
                    vector.add(IntToStr(keyString));
                end else if (childNode.getNodeName().compareTo(TKeyboardActionScriptInputData.DELAY_BETWEEN_KEYS)) = (0) then begin
                    time := TDomNodeHelper.getTextNodeValue(childNode);
                    Self.setDelayBetweenKeys(IntToStr(time).intValue());
                end else if (childNode.getNodeName().compareTo(TKeyboardActionScriptInputData.PRESS)) = (0) then begin
                    value := TDomNodeHelper.getTextNodeValue(childNode);
                    Self.setPress(BoolToStr(value, True));
                end else if (childNode.getNodeName().compareTo(TKeyboardActionScriptInputData.RELEASE)) = (0) then begin
                    value := TDomNodeHelper.getTextNodeValue(childNode);
                    Self.setRelease(BoolToStr(value, True));
                end else begin
                    raise SysUtils.Exception.Create('Action Script Input Unknown Node');
                end;
            end;
            Self.setKeyArray(TArray<Integer>(vector.toArrayType(TJava.NewArray<Integer>(vector.size()))));
        end else begin
            raise SysUtils.Exception.Create('Action Script Input Node Null');
        end;
        Self.setAllowsChildren(False);
        if (not (Self.isPress())) and (not (Self.isRelease())) then begin
            Self.setNormal();
        end;
        Self.keyboardActionScriptInputJPanel := TKeyboardActionScriptInputJPanel.Create(Self);
end;
    

constructor TKeyboardActionScriptInput.Create;
begin
        inherited Create(TKeyboardActionScriptInput.NAME);
        InitFields;
        if (not (Self.isPress())) and (not (Self.isRelease())) then begin
            Self.setNormal();
        end;
        Self.setAllowsChildren(False);
        Self.setTime(120);
        Self.keyboardActionScriptInputJPanel := TKeyboardActionScriptInputJPanel.Create(Self);
end;
    

function TKeyboardActionScriptInput.getDelayBetweenKeys: Integer;
begin
        Exit(Self.delayBetweenKeys);
end;
    

procedure TKeyboardActionScriptInput.setDelayBetweenKeys(delayBetweenKeys: Integer);
begin
        Self.delayBetweenKeys := delayBetweenKeys;
end;
    

function TKeyboardActionScriptInput.isPress: Boolean;
begin
        Exit(Self.press);
end;
    

procedure TKeyboardActionScriptInput.setPress(press: Boolean);
begin
        Self.press := press;
end;
    

function TKeyboardActionScriptInput.isRelease: Boolean;
begin
        Exit(Self.release);
end;
    

procedure TKeyboardActionScriptInput.setRelease(release: Boolean);
begin
        Self.release := release;
end;
    

function TKeyboardActionScriptInput.isNormal: Boolean;
begin
        Exit((Self.isRelease()) and (Self.isPress()));
end;
    

procedure TKeyboardActionScriptInput.setNormal;
begin
        Self.setPress(True);
        Self.setRelease(True);
end;
    

function TKeyboardActionScriptInput.getKeyArray: TArray<Integer>;
begin
        Exit(Self.keyArray);
end;
    

procedure TKeyboardActionScriptInput.setKeyArray(keyArray: TArray<Integer>);
begin
        if (keyArray) <> (nil) then begin
            Self.logUtil.putF((TCommonLabels.getInstance().START) + (System.Length(keyArray)), Self, 'setKeyArray');
        end;
        Self.keyArray := keyArray;
end;
    

procedure TKeyboardActionScriptInput.showDialog;
begin
        Self.keyboardActionScriptInputJPanel.getKeyActionJDialog().setVisible(True);
end;
    

function TKeyboardActionScriptInput.getText: string;
begin
        Exit(Self.getText(Self.getKeyArray()));
end;
    

procedure TKeyboardActionScriptInput.setText(text: string);
var
  integerArray: TArray<Integer>;
begin
        Self.logUtil.putF(TJava.ToString(TCommonLabels.getInstance().START) + text, Self, 'setText');
        integerArray := Self.integerArrayValue(text);
        Self.setKeyArray(integerArray);
end;
    

class function TKeyboardActionScriptInput.getText(integerArray: TArray<Integer>): string;
var
  index: Integer;
  stringBuffer: TStringMaker;
  nextInteger: Integer;
begin
        index := 0;
        stringBuffer := TStringMaker.Create();
        while (index) < (System.Length(integerArray)) do begin
            nextInteger := integerArray[index];
            if TKeyUtil.isNormallyDisplayed(nextInteger) then begin
                stringBuffer.append(TKeyEvent.getKeyText(nextInteger));
            end else begin
                stringBuffer.append('&#' + IntToStr(nextInteger) + ';');
            end;
            Inc(index);
        end;
        Exit(stringBuffer.toString());
end;
    

function TKeyboardActionScriptInput.integerArrayValue(text: string): TArray<Integer>;
var
  vector: TBasicArrayList;
  index: Integer;
  aChar: WideChar;
  endIndex: Integer;
  nextCharString: string;
  integerArray: TArray<Integer>;
begin
        Self.logUtil.putF(TJava.ToString(TCommonLabels.getInstance().START) + text, Self, 'integerArrayValue');
        vector := TBasicArrayListD.Create();
        index := 0;
        while (index) < (System.Length(text)) do begin
            aChar := text[(index) + 1];
            if (aChar) = ('&') then begin
                if (text[((index) + (1)) + 1]) = ('#') then begin
                    endIndex := text.indexOf(';', (index) + (1));
                    if (endIndex) <> (-1) then begin
                        nextCharString := Copy(text, ((index) + (2)) + 1, (endIndex) - ((index) + (2)));
                        Self.logUtil.putF(TJava.ToString(TCommonLabels.getInstance().NEXT) + ' Char String: ' + nextCharString, Self, 'integerArrayValue');
                        vector.add(IntToStr(Copy(nextCharString, (index) + 1, (System.Length(nextCharString)) - (index))));
                        index := ((index) + (System.Length(nextCharString))) + (3);
                        Continue;
                    end;
                end;
            end;
            vector.add(TKeySingletonFactory.getHashtable().get(TJava.ToString(aChar)));
            Inc(index);
        end;
        integerArray := TArray<Integer>(vector.toArrayType(TJava.NewArray<Integer>(vector.size())));
        Exit(integerArray);
end;
    

function TKeyboardActionScriptInput.toHashMap: TJavaHashMap;
var
  hashMap: TJavaHashMap;
  index: Integer;
begin
        hashMap := TStdUtil.getInstance().createHashMap();
        for index := 0 to System.Length(Self.getKeyArray()) - 1 do begin
            hashMap.put((TKeyboardActionScriptInputData.KEY) + (index), IntToStr(Self.getKeyArray()[index]));
        end;
        hashMap.put(TKeyboardActionScriptInputData.DELAY_BETWEEN_KEYS, IntToStr(Self.getDelayBetweenKeys()));
        hashMap.put(TKeyboardActionScriptInputData.PRESS, BoolToStr(Self.isPress(), True));
        hashMap.put(TKeyboardActionScriptInputData.RELEASE, BoolToStr(Self.isRelease(), True));
        Self.logUtil.putF('HashMap: ' + hashMap.toString(), Self, 'toHashMap()');
        Exit(hashMap);
end;
    

// throws Exception
function TKeyboardActionScriptInput.toXmlNode(document: TDocument): TNode;
var
  node: TNode;
begin
        node := inherited toXmlNode(document);
        node.appendChild(TModDomHelper.createNodeWithValueNodes(document, TKeyboardActionScriptInputData.NAME, Self.toHashMap()));
        Exit(node);
end;
    

// throws Exception
procedure TKeyboardActionScriptInput.process(frame: Int64);
begin
        TKeyboardInputAutomationProcessor.process(Self);
end;
    

procedure TKeyboardActionScriptInput.log;
begin
        Self.logUtil.putF(Self.toString(), Self, 'log');
end;
    

function TKeyboardActionScriptInput.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(inherited toString());
        stringBuffer.append(' Text: ');
        stringBuffer.append(Self.getText());
        stringBuffer.append(' isPress: ');
        stringBuffer.appendboolean(Self.isPress());
        stringBuffer.append(' isRelease: ');
        stringBuffer.appendboolean(Self.isRelease());
        stringBuffer.append(' Between Key Delay: ');
        stringBuffer.appendint(Self.getDelayBetweenKeys());
        Exit(stringBuffer.toString());
end;

initialization
  TKeyboardActionScriptInput.NAME := 'Keyboard';

end.

