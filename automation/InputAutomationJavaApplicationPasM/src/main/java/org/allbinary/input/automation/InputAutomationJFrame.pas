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
// package org.allbinary.input.automation
unit InputAutomationJFrame;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, ARunnable, InputAutomationBundleActivatorListenerInterface, InputAutomationConfigurationModuleChangeListener, InputAutomationRobotChangeListener, AppUrlGlobals, URLGLOBALS, BasicTextJDialog, JListSwingWorker, InputAutomationConfiguration, InputAutomationConfigurationFactory, InputAutomationConfigurationModuleChangeEvent, InputAutomationModuleFactoryFactory, InputAutomationModuleFactoryInterface, InputAutomationModuleConfiguration, InputAutomationModuleConfigurations, DesktopBundle, InputRobotFactory, InputAutomationRobotChangeEvent, LogUtil, LogConfigTypeFactory, JavaHelpUtil, WebappClassLoaderInfo, InputAutomationClientInformationFactory, CommonStrings, RunnableInterface, ActionEvent, WindowEvent, FocusEvent, ListSelectionEvent, JPanel, JMenuItem, JTabbedPane, JList, JScrollPane, JMenuBar, JLabel, JMenu, JCheckBoxMenuItem, JFrame;

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

  TInputAutomationJFrame = class(TJFrame, IInputAutomationConfigurationModuleChangeListener, IInputAutomationRobotChangeListener, IHelpSetListener)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    inputAutomationModuleConfigurations: TInputAutomationModuleConfigurations;
    inputAutomationModuleFactory: TInputAutomationModuleFactoryFactory;
    inputAutomationModuleInterface: IInputAutomationModuleFactoryInterface;
    runnableInterface: IRunnableInterface;
    thread: TThread;
    helpSet: THelpSet;
    uri: TURI;
    aboutJMenuItem: TJMenuItem;
    automationModuleConfigurationJPanel: TJPanel;
    gameRobotJTabbedPane: TJTabbedPane;
    helpJMenuItem: TJMenuItem;
    inputAutomationModuleJList: TJList;
    inputAutomationModuleJPanel: TJPanel;
    jScrollPane1: TJScrollPane;
    mainJMenuBar: TJMenuBar;
    modulesJMenuItem: TJMenuItem;
    noModuleSelectedJDialog: TJDialog;
    noModuleSelectedJLabel: TJLabel;
    optionsJMenu: TJMenu;
    processingJMenu: TJMenu;
    startJMenuItem: TJMenuItem;
    stopJMenuItem: TJMenuItem;
    stopOnFocusJCheckBoxMenuItem: TJCheckBoxMenuItem;
    subscriptionJMenuItem: TJMenuItem;
    toolsJMenu: TJMenu;
    updatesJMenuItem: TJMenuItem;
    class var INPUTAUTOMATION_JFRAME: TInputAutomationJFrame;
    procedure InitFields;
        constructor Create;
        procedure helpSetAdded(helpSetEvent: THelpSetEvent); virtual;
        procedure helpSetRemoved(helpSetEvent: THelpSetEvent); virtual;
        procedure init;
        procedure initComponents;
        procedure subscriptionJMenuItemActionPerformed(evt: TActionEvent);
        procedure updatesJMenuItemActionPerformed(evt: TActionEvent);
        procedure aboutJMenuItemActionPerformed(evt: TActionEvent);
        procedure modulesJMenuItemActionPerformed(evt: TActionEvent);
        procedure helpJMenuItemActionPerformed(evt: TActionEvent);
        procedure stopOnFocusJCheckBoxMenuItemActionPerformed(evt: TActionEvent);
        procedure optionsJMenuActionPerformed(evt: TActionEvent);
        procedure formWindowLostFocus(evt: TWindowEvent);
        procedure formWindowGainedFocus(evt: TWindowEvent);
        procedure formFocusLost(evt: TFocusEvent);
        procedure formFocusGained(evt: TFocusEvent);
        procedure inputAutomationModuleJListValueChanged(evt: TListSelectionEvent);
        procedure stopJMenuItemActionPerformed(evt: TActionEvent);
        procedure startJMenuItemActionPerformed(evt: TActionEvent);
        class function getInstance: TInputAutomationJFrame; static;
        class procedure destroy; static;
        class procedure create(inputAutomationBundleActivatorListenerInterface: IInputAutomationBundleActivatorListenerInterface); static;
        class procedure main(args: TArray<string>); static;
        function getAutomationModuleConfigurationJPanel: TJPanel; virtual;
        procedure setAutomationModuleConfigurationJPanel(automationModuleConfigurationJPanel: TJPanel); virtual;
        procedure onAdd(inputAutomationRobotChangeEvent: TInputAutomationRobotChangeEvent); overload; virtual;
        procedure onRemove(inputAutomationRobotChangeEvent: TInputAutomationRobotChangeEvent); overload; virtual;
        procedure onAdd(inputAutomationConfigurationChangeEvent: TInputAutomationConfigurationModuleChangeEvent); overload; virtual;
        procedure onRemove(inputAutomationConfigurationChangeEvent: TInputAutomationConfigurationModuleChangeEvent); overload; virtual;
  end;

