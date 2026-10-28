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
unit MouseActionScriptInputJPanel;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, InputRobot, InputRobotFactory, TempInputRobotNames, LogUtil, CommonLabels, CommonPhoneStrings, CommonStrings, MouseActionScriptInputInterface, JDialog, ActionEvent, JCheckBox, JComboBox, JLabel, JButton, JTextField, JPanel;

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

  TMouseActionScriptInputJPanel = class(TJPanel)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    mouseActionScriptInputInterface: IMouseActionScriptInputInterface;
    button1JCheckBox: TJCheckBox;
    button2JCheckBox: TJCheckBox;
    inputAutomationTypeJComboBox: TJComboBox;
    inputTypeJLabel: TJLabel;
    jLabel1: TJLabel;
    jLabel2: TJLabel;
    jLabel3: TJLabel;
    jLabel4: TJLabel;
    jLabel5: TJLabel;
    jLabel6: TJLabel;
    mouseActionJButton: TJButton;
    mouseActionJDialog: TJDialog;
    mouseDelayJTextField: TJTextField;
    mouseXJTextField: TJTextField;
    mouseYJTextField: TJTextField;
    okJButton: TJButton;
    titleJLabel: TJLabel;
    procedure InitFields;
        constructor Create(mouseActionScriptInputInterface: IMouseActionScriptInputInterface);
        procedure set_;
        procedure updateInputType;
        procedure update;
        function getMouseActionJDialog: TJDialog; virtual;
        procedure setMouseActionJDialog(mouseActionJDialog: TJDialog); virtual;
        procedure initComponents;
        procedure button2JCheckBoxActionPerformed(evt: TActionEvent);
        procedure okJButtonActionPerformed(evt: TActionEvent);
        procedure mouseActionJButtonActionPerformed(evt: TActionEvent);
  end;

implementation
uses
  DefaultComboBoxModel, ComboBoxModel, Dimension, ActionListener, Insets, GroupLayout, Short;



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


procedure TMouseActionScriptInputJPanel.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end;
    

constructor TMouseActionScriptInputJPanel.Create(mouseActionScriptInputInterface: IMouseActionScriptInputInterface);
var
  defaultComboBoxModel: TDefaultComboBoxModel;
begin
    inherited Create;
    InitFields;
        Self.logUtil.putF((TCommonLabels.getInstance().START) + (mouseActionScriptInputInterface), Self, Self.commonStrings.CONSTRUCTOR_);
        Self.initComponents();
        Self.mouseActionScriptInputInterface := mouseActionScriptInputInterface;
        defaultComboBoxModel := TDefaultComboBoxModel.Create();
        defaultComboBoxModel.addElement(TTempInputRobotNames.LOW_NAME);
        defaultComboBoxModel.addElement(TTempInputRobotNames.SYS_NAME);
        defaultComboBoxModel.addElement(TInputRobot.NAME);
        Self.inputAutomationTypeJComboBox.setModel(defaultComboBoxModel);
        Self.set_();
end;
    

procedure TMouseActionScriptInputJPanel.set_;
var
  inputTypeComboBoxModel: TComboBoxModel;
begin
        inputTypeComboBoxModel := Self.inputAutomationTypeJComboBox.getModel();
        inputTypeComboBoxModel.setSelectedItem(Self.mouseActionScriptInputInterface.getInputRobotInterface().getName());
        if (((Self.mouseActionScriptInputInterface.getButtonClicks()) and (TInputEvent.BUTTON1_MASK))) <> (0) then begin
            Self.button1JCheckBox.setSelected(True);
        end else begin
            Self.button1JCheckBox.setSelected(False);
        end;
        if (((Self.mouseActionScriptInputInterface.getButtonClicks()) and (TInputEvent.BUTTON2_MASK))) <> (0) then begin
            Self.button2JCheckBox.setSelected(True);
        end else begin
            Self.button2JCheckBox.setSelected(False);
        end;
        Self.mouseDelayJTextField.setText(IntToStr(Self.mouseActionScriptInputInterface.getTime()));
        Self.mouseXJTextField.setText(IntToStr(Self.mouseActionScriptInputInterface.getPoint().x));
        Self.mouseYJTextField.setText(IntToStr(Self.mouseActionScriptInputInterface.getPoint().y));
        Self.mouseActionScriptInputInterface.log();
end;
    

// throws Exception
procedure TMouseActionScriptInputJPanel.updateInputType;
var
  comboBoxModel: TComboBoxModel;
  selectedItem: string;
begin
        comboBoxModel := Self.inputAutomationTypeJComboBox.getModel();
        selectedItem := string(comboBoxModel.getSelectedItem());
        if not (nil.isEmpty(selectedItem)) then begin
            Self.mouseActionScriptInputInterface.setInputRobotInterface(TInputRobotFactory.getInstance().get(selectedItem));
        end;
end;
    

// throws Exception
procedure TMouseActionScriptInputJPanel.update;
var
  mouseXString: string;
  mouseYString: string;
