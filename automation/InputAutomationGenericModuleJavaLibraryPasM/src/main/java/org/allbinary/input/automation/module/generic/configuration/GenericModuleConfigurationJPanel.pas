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
// package org.allbinary.input.automation.module.generic.configuration
unit GenericModuleConfigurationJPanel;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, BasicArrayList, BasicArrayListD, GenericProfile, GenericProfileDataWorkerType, GenericProfiles, GenericProfileActions, GenericProfileActionsJPanel, LogUtil, StringUtil, CommonStrings, ActionEvent, JPanel, ListSelectionEvent, ButtonGroup, JCheckBox, JButton, JTabbedPane, JList, JScrollPane, JLabel, JDialog, JTextField, JRadioButton, GenericModuleConfigurationInterface;

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

  TGenericModuleConfigurationJPanel = class(TJPanel, IGenericModuleConfigurationInterface)
  public
    logUtil: TLogUtil;
    stringUtil: TStringUtil;
    commonStrings: TCommonStrings;
    genericProfiles: TGenericProfiles;
    selectedGenericProfile: TGenericProfile;
    blankGenericProfileActionsJPanel: TJPanel;
    buttonGroup2: TButtonGroup;
    captureComparisonJCheckBox: TJCheckBox;
    captureMotionAnalysisJCheckBox: TJCheckBox;
    deleteProfileJButton: TJButton;
    genericJTabbedPane: TJTabbedPane;
    genericProfilesJList: TJList;
    genericProfilesJPanel: TJPanel;
    genericProfilesJScrollPane: TJScrollPane;
    jLabel1: TJLabel;
    jLabel2: TJLabel;
    jLabel3: TJLabel;
    jPanel1: TJPanel;
    newProfileJButton: TJButton;
    newProfileJDialog: TJDialog;
    newProfileNameJLabel: TJLabel;
    newProfileNameJTextField: TJTextField;
    okNewProfileJButton: TJButton;
    savedCaptureJRadioButton: TJRadioButton;
    screenCaptureJRadioButton: TJRadioButton;
    procedure InitFields;
        constructor Create;
        procedure initComponents;
        procedure savedCaptureJRadioButtonActionPerformed(evt: TActionEvent);
        procedure screenCaptureJRadioButtonActionPerformed(evt: TActionEvent);
        procedure captureMotionAnalysisJCheckBoxActionPerformed(evt: TActionEvent);
        procedure captureComparisonJCheckBoxActionPerformed(evt: TActionEvent);
        procedure updateProfileUI(profileNameString: string);
        procedure selectFirstElement;
        procedure updateProfileOptions;
        function getBlankGenericProfileActionsJPanel: TJPanel; virtual;
        procedure setBlankGenericProfileActionsJPanel(blankGenericProfileActionsJPanel: TJPanel); virtual;
        function getGenericProfiles: TGenericProfiles;
        procedure setGenericProfiles(genericProfiles: TGenericProfiles);
        function getSelectedGenericProfile: TGenericProfile; virtual;
        procedure setSelectedGenericProfile(selectedGenericProfile: TGenericProfile); virtual;
        procedure genericProfilesJListValueChanged(evt: TListSelectionEvent);
        procedure deleteProfileJButtonActionPerformed(evt: TActionEvent);
        procedure okNewProfileJButtonActionPerformed(evt: TActionEvent);
        procedure newProfileJButtonActionPerformed(evt: TActionEvent);
  end;

implementation
uses
  Dimension, ActionListener, GroupLayout, Short, GridLayout, ListSelectionListener, Insets;



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


procedure TGenericModuleConfigurationJPanel.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.stringUtil := TStringUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end;
    

constructor TGenericModuleConfigurationJPanel.Create;
begin
    inherited Create;
    InitFields;
        Self.initComponents();
        Self.setGenericProfiles(TGenericProfiles.Create(TGenericProfiles.DEFAULT_FILE));
        Self.selectFirstElement();
end;
    

