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
unit KeyboardActionScriptInputJPanel;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, KeySingletonFactory, InputRobot, InputRobotFactory, TempInputRobotNames, LogUtil, CommonPhoneStrings, CommonStrings, KeyboardActionScriptInputInterface, JDialog, ActionEvent, JLabel, JTextField, JComboBox, JPanel, JButton, JRadioButton;

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

  TKeyboardActionScriptInputJPanel = class(TJPanel)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    keyActionScriptInputInterface: IKeyboardActionScriptInputInterface;
    addKeyJLabel: TJLabel;
    delayBetweenJLabel: TJLabel;
    delayJTextField: TJTextField;
    holdTimeJLabel: TJLabel;
    inputAutomationTypeJComboBox: TJComboBox;
    inputTypeJLabel: TJLabel;
    jLabel1: TJLabel;
    jPanel1: TJPanel;
    keyActionJButton: TJButton;
    keyActionJDialog: TJDialog;
    keyIntegerJComboBox: TJComboBox;
    keyNameJComboBox: TJComboBox;
    normalJRadioButton: TJRadioButton;
    okJButton: TJButton;
    pressJRadioButton: TJRadioButton;
    releaseJRadioButton: TJRadioButton;
    sequenceJRadioButton: TJRadioButton;
    simultaneousJRadioButton: TJRadioButton;
    testJLabel: TJLabel;
    textJTextField: TJTextField;
    timeJTextField: TJTextField;
    titleJLabel: TJLabel;
    procedure InitFields;
        constructor Create(keyActionScriptInputInterface: IKeyboardActionScriptInputInterface);
        procedure set_;
        procedure updateInputType;
        function getSelectedKey: Integer;
        procedure updateKeys;
        procedure update;
        function getKeyActionJDialog: TJDialog; virtual;
        procedure setKeyActionJDialog(keyActionJDialog: TJDialog); virtual;
        procedure initComponents;
        procedure prependText(integer_: Integer);
        procedure keyIntegerJComboBoxActionPerformed(evt: TActionEvent);
        procedure sequenceJRadioButtonActionPerformed(evt: TActionEvent);
        procedure simultaneousJRadioButtonActionPerformed(evt: TActionEvent);
        procedure keyNameJComboBoxActionPerformed(evt: TActionEvent);
        procedure okJButtonActionPerformed(evt: TActionEvent);
        procedure keyActionJButtonActionPerformed(evt: TActionEvent);
        procedure normalJRadioButtonActionPerformed(evt: TActionEvent);
        procedure releaseJRadioButtonActionPerformed(evt: TActionEvent);
        procedure pressJRadioButtonActionPerformed(evt: TActionEvent);
  end;

implementation
uses
  DefaultComboBoxModel, KeyNameDefaultComboBoxModelFactory, KeyCharDefaultComboBoxModelFactory, ComboBoxModel, Dimension, ActionListener, Insets, GroupLayout, Short;



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


procedure TKeyboardActionScriptInputJPanel.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end;
    

constructor TKeyboardActionScriptInputJPanel.Create(keyActionScriptInputInterface: IKeyboardActionScriptInputInterface);
var
  defaultComboBoxModel: TDefaultComboBoxModel;
begin
    inherited Create;
    InitFields;
        Self.logUtil.putF(Self.commonStrings.START, Self, Self.commonStrings.CONSTRUCTOR_);
        Self.initComponents();
        Self.keyActionScriptInputInterface := keyActionScriptInputInterface;
        defaultComboBoxModel := TDefaultComboBoxModel.Create();
        defaultComboBoxModel.addElement(TTempInputRobotNames.DX_NAME);
        defaultComboBoxModel.addElement(TInputRobot.NAME);
        Self.inputAutomationTypeJComboBox.setModel(defaultComboBoxModel);
        Self.keyNameJComboBox.setModel(TKeyNameDefaultComboBoxModelFactory.getInstance());
        Self.keyIntegerJComboBox.setModel(TKeyCharDefaultComboBoxModelFactory.getInstance());
        if Self.keyActionScriptInputInterface.isNormal() then begin
            Self.normalJRadioButton.setSelected(True);
            Self.pressJRadioButton.setSelected(False);
            Self.releaseJRadioButton.setSelected(False);
        end else if Self.keyActionScriptInputInterface.isPress() then begin
            Self.normalJRadioButton.setSelected(False);
            Self.pressJRadioButton.setSelected(True);
            Self.releaseJRadioButton.setSelected(False);
        end else if Self.keyActionScriptInputInterface.isRelease() then begin
            Self.normalJRadioButton.setSelected(False);
            Self.pressJRadioButton.setSelected(False);
            Self.releaseJRadioButton.setSelected(True);
        end;
        Self.set_();
end;
    