begin
        Self.updateInputType();
        Self.mouseActionScriptInputInterface.setTime(IntToStr(Self.mouseDelayJTextField.getText()));
        Self.logUtil.putF('Button State: ' + TJava.ToString(Self.mouseActionScriptInputInterface.getButtonClicks()), Self, 'update');
        if Self.button1JCheckBox.isSelected() then begin
            if (((Self.mouseActionScriptInputInterface.getButtonClicks()) and (TInputEvent.BUTTON1_MASK))) = (0) then begin
                Self.mouseActionScriptInputInterface.setButtonClicks((Self.mouseActionScriptInputInterface.getButtonClicks()) or (TInputEvent.BUTTON1_MASK));
                Self.logUtil.putF('Button 1 Selected: ' + TJava.ToString(Self.mouseActionScriptInputInterface.getButtonClicks()), Self, 'update');
            end;
        end else begin
            if (((Self.mouseActionScriptInputInterface.getButtonClicks()) and (TInputEvent.BUTTON1_MASK))) <> (0) then begin
                Self.mouseActionScriptInputInterface.setButtonClicks((Self.mouseActionScriptInputInterface.getButtonClicks()) xor (TInputEvent.BUTTON1_MASK));
                Self.logUtil.putF('Button 1 Deselected: ' + TJava.ToString(Self.mouseActionScriptInputInterface.getButtonClicks()), Self, 'update');
            end;
        end;
        if Self.button2JCheckBox.isSelected() then begin
            if (((Self.mouseActionScriptInputInterface.getButtonClicks()) and (TInputEvent.BUTTON2_MASK))) = (0) then begin
                Self.mouseActionScriptInputInterface.setButtonClicks((Self.mouseActionScriptInputInterface.getButtonClicks()) or (TInputEvent.BUTTON2_MASK));
                Self.logUtil.putF('Button 2 Selected: ' + TJava.ToString(Self.mouseActionScriptInputInterface.getButtonClicks()), Self, 'update');
            end;
        end else begin
            if (((Self.mouseActionScriptInputInterface.getButtonClicks()) and (TInputEvent.BUTTON2_MASK))) <> (0) then begin
                Self.mouseActionScriptInputInterface.setButtonClicks((Self.mouseActionScriptInputInterface.getButtonClicks()) xor (TInputEvent.BUTTON2_MASK));
                Self.logUtil.putF('Button 2 Deselected: ' + TJava.ToString(Self.mouseActionScriptInputInterface.getButtonClicks()), Self, 'update');
            end;
        end;
        mouseXString := Self.mouseXJTextField.getText();
        if (not (nil.isEmpty(mouseXString))) and (nil.isNumber(mouseXString)) then begin
            Self.mouseActionScriptInputInterface.getPoint().x := StrToInt(mouseXString);
        end;
        mouseYString := Self.mouseYJTextField.getText();
        if (not (nil.isEmpty(mouseYString))) and (nil.isNumber(mouseYString)) then begin
            Self.mouseActionScriptInputInterface.getPoint().y := StrToInt(mouseYString);
        end;
        Self.mouseActionScriptInputInterface.log();
end;
    

function TMouseActionScriptInputJPanel.getMouseActionJDialog: TJDialog;
begin
        Exit(Self.mouseActionJDialog);
end;
    

procedure TMouseActionScriptInputJPanel.setMouseActionJDialog(mouseActionJDialog: TJDialog);
begin
        Self.mouseActionJDialog := mouseActionJDialog;
end;
    

procedure TMouseActionScriptInputJPanel.initComponents;
var
  mouseActionJDialogLayout: TGroupLayout;
  layout: TGroupLayout;
begin
        Self.mouseActionJDialog := TJDialog.Create();
        Self.titleJLabel := TJLabel.Create();
        Self.okJButton := TJButton.Create();
        Self.jLabel2 := TJLabel.Create();
        Self.jLabel3 := TJLabel.Create();
        Self.button1JCheckBox := TJCheckBox.Create();
        Self.button2JCheckBox := TJCheckBox.Create();
        Self.jLabel4 := TJLabel.Create();
        Self.mouseXJTextField := TJTextField.Create();
        Self.jLabel5 := TJLabel.Create();
        Self.mouseYJTextField := TJTextField.Create();
        Self.inputTypeJLabel := TJLabel.Create();
        Self.inputAutomationTypeJComboBox := TJComboBox.Create();
        Self.jLabel6 := TJLabel.Create();
        Self.mouseDelayJTextField := TJTextField.Create();
        Self.mouseActionJButton := TJButton.Create();
        Self.jLabel1 := TJLabel.Create();
        Self.mouseActionJDialog.setMinimumSize(TDimension.Create(275, 185));
        Self.titleJLabel.setText('Mouse Input Options');
        Self.okJButton.setText('OK');
        Self.okJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.okJButtonActionPerformed(evt);