procedure TGenericModuleConfigurationJPanel.initComponents;
var
  newProfileJDialogLayout: TGroupLayout;
  jPanel1Layout: TGroupLayout;
  genericProfilesJPanelLayout: TGroupLayout;
  blankGenericProfileActionsJPanelLayout: TGroupLayout;
begin
        Self.newProfileJDialog := TJDialog.Create();
        Self.okNewProfileJButton := TJButton.Create();
        Self.newProfileNameJLabel := TJLabel.Create();
        Self.newProfileNameJTextField := TJTextField.Create();
        Self.buttonGroup2 := TButtonGroup.Create();
        Self.genericJTabbedPane := TJTabbedPane.Create();
        Self.genericProfilesJPanel := TJPanel.Create();
        Self.genericProfilesJScrollPane := TJScrollPane.Create();
        Self.genericProfilesJList := TJList.Create();
        Self.newProfileJButton := TJButton.Create();
        Self.deleteProfileJButton := TJButton.Create();
        Self.jPanel1 := TJPanel.Create();
        Self.screenCaptureJRadioButton := TJRadioButton.Create();
        Self.jLabel1 := TJLabel.Create();
        Self.jLabel2 := TJLabel.Create();
        Self.savedCaptureJRadioButton := TJRadioButton.Create();
        Self.captureMotionAnalysisJCheckBox := TJCheckBox.Create();
        Self.captureComparisonJCheckBox := TJCheckBox.Create();
        Self.jLabel3 := TJLabel.Create();
        Self.blankGenericProfileActionsJPanel := TJPanel.Create();
        Self.newProfileJDialog.setMinimumSize(TDimension.Create(250, 150));
        Self.newProfileJDialog.setResizable(False);
        Self.okNewProfileJButton.setText('Ok');
        Self.okNewProfileJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.okNewProfileJButtonActionPerformed(evt);
end;
*));
        Self.newProfileNameJLabel.setText('New Profile Name');
        newProfileJDialogLayout := TGroupLayout.Create(Self.newProfileJDialog.getContentPane());
        Self.newProfileJDialog.getContentPane().setLayout(newProfileJDialogLayout);
        newProfileJDialogLayout.setHorizontalGroup(newProfileJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(newProfileJDialogLayout.createSequentialGroup().addGroup(newProfileJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(newProfileJDialogLayout.createSequentialGroup().addGap(80, 80, 80).addComponent(Self.newProfileNameJLabel)).addGroup(newProfileJDialogLayout.createSequentialGroup().addGap(30, 30, 30).addComponent(Self.newProfileNameJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 180, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addGroup(newProfileJDialogLayout.createSequentialGroup().addGap(100, 100, 100).addComponent(Self.okNewProfileJButton))).addContainerGap(35, TShort.MAX_VALUE)));
        newProfileJDialogLayout.setVerticalGroup(newProfileJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(newProfileJDialogLayout.createSequentialGroup().addGap(10, 10, 10).addComponent(Self.newProfileNameJLabel).addGap(16, 16, 16).addComponent(Self.newProfileNameJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addGap(20, 20, 20).addComponent(Self.okNewProfileJButton)));
        Self.setLayout(TGridLayout.Create(1, 0));
        Self.setMinimumSize(TDimension.Create(400, 300));
        Self.setPreferredSize(TDimension.Create(700, 700));
        Self.genericJTabbedPane.setToolTipText(Self.stringUtil.EMPTY_STRING);
        Self.genericJTabbedPane.setMinimumSize(TDimension.Create(800, 600));
        Self.genericProfilesJPanel.setMinimumSize(TDimension.Create(400, 300));
        Self.genericProfilesJPanel.setPreferredSize(TDimension.Create(0, 0));
        Self.genericProfilesJList.addListSelectionListener(TListSelectionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.valueChanged(evt: TListSelectionEvent);
begin
                Self.genericProfilesJListValueChanged(evt);
end;
*));
        Self.genericProfilesJScrollPane.setViewportView(Self.genericProfilesJList);
        Self.newProfileJButton.setText('New');
        Self.newProfileJButton.setToolTipText('Creates a new profile');
        Self.newProfileJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.newProfileJButtonActionPerformed(evt);
end;
*));
        Self.deleteProfileJButton.setText('Delete');
        Self.deleteProfileJButton.setToolTipText('Deletes the selected profile');
        Self.deleteProfileJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.deleteProfileJButtonActionPerformed(evt);