procedure TKeyboardActionScriptInputJPanel.set_;
var
  inputTypeComboBoxModel: TComboBoxModel;
begin
        inputTypeComboBoxModel := Self.inputAutomationTypeJComboBox.getModel();
        inputTypeComboBoxModel.setSelectedItem(Self.keyActionScriptInputInterface.getInputRobotInterface().getName());
        Self.textJTextField.setText(Self.keyActionScriptInputInterface.getText());
        Self.delayJTextField.setText(IntToStr(Self.keyActionScriptInputInterface.getDelayBetweenKeys()));
        Self.timeJTextField.setText(IntToStr(Self.keyActionScriptInputInterface.getTime()));
        Self.keyActionScriptInputInterface.log();
end;
    

// throws Exception
procedure TKeyboardActionScriptInputJPanel.updateInputType;
var
  comboBoxModel: TComboBoxModel;
  selectedItem: string;
begin
        comboBoxModel := Self.inputAutomationTypeJComboBox.getModel();
        selectedItem := string(comboBoxModel.getSelectedItem());
        if not (nil.isEmpty(selectedItem)) then begin
            Self.keyActionScriptInputInterface.setInputRobotInterface(TInputRobotFactory.getInstance().get(selectedItem));
        end;
end;
    

function TKeyboardActionScriptInputJPanel.getSelectedKey: Integer;
var
  comboBoxModel: TComboBoxModel;
  selectedItem: string;
begin
        comboBoxModel := Self.keyNameJComboBox.getModel();
        selectedItem := string(comboBoxModel.getSelectedItem());
        if not (nil.isEmpty(selectedItem)) then begin
            Exit(Integer(TKeySingletonFactory.getHashtable().get(selectedItem)));
        end;
        Exit(nil);
end;
    

procedure TKeyboardActionScriptInputJPanel.updateKeys;
var
  text: string;
begin
        text := Self.textJTextField.getText();
        Self.keyActionScriptInputInterface.setText(text);
end;
    

// throws Exception
procedure TKeyboardActionScriptInputJPanel.update;
begin
        Self.updateInputType();
        Self.updateKeys();
        Self.keyActionScriptInputInterface.setTime(IntToStr(Self.timeJTextField.getText()).intValue());
        Self.keyActionScriptInputInterface.log();
end;
    

function TKeyboardActionScriptInputJPanel.getKeyActionJDialog: TJDialog;
begin
        Exit(Self.keyActionJDialog);
end;
    

procedure TKeyboardActionScriptInputJPanel.setKeyActionJDialog(keyActionJDialog: TJDialog);
begin
        Self.keyActionJDialog := keyActionJDialog;
end;
    

procedure TKeyboardActionScriptInputJPanel.initComponents;
var
  keyActionJDialogLayout: TGroupLayout;
  layout: TGroupLayout;
begin
        Self.keyActionJDialog := TJDialog.Create();
        Self.titleJLabel := TJLabel.Create();
        Self.addKeyJLabel := TJLabel.Create();
        Self.keyNameJComboBox := TJComboBox.Create();
        Self.timeJTextField := TJTextField.Create();
        Self.holdTimeJLabel := TJLabel.Create();
        Self.inputAutomationTypeJComboBox := TJComboBox.Create();
        Self.inputTypeJLabel := TJLabel.Create();
        Self.delayJTextField := TJTextField.Create();
        Self.delayBetweenJLabel := TJLabel.Create();
        Self.testJLabel := TJLabel.Create();
        Self.textJTextField := TJTextField.Create();
        Self.pressJRadioButton := TJRadioButton.Create();
        Self.releaseJRadioButton := TJRadioButton.Create();
        Self.normalJRadioButton := TJRadioButton.Create();
        Self.simultaneousJRadioButton := TJRadioButton.Create();
        Self.sequenceJRadioButton := TJRadioButton.Create();
        Self.jPanel1 := TJPanel.Create();
        Self.okJButton := TJButton.Create();
        Self.keyIntegerJComboBox := TJComboBox.Create();
        Self.keyActionJButton := TJButton.Create();
        Self.jLabel1 := TJLabel.Create();
        Self.keyActionJDialog.setMinimumSize(TDimension.Create(255, 280));
        Self.titleJLabel.setHorizontalAlignment(Tjavax.swing.SwingConstants.CENTER);
        Self.titleJLabel.setText('Keyboard Input Options');
        Self.addKeyJLabel.setText('Add Key:');
        Self.keyNameJComboBox.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.keyNameJComboBoxActionPerformed(evt);