implementation
uses
  Dimension, GroupLayout, Short, WindowFocusListener, FocusAdapter, ListSelectionListener, ActionListener, INPUTAUTOMATION_JFRAME;



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


procedure TInputAutomationJFrame.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.inputAutomationModuleConfigurations := TInputAutomationModuleConfigurations.Create();
  
  
  
  
  
  Self.uri := TURI.Create('http://geocities.com/allbinary/');
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end;
    

constructor TInputAutomationJFrame.Create;
var
  url: TURL;
  imageIcon: TImageIcon;
begin
    inherited Create;
    InitFields;
        Self.initComponents();
        url := Self.ClassType.getResource('/help/Help.hs');
        Self.logUtil.putF('URL: ' + TJava.ToString(url), Self, Self.commonStrings.CONSTRUCTOR_);
        Self.helpSet := TJavaHelpUtil.getInstance().getHelpSet(url);
        url := Self.ClassType.getResource('/resources/allbinaryicon8bit.jpg');
        imageIcon := TImageIcon.Create(url);
        Self.setIconImage(imageIcon.getImage());
        Self.init();
end;
    

procedure TInputAutomationJFrame.helpSetAdded(helpSetEvent: THelpSetEvent);
begin
        Self.helpSet.add(helpSetEvent.getHelpSet());
end;
    

procedure TInputAutomationJFrame.helpSetRemoved(helpSetEvent: THelpSetEvent);
begin
        Self.helpSet.remove(helpSetEvent.getHelpSet());
end;
    

// throws Exception
procedure TInputAutomationJFrame.init;
var
  inputAutomationConfigurationFactory: TInputAutomationConfigurationFactory;
  inputAutomationModuleConfigurationList: IList<TInputAutomationModuleConfiguration>;
begin
        inputAutomationConfigurationFactory := TInputAutomationConfigurationFactory.getInstance();
        inputAutomationConfigurationFactory.init(TInputAutomationClientInformationFactory.getInstance());
        inputAutomationModuleConfigurationList := inputAutomationConfigurationFactory.inputAutomationConfiguration.getInputAutomationModuleConfigurationList();
        if (inputAutomationModuleConfigurationList) = (nil) then begin
        end else begin
            Self.inputAutomationModuleConfigurations := TInputAutomationModuleConfigurations.Create(inputAutomationModuleConfigurationList);
        end;
        Self.inputAutomationModuleFactory := TInputAutomationModuleFactoryFactory.Create(Self.inputAutomationModuleConfigurations, Self);
        (TJListSwingWorker.Create(Self.inputAutomationModuleJList, Self.inputAutomationModuleFactory.getListModel())).execute();
        Self.gameRobotJTabbedPane.setEnabledAt(1, False);
        Self.gameRobotJTabbedPane.setSelectedIndex(0);