end;
*));
        Self.jPanel1.setPreferredSize(TDimension.Create(1000, 100));
        Self.screenCaptureJRadioButton.setText('Screen Captures');
        Self.screenCaptureJRadioButton.setToolTipText('Records the screen into memory for logical processing');
        Self.screenCaptureJRadioButton.setBorder(Tjavax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        Self.screenCaptureJRadioButton.setMargin(TInsets.Create(0, 0, 0, 0));
        Self.screenCaptureJRadioButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.screenCaptureJRadioButtonActionPerformed(evt);
end;
*));
        Self.jLabel1.setText('Profile Options');
        Self.jLabel2.setText('Process From:');
        Self.savedCaptureJRadioButton.setText('Saved Images');
        Self.savedCaptureJRadioButton.setToolTipText('Loads images from files for logical processing.  Usually for debugging your profile actions');
        Self.savedCaptureJRadioButton.setBorder(Tjavax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        Self.savedCaptureJRadioButton.setMargin(TInsets.Create(0, 0, 0, 0));
        Self.savedCaptureJRadioButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.savedCaptureJRadioButtonActionPerformed(evt);
end;
*));
        Self.captureMotionAnalysisJCheckBox.setText('Motion Analysis');
        Self.captureMotionAnalysisJCheckBox.setToolTipText('Uses image comparison and contraints to locate moving objects');
        Self.captureMotionAnalysisJCheckBox.setBorder(Tjavax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        Self.captureMotionAnalysisJCheckBox.setMargin(TInsets.Create(0, 0, 0, 0));
        Self.captureMotionAnalysisJCheckBox.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.captureMotionAnalysisJCheckBoxActionPerformed(evt);
end;
*));
        Self.captureComparisonJCheckBox.setText('Comparison');
        Self.captureComparisonJCheckBox.setToolTipText('Compares the last two input images for multi image logic');
        Self.captureComparisonJCheckBox.setBorder(Tjavax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        Self.captureComparisonJCheckBox.setMargin(TInsets.Create(0, 0, 0, 0));
        Self.captureComparisonJCheckBox.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.captureComparisonJCheckBoxActionPerformed(evt);
end;
*));
        Self.jLabel3.setText('Image Processing:');
        Self.jLabel3.setToolTipText('Turns on/off various extended image processing');
        jPanel1Layout := TGroupLayout.Create(Self.jPanel1);
        Self.jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(jPanel1Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(jPanel1Layout.createSequentialGroup().addGroup(jPanel1Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.screenCaptureJRadioButton).addComponent(Self.jLabel1).addComponent(Self.jLabel2).addComponent(Self.savedCaptureJRadioButton).addComponent(Self.captureMotionAnalysisJCheckBox).addComponent(Self.captureComparisonJCheckBox).addComponent(Self.jLabel3)).addContainerGap(22, TShort.MAX_VALUE)));
        jPanel1Layout.setVerticalGroup(jPanel1Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(jPanel1Layout.createSequentialGroup().addComponent(Self.jLabel1).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.jLabel2).addGap(7, 7, 7).addComponent(Self.screenCaptureJRadioButton).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.savedCaptureJRadioButton).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.jLabel3).addGap(7, 7, 7).addComponent(Self.captureComparisonJCheckBox).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.captureMotionAnalysisJCheckBox).addContainerGap(106, TShort.MAX_VALUE)));
        genericProfilesJPanelLayout := TGroupLayout.Create(Self.genericProfilesJPanel);
        Self.genericProfilesJPanel.setLayout(genericProfilesJPanelLayout);
        genericProfilesJPanelLayout.setHorizontalGroup(genericProfilesJPanelLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(genericProfilesJPanelLayout.createSequentialGroup().addGroup(genericProfilesJPanelLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(genericProfilesJPanelLayout.createSequentialGroup().addComponent(Self.newProfileJButton).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.deleteProfileJButton)).addGroup(genericProfilesJPanelLayout.createSequentialGroup().addComponent(Self.genericProfilesJScrollPane, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.jPanel1, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 119, TShort.MAX_VALUE))).addContainerGap()));
        genericProfilesJPanelLayout.setVerticalGroup(genericProfilesJPanelLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(genericProfilesJPanelLayout.createSequentialGroup().addGroup(genericProfilesJPanelLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.newProfileJButton).addComponent(Self.deleteProfileJButton)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(genericProfilesJPanelLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.jPanel1, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 246, TShort.MAX_VALUE).addComponent(Self.genericProfilesJScrollPane, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 246, TShort.MAX_VALUE))));
        Self.genericJTabbedPane.addTab('Profiles', Self.genericProfilesJPanel);
        blankGenericProfileActionsJPanelLayout := TGroupLayout.Create(Self.blankGenericProfileActionsJPanel);
        Self.blankGenericProfileActionsJPanel.setLayout(blankGenericProfileActionsJPanelLayout);
        blankGenericProfileActionsJPanelLayout.setHorizontalGroup(blankGenericProfileActionsJPanelLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGap(0, 395, TShort.MAX_VALUE));
        blankGenericProfileActionsJPanelLayout.setVerticalGroup(blankGenericProfileActionsJPanelLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGap(0, 275, TShort.MAX_VALUE));
        Self.genericJTabbedPane.addTab('Actions', Self.blankGenericProfileActionsJPanel);
        Self.add(Self.genericJTabbedPane);