end;
*));
        Self.timeJTextField.setText(TCommonPhoneStrings.getInstance().ZERO);
        Self.holdTimeJLabel.setText('Hold Time (ms):');
        Self.inputTypeJLabel.setText('Input Type:');
        Self.delayJTextField.setText(TCommonPhoneStrings.getInstance().ZERO);
        Self.delayBetweenJLabel.setText('Delay Between Keys (ms):');
        Self.testJLabel.setText('Text:');
        Self.textJTextField.setText(TCommonPhoneStrings.getInstance().ZERO);
        Self.pressJRadioButton.setText('Press');
        Self.pressJRadioButton.setBorder(Tjavax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        Self.pressJRadioButton.setMargin(TInsets.Create(0, 0, 0, 0));
        Self.pressJRadioButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.pressJRadioButtonActionPerformed(evt);
end;
*));
        Self.releaseJRadioButton.setText('Release');
        Self.releaseJRadioButton.setBorder(Tjavax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        Self.releaseJRadioButton.setMargin(TInsets.Create(0, 0, 0, 0));
        Self.releaseJRadioButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.releaseJRadioButtonActionPerformed(evt);
end;
*));
        Self.normalJRadioButton.setSelected(True);
        Self.normalJRadioButton.setText('Normal');
        Self.normalJRadioButton.setBorder(Tjavax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        Self.normalJRadioButton.setMargin(TInsets.Create(0, 0, 0, 0));
        Self.normalJRadioButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.normalJRadioButtonActionPerformed(evt);
end;
*));
        Self.simultaneousJRadioButton.setSelected(True);
        Self.simultaneousJRadioButton.setText('Simultaneous');
        Self.simultaneousJRadioButton.setBorder(Tjavax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        Self.simultaneousJRadioButton.setMargin(TInsets.Create(0, 0, 0, 0));
        Self.simultaneousJRadioButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.simultaneousJRadioButtonActionPerformed(evt);
end;
*));
        Self.sequenceJRadioButton.setText('Sequence');
        Self.sequenceJRadioButton.setBorder(Tjavax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        Self.sequenceJRadioButton.setMargin(TInsets.Create(0, 0, 0, 0));
        Self.sequenceJRadioButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.sequenceJRadioButtonActionPerformed(evt);
end;
*));
        Self.okJButton.setText('OK');
        Self.okJButton.setHorizontalTextPosition(Tjavax.swing.SwingConstants.CENTER);
        Self.okJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.okJButtonActionPerformed(evt);
end;
*));
        Self.jPanel1.add(Self.okJButton);
        Self.keyIntegerJComboBox.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.keyIntegerJComboBoxActionPerformed(evt);
end;
*));
        keyActionJDialogLayout := TGroupLayout.Create(Self.keyActionJDialog.getContentPane());
        Self.keyActionJDialog.getContentPane().setLayout(keyActionJDialogLayout);
        keyActionJDialogLayout.setHorizontalGroup(keyActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(keyActionJDialogLayout.createSequentialGroup().addContainerGap().addGroup(keyActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(keyActionJDialogLayout.createSequentialGroup().addGroup(keyActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING, False).addComponent(Self.addKeyJLabel, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE).addComponent(Self.inputTypeJLabel, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(keyActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.TRAILING).addComponent(Self.inputAutomationTypeJComboBox, 0, 148, TShort.MAX_VALUE).addComponent(Self.textJTextField, Tjavax.swing.GroupLayout.Alignment.LEADING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 148, TShort.MAX_VALUE).addGroup(keyActionJDialogLayout.createSequentialGroup().addComponent(Self.keyNameJComboBox, 0, 101, TShort.MAX_VALUE).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.keyIntegerJComboBox, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 41, Tjavax.swing.GroupLayout.PREFERRED_SIZE)))).addComponent(Self.testJLabel, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 60, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addGroup(keyActionJDialogLayout.createSequentialGroup().addComponent(Self.normalJRadioButton).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.pressJRadioButton).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.releaseJRadioButton).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED, 48, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addGroup(Tjavax.swing.GroupLayout.Alignment.TRAILING, keyActionJDialogLayout.createSequentialGroup().addComponent(Self.holdTimeJLabel).addGap(22, 22, 22).addComponent(Self.timeJTextField, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 113, TShort.MAX_VALUE)).addGroup(keyActionJDialogLayout.createSequentialGroup().addComponent(Self.delayBetweenJLabel).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED, 15, TShort.MAX_VALUE).addComponent(Self.delayJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 68, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addGroup(keyActionJDialogLayout.createSequentialGroup().addComponent(Self.simultaneousJRadioButton).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.sequenceJRadioButton))).addContainerGap()).addComponent(Self.titleJLabel, Tjavax.swing.GroupLayout.Alignment.TRAILING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 229, TShort.MAX_VALUE).addComponent(Self.jPanel1, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 229, TShort.MAX_VALUE));
        keyActionJDialogLayout.setVerticalGroup(keyActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(keyActionJDialogLayout.createSequentialGroup().addComponent(Self.titleJLabel).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(keyActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.inputTypeJLabel).addComponent(Self.inputAutomationTypeJComboBox, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(keyActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.addKeyJLabel).addComponent(Self.keyIntegerJComboBox, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addComponent(Self.keyNameJComboBox, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(keyActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.testJLabel).addComponent(Self.textJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(keyActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.pressJRadioButton).addComponent(Self.normalJRadioButton).addComponent(Self.releaseJRadioButton)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(keyActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.holdTimeJLabel).addComponent(Self.timeJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(keyActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.delayBetweenJLabel).addComponent(Self.delayJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(keyActionJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.simultaneousJRadioButton).addComponent(Self.sequenceJRadioButton)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.jPanel1, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addContainerGap()));
        Self.setMinimumSize(TDimension.Create(100, 0));
        Self.keyActionJButton.setText('Edit');
        Self.keyActionJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.keyActionJButtonActionPerformed(evt);
end;
*));
        Self.jLabel1.setText('Key:');
        layout := TGroupLayout.Create(Self);
        Self.setLayout(layout);
        layout.setHorizontalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(Self.jLabel1).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED, 49, TShort.MAX_VALUE).addComponent(Self.keyActionJButton)));
        layout.setVerticalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.jLabel1).addComponent(Self.keyActionJButton)));