end;
    

procedure TInputAutomationJFrame.initComponents;
var
  noModuleSelectedJDialogLayout: TGroupLayout;
  inputAutomationModuleJPanelLayout: TGroupLayout;
  automationModuleConfigurationJPanelLayout: TGroupLayout;
  layout: TGroupLayout;
begin
        Self.noModuleSelectedJDialog := TJDialog.Create();
        Self.noModuleSelectedJLabel := TJLabel.Create();
        Self.gameRobotJTabbedPane := TJTabbedPane.Create();
        Self.inputAutomationModuleJPanel := TJPanel.Create();
        Self.jScrollPane1 := TJScrollPane.Create();
        Self.inputAutomationModuleJList := TJList.Create();
        Self.automationModuleConfigurationJPanel := TJPanel.Create();
        Self.mainJMenuBar := TJMenuBar.Create();
        Self.processingJMenu := TJMenu.Create();
        Self.startJMenuItem := TJMenuItem.Create();
        Self.stopJMenuItem := TJMenuItem.Create();
        Self.optionsJMenu := TJMenu.Create();
        Self.stopOnFocusJCheckBoxMenuItem := TJCheckBoxMenuItem.Create();
        Self.toolsJMenu := TJMenu.Create();
        Self.helpJMenuItem := TJMenuItem.Create();
        Self.updatesJMenuItem := TJMenuItem.Create();
        Self.subscriptionJMenuItem := TJMenuItem.Create();
        Self.modulesJMenuItem := TJMenuItem.Create();
        Self.aboutJMenuItem := TJMenuItem.Create();
        Self.noModuleSelectedJDialog.setMinimumSize(TDimension.Create(200, 100));
        Self.noModuleSelectedJLabel.setText('Please Select A Module');
        noModuleSelectedJDialogLayout := TGroupLayout.Create(Self.noModuleSelectedJDialog.getContentPane());
        Self.noModuleSelectedJDialog.getContentPane().setLayout(noModuleSelectedJDialogLayout);
        noModuleSelectedJDialogLayout.setHorizontalGroup(noModuleSelectedJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(noModuleSelectedJDialogLayout.createSequentialGroup().addContainerGap().addComponent(Self.noModuleSelectedJLabel).addContainerGap(Tjavax.swing.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE)));
        noModuleSelectedJDialogLayout.setVerticalGroup(noModuleSelectedJDialogLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.noModuleSelectedJLabel, Tjavax.swing.GroupLayout.Alignment.TRAILING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 48, TShort.MAX_VALUE));
        Self.setDefaultCloseOperation(Tjavax.swing.WindowConstants.EXIT_ON_CLOSE);
        Self.setMinimumSize(TDimension.Create(325, 215));
        Self.setResizable(False);
        Self.addWindowFocusListener(TWindowFocusListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.windowGainedFocus(evt: TWindowEvent);
begin
                Self.formWindowGainedFocus(evt);
end;
            

        procedure T.windowLostFocus(evt: TWindowEvent);
begin
                Self.formWindowLostFocus(evt);
end;
*));
        Self.addFocusListener(TFocusAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.focusGained(evt: TFocusEvent);
begin
                Self.formFocusGained(evt);
end;
            

        procedure T.focusLost(evt: TFocusEvent);
begin
                Self.formFocusLost(evt);
end;
*));
        Self.gameRobotJTabbedPane.setMinimumSize(TDimension.Create(320, 200));
        Self.inputAutomationModuleJList.setMinimumSize(TDimension.Create(200, 0));
        Self.inputAutomationModuleJList.addListSelectionListener(TListSelectionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.valueChanged(evt: TListSelectionEvent);
begin
                Self.inputAutomationModuleJListValueChanged(evt);
end;
*));
        Self.jScrollPane1.setViewportView(Self.inputAutomationModuleJList);
        inputAutomationModuleJPanelLayout := TGroupLayout.Create(Self.inputAutomationModuleJPanel);
        Self.inputAutomationModuleJPanel.setLayout(inputAutomationModuleJPanelLayout);
        inputAutomationModuleJPanelLayout.setHorizontalGroup(inputAutomationModuleJPanelLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(inputAutomationModuleJPanelLayout.createSequentialGroup().addComponent(Self.jScrollPane1, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 199, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addContainerGap(367, TShort.MAX_VALUE)));
        inputAutomationModuleJPanelLayout.setVerticalGroup(inputAutomationModuleJPanelLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(inputAutomationModuleJPanelLayout.createSequentialGroup().addComponent(Self.jScrollPane1, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 330, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addContainerGap(Tjavax.swing.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE)));
        Self.gameRobotJTabbedPane.addTab('Modules', Self.inputAutomationModuleJPanel);
        automationModuleConfigurationJPanelLayout := TGroupLayout.Create(Self.automationModuleConfigurationJPanel);
        Self.automationModuleConfigurationJPanel.setLayout(automationModuleConfigurationJPanelLayout);
        automationModuleConfigurationJPanelLayout.setHorizontalGroup(automationModuleConfigurationJPanelLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGap(0, 566, TShort.MAX_VALUE));
        automationModuleConfigurationJPanelLayout.setVerticalGroup(automationModuleConfigurationJPanelLayout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGap(0, 334, TShort.MAX_VALUE));
        Self.gameRobotJTabbedPane.addTab('Configuration', Self.automationModuleConfigurationJPanel);
        Self.processingJMenu.setText('Processing');
        Self.processingJMenu.setToolTipText('Set module processing state');
        Self.startJMenuItem.setText(Self.commonStrings.START);
        Self.startJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.startJMenuItemActionPerformed(evt);
end;
*));
        Self.processingJMenu.add(Self.startJMenuItem);
        Self.stopJMenuItem.setText('Stop');
        Self.stopJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.stopJMenuItemActionPerformed(evt);