end;
    

procedure TGenericModuleConfigurationJPanel.savedCaptureJRadioButtonActionPerformed(evt: TActionEvent);
begin
        try
            if Self.savedCaptureJRadioButton.isSelected() then begin
                Self.logUtil.putF('Selected', Self, 'savedCaptureJRadioButtonActionPerformed');
                Self.getSelectedGenericProfile().add(TGenericProfileDataWorkerType.SAVED_CAPTURE);
                Self.getSelectedGenericProfile().remove(TGenericProfileDataWorkerType.SCREEN_CAPTURE);
                Self.screenCaptureJRadioButton.setSelected(False);
                Self.getGenericProfiles().save();
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'savedCaptureJRadioButtonActionPerformed', e);
            end;
        end;
end;
    

procedure TGenericModuleConfigurationJPanel.screenCaptureJRadioButtonActionPerformed(evt: TActionEvent);
begin
        try
            if Self.screenCaptureJRadioButton.isSelected() then begin
                Self.logUtil.putF('Selected', Self, 'screenCaptureJRadioButtonActionPerformed');
                Self.getSelectedGenericProfile().add(TGenericProfileDataWorkerType.SCREEN_CAPTURE);
                Self.getSelectedGenericProfile().remove(TGenericProfileDataWorkerType.SAVED_CAPTURE);
                Self.savedCaptureJRadioButton.setSelected(False);
                Self.getGenericProfiles().save();
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'screenCaptureJRadioButtonActionPerformed', e);
            end;
        end;
end;
    

procedure TGenericModuleConfigurationJPanel.captureMotionAnalysisJCheckBoxActionPerformed(evt: TActionEvent);
begin
        try
            if Self.captureMotionAnalysisJCheckBox.isSelected() then begin
                Self.getSelectedGenericProfile().add(TGenericProfileDataWorkerType.MOTION);
            end else begin
                Self.getSelectedGenericProfile().remove(TGenericProfileDataWorkerType.MOTION);
            end;
            Self.getGenericProfiles().save();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'captureComparisonJCheckBoxActionPerformed', e);
            end;
        end;
end;
    