end;
*));
        Self.jLabel2.setText('Buttons:');
        Self.jLabel3.setText('Move To:');
        Self.button1JCheckBox.setText(TCommonPhoneStrings.getInstance().ONE);
        Self.button1JCheckBox.setBorder(Tjavax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        Self.button1JCheckBox.setMargin(TInsets.Create(0, 0, 0, 0));
        Self.button2JCheckBox.setText(TCommonPhoneStrings.getInstance().TWO);
        Self.button2JCheckBox.setBorder(Tjavax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        Self.button2JCheckBox.setMargin(TInsets.Create(0, 0, 0, 0));
        Self.button2JCheckBox.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.button2JCheckBoxActionPerformed(evt);
end;
*));
        Self.jLabel4.setText('x:');
        Self.mouseXJTextField.setText(TCommonPhoneStrings.getInstance().ZERO);
        Self.jLabel5.setText('y:');
        Self.mouseYJTextField.setText(TCommonPhoneStrings.getInstance().ZERO);
        Self.inputTypeJLabel.setText('Input Type:');
        Self.jLabel6.setText('Delay:');
        Self.mouseDelayJTextField.setText('100');
        mouseActionJDialogLayout := TGroupLayout.Create(Self.mouseActionJDialog.getContentPane());
        Self.mouseActionJDialog.getContentPane().setLayout(mouseActionJDialogLayout);
        mouseActionJDialogLayout.setHorizontalGroup(mouseActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(mouseActionJDialogLayout.createSequentialGroup().addContainerGap().addGroup(mouseActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.inputTypeJLabel).addGroup(Tjavax.swing.GroupLayout.Alignment.TRAILING, mouseActionJDialogLayout.createSequentialGroup().addGroup(mouseActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(Tjavax.swing.GroupLayout.Alignment.TRAILING, mouseActionJDialogLayout.createSequentialGroup().addComponent(Self.jLabel2).addGap(25, 25, 25)).addGroup(mouseActionJDialogLayout.createSequentialGroup().addGroup(mouseActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.jLabel3).addComponent(Self.jLabel6)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED))).addGroup(mouseActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.mouseDelayJTextField, Tjavax.swing.GroupLayout.Alignment.TRAILING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 154, TShort.MAX_VALUE).addGroup(mouseActionJDialogLayout.createSequentialGroup().addComponent(Self.titleJLabel).addGap(45, 45, 45)).addGroup(Tjavax.swing.GroupLayout.Alignment.TRAILING, mouseActionJDialogLayout.createSequentialGroup().addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.inputAutomationTypeJComboBox, 0, 154, TShort.MAX_VALUE)).addGroup(mouseActionJDialogLayout.createSequentialGroup().addComponent(Self.button1JCheckBox).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.button2JCheckBox)).addGroup(mouseActionJDialogLayout.createSequentialGroup().addGroup(mouseActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.TRAILING).addGroup(mouseActionJDialogLayout.createSequentialGroup().addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.okJButton)).addGroup(mouseActionJDialogLayout.createSequentialGroup().addComponent(Self.jLabel4).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED, 5, TShort.MAX_VALUE).addComponent(Self.mouseXJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 59, Tjavax.swing.GroupLayout.PREFERRED_SIZE))).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.jLabel5).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.mouseYJTextField, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 62, TShort.MAX_VALUE))))).addContainerGap()));
        mouseActionJDialogLayout.setVerticalGroup(mouseActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(mouseActionJDialogLayout.createSequentialGroup().addComponent(Self.titleJLabel).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(mouseActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.inputTypeJLabel).addComponent(Self.inputAutomationTypeJComboBox, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(mouseActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.jLabel2, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 15, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addGroup(mouseActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.button1JCheckBox).addComponent(Self.button2JCheckBox))).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(mouseActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.jLabel6).addComponent(Self.mouseDelayJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(mouseActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.jLabel3).addComponent(Self.jLabel4).addComponent(Self.jLabel5).addComponent(Self.mouseYJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addComponent(Self.mouseXJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED, Tjavax.swing.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE).addComponent(Self.okJButton).addContainerGap()));
        Self.setMinimumSize(TDimension.Create(100, 0));
        Self.mouseActionJButton.setText('Edit');
        Self.mouseActionJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.mouseActionJButtonActionPerformed(evt);
end;
*));
        Self.jLabel1.setText('Mouse:');
        layout := TGroupLayout.Create(Self);
        Self.setLayout(layout);
        layout.setHorizontalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(Self.jLabel1).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED, 36, TShort.MAX_VALUE).addComponent(Self.mouseActionJButton)));
        layout.setVerticalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.jLabel1).addComponent(Self.mouseActionJButton)));
end;
    

procedure TMouseActionScriptInputJPanel.button2JCheckBoxActionPerformed(evt: TActionEvent);
begin
end;
    

procedure TMouseActionScriptInputJPanel.okJButtonActionPerformed(evt: TActionEvent);
begin
        try
            Self.update();
            Self.getMouseActionJDialog().setVisible(False);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'okButtonActionPerformed', e);
            end;
        end;
end;
    

procedure TMouseActionScriptInputJPanel.mouseActionJButtonActionPerformed(evt: TActionEvent);
begin
        Self.getMouseActionJDialog().setVisible(True);
end;

initialization

end.