end;
    

procedure TKeyboardActionScriptInputJPanel.prependText(integer_: Integer);
var
  newKey: string;
begin
        if (integer_) <> (0) then begin
            newKey := '&#' + integer_.toString() + ';';
            Self.textJTextField.setText(newKey + TJava.ToString(Self.textJTextField.getText()));
        end;
end;
    

procedure TKeyboardActionScriptInputJPanel.keyIntegerJComboBoxActionPerformed(evt: TActionEvent);
begin
        Self.keyIntegerJComboBox.getSelectedIndex();
        Self.keyNameJComboBox.setSelectedIndex(Self.keyIntegerJComboBox.getSelectedIndex());
end;
    

procedure TKeyboardActionScriptInputJPanel.sequenceJRadioButtonActionPerformed(evt: TActionEvent);
begin
        if Self.sequenceJRadioButton.isSelected() then begin
            Self.delayJTextField.setText(TCommonPhoneStrings.getInstance().ONE);
            Self.simultaneousJRadioButton.setSelected(False);
        end;
end;
    

procedure TKeyboardActionScriptInputJPanel.simultaneousJRadioButtonActionPerformed(evt: TActionEvent);
begin
        if Self.simultaneousJRadioButton.isSelected() then begin
            Self.delayJTextField.setText(TCommonPhoneStrings.getInstance().ZERO);
            Self.sequenceJRadioButton.setSelected(False);
        end;
end;
    

procedure TKeyboardActionScriptInputJPanel.keyNameJComboBoxActionPerformed(evt: TActionEvent);
var
  integer_: Integer;
begin
        integer_ := Self.getSelectedKey();
        Self.prependText(integer_);
        Self.keyIntegerJComboBox.setSelectedIndex(Self.keyNameJComboBox.getSelectedIndex());
end;
    

procedure TKeyboardActionScriptInputJPanel.okJButtonActionPerformed(evt: TActionEvent);
begin
        try
            Self.update();
            Self.getKeyActionJDialog().setVisible(False);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'okButtonActionPerformed', e);
            end;
        end;
end;
    

procedure TKeyboardActionScriptInputJPanel.keyActionJButtonActionPerformed(evt: TActionEvent);
begin
        Self.getKeyActionJDialog().setVisible(True);
end;
    

procedure TKeyboardActionScriptInputJPanel.normalJRadioButtonActionPerformed(evt: TActionEvent);
begin
        if Self.normalJRadioButton.isSelected() then begin
            Self.keyActionScriptInputInterface.setNormal();
            Self.pressJRadioButton.setSelected(False);
            Self.releaseJRadioButton.setSelected(False);
        end;
end;
    

procedure TKeyboardActionScriptInputJPanel.releaseJRadioButtonActionPerformed(evt: TActionEvent);
begin
        if Self.releaseJRadioButton.isSelected() then begin
            Self.keyActionScriptInputInterface.setRelease(True);
            Self.keyActionScriptInputInterface.setPress(False);
            Self.pressJRadioButton.setSelected(False);
            Self.normalJRadioButton.setSelected(False);
        end;
end;
    

procedure TKeyboardActionScriptInputJPanel.pressJRadioButtonActionPerformed(evt: TActionEvent);
begin
        if Self.pressJRadioButton.isSelected() then begin
            Self.keyActionScriptInputInterface.setPress(True);
            Self.keyActionScriptInputInterface.setRelease(False);
            Self.releaseJRadioButton.setSelected(False);
            Self.normalJRadioButton.setSelected(False);
        end;
end;

initialization

end.