end;
*));
        Self.processingJMenu.add(Self.stopJMenuItem);
        Self.mainJMenuBar.add(Self.processingJMenu);
        Self.optionsJMenu.setText('Options');
        Self.optionsJMenu.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.optionsJMenuActionPerformed(evt);
end;
*));
        Self.stopOnFocusJCheckBoxMenuItem.setSelected(True);
        Self.stopOnFocusJCheckBoxMenuItem.setEnabled(False);
        Self.stopOnFocusJCheckBoxMenuItem.setLabel('Stop Module On Focus');
        Self.stopOnFocusJCheckBoxMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.stopOnFocusJCheckBoxMenuItemActionPerformed(evt);
end;
*));
        Self.optionsJMenu.add(Self.stopOnFocusJCheckBoxMenuItem);
        Self.mainJMenuBar.add(Self.optionsJMenu);
        Self.toolsJMenu.setText('Help');
        Self.helpJMenuItem.setText('Help');
        Self.helpJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.helpJMenuItemActionPerformed(evt);
end;
*));
        Self.toolsJMenu.add(Self.helpJMenuItem);
        Self.updatesJMenuItem.setText('Updates');
        Self.updatesJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.updatesJMenuItemActionPerformed(evt);
end;
*));
        Self.toolsJMenu.add(Self.updatesJMenuItem);
        Self.subscriptionJMenuItem.setText('Subscription');
        Self.subscriptionJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.subscriptionJMenuItemActionPerformed(evt);
end;
*));
        Self.toolsJMenu.add(Self.subscriptionJMenuItem);
        Self.modulesJMenuItem.setText('Module Manager');
        Self.modulesJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.modulesJMenuItemActionPerformed(evt);