procedure TGenericModuleConfigurationJPanel.captureComparisonJCheckBoxActionPerformed(evt: TActionEvent);
begin
        try
            if Self.captureComparisonJCheckBox.isSelected() then begin
                Self.getSelectedGenericProfile().add(TGenericProfileDataWorkerType.COMPARISON);
            end else begin
                Self.getSelectedGenericProfile().remove(TGenericProfileDataWorkerType.COMPARISON);
            end;
            Self.getGenericProfiles().save();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'captureComparisonJCheckBoxActionPerformed', e);
            end;
        end;
end;
    

// throws Exception
procedure TGenericModuleConfigurationJPanel.updateProfileUI(profileNameString: string);
var
  genericProfileActionsJPanel: TGenericProfileActionsJPanel;
  layout: TGroupLayout;
begin
        Self.getBlankGenericProfileActionsJPanel().removeAll();
        if (profileNameString) <> ('') then begin
            genericProfileActionsJPanel := TGenericProfileActionsJPanel.Create();
            Self.setSelectedGenericProfile(Self.getGenericProfiles().get(profileNameString));
            Self.getSelectedGenericProfile().setGenericProfileActions(TGenericProfileActions.Create(genericProfileActionsJPanel, profileNameString));
            genericProfileActionsJPanel.setGenericProfileActions(Self.getSelectedGenericProfile().getGenericProfileActions());
            genericProfileActionsJPanel.selectFirstElement();
            layout := TGroupLayout(Self.getBlankGenericProfileActionsJPanel().getLayout());
            layout.setHorizontalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGap(0, 395, TShort.MAX_VALUE).addComponent(genericProfileActionsJPanel, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE));
            layout.setVerticalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGap(0, 256, TShort.MAX_VALUE).addComponent(genericProfileActionsJPanel, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE));
            Self.updateProfileOptions();
            Self.logUtil.putF('Setting Configuration Profile JPanel', Self, 'updateProfileUI');
        end else begin
            Self.logUtil.putF('Null Configuration Profile', Self, 'updateProfileUI');
        end;
end;
    

// throws Exception
procedure TGenericModuleConfigurationJPanel.selectFirstElement;
begin
        Self.genericProfilesJList.setModel(Self.getGenericProfiles().getDefaultListModelHelper().getListModel());
        if (Self.genericProfilesJList.getModel().getSize()) > (0) then begin
            Self.genericProfilesJList.setSelectedValue(Self.genericProfilesJList.getModel().getElementAt(0), True);
            Self.updateProfileUI(string(Self.genericProfilesJList.getModel().getElementAt(0)));
        end;
end;
    

// throws Exception
procedure TGenericModuleConfigurationJPanel.updateProfileOptions;
var
  genericProfile: TGenericProfile;
  vector: TBasicArrayList;
  size: Integer;
  genericProfileDataWorkerType: TGenericProfileDataWorkerType;
  index: Integer;
begin
        Self.logUtil.putF(Self.commonStrings.START, Self, 'updateProfileOptions');
        genericProfile := Self.getSelectedGenericProfile();
        vector := genericProfile.getGenericProfileDataWorkerTypeVector();
        Self.screenCaptureJRadioButton.setSelected(False);
        Self.savedCaptureJRadioButton.setSelected(False);
        Self.captureComparisonJCheckBox.setSelected(False);
        Self.captureMotionAnalysisJCheckBox.setSelected(False);
        size := vector.size();
        for index := 0 to size - 1 do begin
            genericProfileDataWorkerType := TGenericProfileDataWorkerType(vector.get(index));
            Self.logUtil.putF(genericProfile.getName() + ' has GenericProfileDataWorkerType: ' + genericProfileDataWorkerType.toString(), Self, 'updateProfileOptions');
            if (genericProfileDataWorkerType) = (TGenericProfileDataWorkerType.SCREEN_CAPTURE) then begin
                Self.logUtil.putF('Screen Capture Selected', Self, 'updateProfileOptions');
                Self.screenCaptureJRadioButton.setSelected(True);
            end else if (genericProfileDataWorkerType) = (TGenericProfileDataWorkerType.SAVED_CAPTURE) then begin
                Self.logUtil.putF('Saved Capture Selected', Self, 'updateProfileOptions');
                Self.savedCaptureJRadioButton.setSelected(True);
            end else if (genericProfileDataWorkerType) = (TGenericProfileDataWorkerType.COMPARISON) then begin
                Self.logUtil.putF('Checking Comparison Box', Self, 'updateProfileOptions');
                Self.captureComparisonJCheckBox.setSelected(True);
            end else if (genericProfileDataWorkerType) = (TGenericProfileDataWorkerType.MOTION) then begin
                Self.logUtil.putF('Checking Motion Box', Self, 'updateProfileOptions');
                Self.captureMotionAnalysisJCheckBox.setSelected(True);
            end;
        end;
        if (not (Self.screenCaptureJRadioButton.isSelected())) and (not (Self.savedCaptureJRadioButton.isSelected())) then begin
            Self.screenCaptureJRadioButton.setSelected(True);
            Self.getSelectedGenericProfile().add(TGenericProfileDataWorkerType.SCREEN_CAPTURE);
        end;
        Self.logUtil.putF(Self.commonStrings.END_, Self, 'updateProfileOptions');