end;
*));
        Self.toolsJMenu.add(Self.modulesJMenuItem);
        Self.aboutJMenuItem.setText('About');
        Self.aboutJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.aboutJMenuItemActionPerformed(evt);
end;
*));
        Self.toolsJMenu.add(Self.aboutJMenuItem);
        Self.mainJMenuBar.add(Self.toolsJMenu);
        Self.setJMenuBar(Self.mainJMenuBar);
        layout := TGroupLayout.Create(Self.getContentPane());
        Self.getContentPane().setLayout(layout);
        layout.setHorizontalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.gameRobotJTabbedPane, Tjavax.swing.GroupLayout.Alignment.TRAILING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 571, TShort.MAX_VALUE));
        layout.setVerticalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.gameRobotJTabbedPane, Tjavax.swing.GroupLayout.Alignment.TRAILING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 359, TShort.MAX_VALUE));
        Self.pack();
end;
    

procedure TInputAutomationJFrame.subscriptionJMenuItemActionPerformed(evt: TActionEvent);
begin
        try
            TDesktop.getDesktop().browse(Self.uri);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'subscriptionJMenuItemActionPerformed', e);
            end;
        end;
end;
    

procedure TInputAutomationJFrame.updatesJMenuItemActionPerformed(evt: TActionEvent);
begin
        try
            TDesktop.getDesktop().browse(Self.uri);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'updatesJMenuItemActionPerformed', e);
            end;
        end;
end;
    

procedure TInputAutomationJFrame.aboutJMenuItemActionPerformed(evt: TActionEvent);
var
  textJDialog: TJDialog;
begin
        textJDialog := TBasicTextJDialog.Create('Copyright (c) 2002-2007 AllBinary');
        textJDialog.setVisible(True);
        textJDialog.setLocationRelativeTo(Self);
end;
    

procedure TInputAutomationJFrame.modulesJMenuItemActionPerformed(evt: TActionEvent);
begin
        try
            TDesktopBundle.Create().start();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'modulesJMenuItemActionPerformed', e);
            end;
        end;
end;
    

procedure TInputAutomationJFrame.helpJMenuItemActionPerformed(evt: TActionEvent);
begin
        TJavaHelpUtil.getInstance().show(Self.helpSet);
end;
    

procedure TInputAutomationJFrame.stopOnFocusJCheckBoxMenuItemActionPerformed(evt: TActionEvent);
begin
end;
    

procedure TInputAutomationJFrame.optionsJMenuActionPerformed(evt: TActionEvent);
begin
end;
    

procedure TInputAutomationJFrame.formWindowLostFocus(evt: TWindowEvent);
begin
        Self.logUtil.putF('Nothing', Self, 'focusLost');
end;
    

procedure TInputAutomationJFrame.formWindowGainedFocus(evt: TWindowEvent);
begin
        if Self.stopOnFocusJCheckBoxMenuItem.isSelected() then begin
            Self.logUtil.putF('Stopping', Self, 'focusGained');
            if (Self.runnableInterface) <> (nil) then begin
                Self.runnableInterface.setRunning(False);
            end;
        end;
end;
    

procedure TInputAutomationJFrame.formFocusLost(evt: TFocusEvent);
begin
end;
    

procedure TInputAutomationJFrame.formFocusGained(evt: TFocusEvent);
begin
end;
    

procedure TInputAutomationJFrame.inputAutomationModuleJListValueChanged(evt: TListSelectionEvent);
var
  gameAutomationRobotModuleNameString: string;
  layout: TGroupLayout;
begin
        try
            gameAutomationRobotModuleNameString := string(Self.inputAutomationModuleJList.getSelectedValue());
            if (gameAutomationRobotModuleNameString) <> ('') then begin
                Self.inputAutomationModuleInterface := Self.inputAutomationModuleFactory.getInstance(gameAutomationRobotModuleNameString);
                Self.getAutomationModuleConfigurationJPanel().removeAll();
                layout := TGroupLayout(Self.getAutomationModuleConfigurationJPanel().getLayout());
                layout.setHorizontalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGap(0, 395, TShort.MAX_VALUE).addComponent(Self.inputAutomationModuleInterface.getConfigurationJPanel(), Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE));
                layout.setVerticalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGap(0, 256, TShort.MAX_VALUE).addComponent(Self.inputAutomationModuleInterface.getConfigurationJPanel(), Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE));
                Self.gameRobotJTabbedPane.setEnabledAt(1, True);
                Self.logUtil.putF('Setting Module: ' + gameAutomationRobotModuleNameString + ' and Configuration JPanel', Self, 'gameAutomationRobotModuleJListValueChanged');
            end else begin
                Self.logUtil.putF('Module name was null', Self, 'gameAutomationRobotModuleJListValueChanged');
                Self.gameRobotJTabbedPane.setEnabledAt(1, False);
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'gameAutomationRobotModuleJListValueChanged', e);
            end;
        end;
end;
    

procedure TInputAutomationJFrame.stopJMenuItemActionPerformed(evt: TActionEvent);
begin
        if (Self.runnableInterface) <> (nil) then begin
            Self.runnableInterface.setRunning(False);
        end else begin
            Self.noModuleSelectedJDialog.setVisible(True);
            Self.noModuleSelectedJDialog.setLocationRelativeTo(Self);
        end;
end;
    

procedure TInputAutomationJFrame.startJMenuItemActionPerformed(evt: TActionEvent);
begin
        try
            Self.logUtil.putF('Starting', Self, 'startJMenuItemActionPerformed');
            if (Self.inputAutomationModuleInterface) <> (nil) then begin
                Self.runnableInterface := Self.inputAutomationModuleInterface.getInstance();
                if (Self.runnableInterface) <> (nil) then begin
                    Self.thread := TThread.Create(True);
                    TJava.Nothing;
                    Self.thread.start();
                end else begin
                    Self.logUtil.putF('Runnnable was null', Self, 'startJMenuItemActionPerformed');
                    Self.noModuleSelectedJDialog.setVisible(True);
                    Self.noModuleSelectedJDialog.setLocationRelativeTo(Self);
                end;
            end else begin
                Self.logUtil.putF('InputAutomationModuleInterface was null', Self, 'startJMenuItemActionPerformed');
                Self.noModuleSelectedJDialog.setVisible(True);
                Self.noModuleSelectedJDialog.setLocationRelativeTo(Self);
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'startJMenuItemActionPerformed', e);
            end;
        end;
end;
    

class function TInputAutomationJFrame.getInstance: TInputAutomationJFrame;
begin
        Exit(TInputAutomationJFrame.INPUTAUTOMATION_JFRAME);
end;
    

class procedure TInputAutomationJFrame.destroy;
begin
        TInputAutomationJFrame.INPUTAUTOMATION_JFRAME.setVisible(False);
end;
    

class procedure TInputAutomationJFrame.create(inputAutomationBundleActivatorListenerInterface: IInputAutomationBundleActivatorListenerInterface);
var
  appUrlGlobals: TAppUrlGlobals;
begin
        TLogConfigTypeFactory.getInstance();
        appUrlGlobals := TAppUrlGlobals.Create();
        appUrlGlobals.setWebappPath('G:/mnt/bc/mydev/work_automation/automation/run/');
        URLGLOBALS.init(appUrlGlobals);
        TWebappClassLoaderInfo.setLoader(appUrlGlobals.ClassType.getClassLoader());
        Tjava.awt.EventQueue.invokeLater(TARunnable.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.run;
var
  logUtil: TLogUtil;
  commonStrings: TCommonStrings;
begin
                logUtil := TLogUtil.getInstance();
                commonStrings := TCommonStrings.getInstance();
                try
                    logUtil.putF('Running', Self, commonStrings.RUN);
                    TInputAutomationJFrame.INPUTAUTOMATION_JFRAME := TInputAutomationJFrame.Create();
                    TInputRobotFactory.getInstance().addListener(TInputAutomationJFrame.getInstance());
                    if (inputAutomationBundleActivatorListenerInterface) <> (nil) then begin
                        inputAutomationBundleActivatorListenerInterface.registerAsService();
                        inputAutomationBundleActivatorListenerInterface.useServices();
                    end;
                    TInputAutomationJFrame.INPUTAUTOMATION_JFRAME.setVisible(True);
                except
                    on e: SysUtils.Exception do begin
                    logUtil.put(commonStrings.EXCEPTION, Self, commonStrings.RUN, e);
                    end;
                end;
end;
*));
end;
    