end;
    

function TGenericModuleConfigurationJPanel.getBlankGenericProfileActionsJPanel: TJPanel;
begin
        Exit(Self.blankGenericProfileActionsJPanel);
end;
    

procedure TGenericModuleConfigurationJPanel.setBlankGenericProfileActionsJPanel(blankGenericProfileActionsJPanel: TJPanel);
begin
        Self.blankGenericProfileActionsJPanel := blankGenericProfileActionsJPanel;
end;
    

function TGenericModuleConfigurationJPanel.getGenericProfiles: TGenericProfiles;
begin
        Exit(Self.genericProfiles);
end;
    

procedure TGenericModuleConfigurationJPanel.setGenericProfiles(genericProfiles: TGenericProfiles);
begin
        Self.genericProfiles := genericProfiles;
end;
    

function TGenericModuleConfigurationJPanel.getSelectedGenericProfile: TGenericProfile;
begin
        Exit(Self.selectedGenericProfile);
end;
    

procedure TGenericModuleConfigurationJPanel.setSelectedGenericProfile(selectedGenericProfile: TGenericProfile);
begin
        Self.selectedGenericProfile := selectedGenericProfile;
end;
    

procedure TGenericModuleConfigurationJPanel.genericProfilesJListValueChanged(evt: TListSelectionEvent);
var
  profileNameString: string;
begin
        try
            profileNameString := string(Self.genericProfilesJList.getSelectedValue());
            Self.updateProfileUI(profileNameString);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'genericProfilesJListValueChanged', e);
            end;
        end;
end;
    

procedure TGenericModuleConfigurationJPanel.deleteProfileJButtonActionPerformed(evt: TActionEvent);
var
  anyType: TArray<TObject>;
  nextSelectedValueString: string;
  index: Integer;
begin
        try
            anyType := Self.genericProfilesJList.getSelectedValues();
            for index := 0 to System.Length(anyType) - 1 do begin
                nextSelectedValueString := string(anyType[index]);
                Self.getGenericProfiles().remove(nextSelectedValueString);
            end;
            Self.selectFirstElement();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'deleteProfileJButtonActionPerformed', e);
            end;
        end;
end;
    

procedure TGenericModuleConfigurationJPanel.okNewProfileJButtonActionPerformed(evt: TActionEvent);
var
  newProfileName: string;
begin
        try
            newProfileName := Self.newProfileNameJTextField.getText();
            Self.getGenericProfiles().add(TJava.BoxString(newProfileName));
            Self.genericProfilesJList.setModel(Self.getGenericProfiles().getDefaultListModelHelper().getListModel());
            Self.genericProfilesJList.setSelectedValue(newProfileName, True);
            Self.newProfileJDialog.setVisible(False);
            Self.updateProfileUI(newProfileName);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'okNewProfileJButtonActionPerformed', e);
            end;
        end;
end;
    

procedure TGenericModuleConfigurationJPanel.newProfileJButtonActionPerformed(evt: TActionEvent);
begin
        Self.newProfileJDialog.setVisible(True);
end;

initialization

end.