// throws Exception
class procedure TInputAutomationJFrame.main(args: TArray<string>);
begin
        TInputAutomationJFrame.create(nil);
end;
    

function TInputAutomationJFrame.getAutomationModuleConfigurationJPanel: TJPanel;
begin
        Exit(Self.automationModuleConfigurationJPanel);
end;
    

procedure TInputAutomationJFrame.setAutomationModuleConfigurationJPanel(automationModuleConfigurationJPanel: TJPanel);
begin
        Self.automationModuleConfigurationJPanel := automationModuleConfigurationJPanel;
end;
    

procedure TInputAutomationJFrame.onAdd(inputAutomationRobotChangeEvent: TInputAutomationRobotChangeEvent);
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, Self, 'onAdd');
            TInputRobotFactory.getInstance().add(inputAutomationRobotChangeEvent.getInputAutomationRobotInterfaceWrapper().getInputRobotInterface());
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'onAdd', e);
            end;
        end;
end;
    

procedure TInputAutomationJFrame.onRemove(inputAutomationRobotChangeEvent: TInputAutomationRobotChangeEvent);
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, Self, 'onRemove');
            TInputRobotFactory.getInstance().add(inputAutomationRobotChangeEvent.getInputAutomationRobotInterfaceWrapper().getInputRobotInterface());
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'onRemove', e);
            end;
        end;
end;
    

procedure TInputAutomationJFrame.onAdd(inputAutomationConfigurationChangeEvent: TInputAutomationConfigurationModuleChangeEvent);
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, Self, 'onAdd');
            Self.inputAutomationModuleConfigurations.add(inputAutomationConfigurationChangeEvent.getInputAutomationModuleConfiguration());
            Self.init();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'onAdd', e);
            end;
        end;
end;
    

procedure TInputAutomationJFrame.onRemove(inputAutomationConfigurationChangeEvent: TInputAutomationConfigurationModuleChangeEvent);
var
  inputAutomationConfiguration: TInputAutomationConfiguration;
  inputAutomationModuleConfigurationList: IList<TInputAutomationModuleConfiguration>;
  logUtil: TLogUtil;
  commonStrings: TCommonStrings;
  inputAutomationModuleConfigurations: TInputAutomationModuleConfigurations;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, Self, 'onRemove');
            inputAutomationConfiguration := TInputAutomationConfigurationFactory.getInstance().inputAutomationConfiguration;
            inputAutomationModuleConfigurationList := inputAutomationConfiguration.getInputAutomationModuleConfigurationList();
            if (inputAutomationModuleConfigurationList) = (nil) then begin
                logUtil := TLogUtil.getInstance();
                commonStrings := TCommonStrings.getInstance();
                logUtil.putF('inputAutomationModuleConfigurationList: ' + TJava.ToString(inputAutomationModuleConfigurationList), Self, commonStrings.INIT);
                raise SysUtils.Exception.Create('');
            end;
            inputAutomationModuleConfigurations := TInputAutomationModuleConfigurations.Create(inputAutomationConfiguration.getInputAutomationModuleConfigurationList());
            inputAutomationModuleConfigurations.remove(inputAutomationConfigurationChangeEvent.getInputAutomationModuleConfiguration());
            Self.init();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'onRemove', e);
            end;
        end;
end;

initialization
  

end.

