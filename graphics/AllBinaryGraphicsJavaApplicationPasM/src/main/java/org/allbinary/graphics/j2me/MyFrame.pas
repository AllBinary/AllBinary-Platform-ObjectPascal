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
// package org.allbinary.graphics.j2me
unit MyFrame;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, XslHelper, DomHelper, NewWorkAreaJDialog, RotateJDialog, WorkAreaDom, WorkAreaJPanel, WorkAreaJPanelInterface, MyCanvasEvent, MyCanvasEventService, MyCanvasEventSource, FileJDialog, FileJDialogListenerInterface, HashMapJDialogListenerInterface, LOGGING, GuiLog, LogUtil, SmallIntegerSingletonFactory, AngleFactory, CommonLabels, CommonStrings, Document, ARunnable, MouseEvent, ActionEvent, ChangeEvent, WindowEvent, KeyEvent, JButton, JMenuItem, JMenu, JPanel, JTabbedPane, JToolBar, JMenuBar, JLabel, JFrame, KeyListener;

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

  TMyFrame = class(TJFrame, IFileJDialogListenerInterface, IHashMapJDialogListenerInterface, IKeyListener)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    guiLog: TGuiLog;
    xslHelper: TXslHelper;
    JAVA_TEMPLATE: string;
    SAVEEXTENSION: string;
    JAVAEXTENSION: string;
    fileJDialog: TFileJDialog;
    rotateJDialog: TRotateJDialog;
    animateJButton: TJButton;
    autoDamageJMenuItem: TJMenuItem;
    autoExplodeJMenuItem: TJMenuItem;
    autoGrowJMenuItem: TJMenuItem;
    autoRotateGenerationJMenuItem: TJMenuItem;
    autoSheildMenuItem: TJMenuItem;
    autoShrinkJMenuItem: TJMenuItem;
    centerJMenuItem: TJMenuItem;
    copyJMenuItem1: TJMenuItem;
    exitJMenuItem: TJMenuItem;
    explodeAllJMenuItem: TJMenuItem;
    exportJMenuItem1: TJMenuItem;
    fileJMenu: TJMenu;
    frameJMenu: TJMenu;
    generateJMenu: TJMenu;
    insertAfterJMenuItem: TJMenuItem;
    insertBeforeJMenuItem: TJMenuItem;
    jButton1: TJButton;
    jButton2: TJButton;
    jButton3: TJButton;
    jButton4: TJButton;
    jButton41: TJButton;
    jButton5: TJButton;
    jMenu1: TJMenu;
    jMenuItem1: TJMenuItem;
    jPanel1: TJPanel;
    jTabbedPane: TJTabbedPane;
    jToolBar1: TJToolBar;
    mainJPanel: TJPanel;
    menuJMenuBar: TJMenuBar;
    newJMenuItem: TJMenuItem;
    nextFrameJMenuItem: TJMenuItem;
    objectJMenu: TJMenu;
    openJButton: TJButton;
    openJMenuItem: TJMenuItem;
    playJButton: TJButton;
    previousFrameJMenuItem: TJMenuItem;
    removeJMenuItem: TJMenuItem;
    saveAsJMenuItem: TJMenuItem;
    saveJButton: TJButton;
    saveJMenuItem: TJMenuItem;
    statusJPanel: TJPanel;
    stopJjButton: TJButton;
    viewJMenu: TJMenu;
    zoomInJMenuItem: TJMenuItem;
    zoomOutJMenuItem: TJMenuItem;
    class var MAXWORKAREAS: Integer;
    class var numberOfWorkAreas: Integer;
    class var PATH: string;
    class var SAVE_PATH: string;
    class var TEMPLATE_EXPORT_PATH: string;
    class var statusJLabel: TJLabel;
    procedure InitFields;
        constructor Create;
        procedure initComponents;
        procedure explodeAllJMenuItemMousePressed(evt: TMouseEvent);
        procedure autoExplodeJMenuItemMousePressed(evt: TMouseEvent);
        procedure stopJjButtonMousePressed(evt: TMouseEvent);
        procedure playJButtonMousePressed(evt: TMouseEvent);
        procedure autoRotateGenerationJMenuItemMousePressed(evt: TMouseEvent);
        procedure zoomOutJMenuItemMousePressed(evt: TMouseEvent);
        procedure zoomInJMenuItemMousePressed(evt: TMouseEvent);
        procedure openJMenuItemActionPerformed(evt: TActionEvent);
        procedure exportJMenuItem1ActionPerformed(evt: TActionEvent);
        procedure saveJMenuItemMousePressed(evt: TMouseEvent);
        procedure jTabbedPaneStateChanged(evt: TChangeEvent);
        procedure frameJMenuActionPerformed(evt: TActionEvent);
        procedure exitJMenuItemActionPerformed(evt: TActionEvent);
        procedure newJMenuItemActionPerformed(evt: TActionEvent);
        procedure fileJMenuActionPerformed(evt: TActionEvent);
        procedure exitForm(evt: TWindowEvent);
        procedure openJButtonActionPerformed(evt: TActionEvent);
        procedure jButton2ActionPerformed(evt: TActionEvent);
        procedure centerJMenuItemActionPerformed(evt: TActionEvent);
        procedure saveJButtonActionPerformed(evt: TActionEvent);
        procedure jButton1ActionPerformed(evt: TActionEvent);
        procedure jMenuItem1ActionPerformed(evt: TActionEvent);
        procedure onFiles(files: TArray<TFile>); virtual;
        procedure newGraphics;
        procedure openGraphics;
        procedure export;
        procedure save;
        procedure onHashMap(hashMap: TJavaHashMap); virtual;
        function getSelectedWorkArea: IWorkAreaJPanelInterface;
        procedure updateSelectedWorkArea; virtual;
        procedure add(newCanvasInterface: IWorkAreaJPanelInterface); virtual;
        procedure keyPressed(keyEvent: TKeyEvent); virtual;
        procedure keyReleased(keyEvent: TKeyEvent); virtual;
        procedure keyTyped(keyEvent: TKeyEvent); virtual;
        class procedure main(args: TArray<string>); static;
  end;

implementation
uses
  Dimension, WindowAdapter, ActionListener, MouseAdapter, GridLayout, ChangeListener;



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


procedure TMyFrame.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.guiLog := TGuiLog.getInstance();
  Self.xslHelper := TXslHelper.getInstance();
  Self.JAVA_TEMPLATE := 'svgExport.xsl';
  Self.SAVEEXTENSION := '.gxml';
  Self.JAVAEXTENSION := '.javax';
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end;
    

constructor TMyFrame.Create;
begin
    inherited Create;
    InitFields;
        Self.initComponents();
        Self.setSize(TDimension.Create(550, 400));
        Self.mainJPanel.setSize(TDimension.Create(550, 400));
        Self.jTabbedPane.setSize(TDimension.Create(550, 400));
        Self.fileJDialog := TFileJDialog.Create();
        Self.fileJDialog.addFinishedListener(Self);
        Self.rotateJDialog := TRotateJDialog.Create(Self, False);
end;
    

procedure TMyFrame.initComponents;
begin
        Self.jToolBar1 := TJToolBar.Create();
        Self.jButton2 := TJButton.Create();
        Self.saveJButton := TJButton.Create();
        Self.jButton1 := TJButton.Create();
        Self.openJButton := TJButton.Create();
        Self.jButton3 := TJButton.Create();
        Self.jButton4 := TJButton.Create();
        Self.jButton41 := TJButton.Create();
        Self.jButton5 := TJButton.Create();
        Self.animateJButton := TJButton.Create();
        Self.playJButton := TJButton.Create();
        Self.stopJjButton := TJButton.Create();
        Self.jPanel1 := TJPanel.Create();
        Self.mainJPanel := TJPanel.Create();
        Self.jTabbedPane := TJTabbedPane.Create();
        Self.statusJPanel := TJPanel.Create();
        TMyFrame.statusJLabel := TJLabel.Create();
        Self.menuJMenuBar := TJMenuBar.Create();
        Self.fileJMenu := TJMenu.Create();
        Self.newJMenuItem := TJMenuItem.Create();
        Self.openJMenuItem := TJMenuItem.Create();
        Self.saveJMenuItem := TJMenuItem.Create();
        Self.saveAsJMenuItem := TJMenuItem.Create();
        Self.exportJMenuItem1 := TJMenuItem.Create();
        Self.exitJMenuItem := TJMenuItem.Create();
        Self.viewJMenu := TJMenu.Create();
        Self.zoomInJMenuItem := TJMenuItem.Create();
        Self.zoomOutJMenuItem := TJMenuItem.Create();
        Self.objectJMenu := TJMenu.Create();
        Self.explodeAllJMenuItem := TJMenuItem.Create();
        Self.frameJMenu := TJMenu.Create();
        Self.previousFrameJMenuItem := TJMenuItem.Create();
        Self.nextFrameJMenuItem := TJMenuItem.Create();
        Self.removeJMenuItem := TJMenuItem.Create();
        Self.copyJMenuItem1 := TJMenuItem.Create();
        Self.insertAfterJMenuItem := TJMenuItem.Create();
        Self.insertBeforeJMenuItem := TJMenuItem.Create();
        Self.generateJMenu := TJMenu.Create();
        Self.centerJMenuItem := TJMenuItem.Create();
        Self.autoDamageJMenuItem := TJMenuItem.Create();
        Self.autoExplodeJMenuItem := TJMenuItem.Create();
        Self.autoGrowJMenuItem := TJMenuItem.Create();
        Self.jMenuItem1 := TJMenuItem.Create();
        Self.autoRotateGenerationJMenuItem := TJMenuItem.Create();
        Self.autoSheildMenuItem := TJMenuItem.Create();
        Self.autoShrinkJMenuItem := TJMenuItem.Create();
        Self.jMenu1 := TJMenu.Create();
        Self.addWindowListener(TWindowAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.windowClosing(evt: TWindowEvent);
begin
                Self.exitForm(evt);
end;
*));
        Self.jButton2.setText('New');
        Self.jButton2.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.jButton2ActionPerformed(evt);
end;
*));
        Self.jToolBar1.add(Self.jButton2);
        Self.saveJButton.setText('Save');
        Self.saveJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.saveJButtonActionPerformed(evt);
end;
*));
        Self.jToolBar1.add(Self.saveJButton);
        Self.jButton1.setText('Export');
        Self.jButton1.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.jButton1ActionPerformed(evt);
end;
*));
        Self.jToolBar1.add(Self.jButton1);
        Self.openJButton.setText('Open');
        Self.openJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.openJButtonActionPerformed(evt);
end;
*));
        Self.jToolBar1.add(Self.openJButton);
        Self.jButton3.setText('Copy');
        Self.jToolBar1.add(Self.jButton3);
        Self.jButton4.setText('Insert Before');
        Self.jToolBar1.add(Self.jButton4);
        Self.jButton41.setText('Insert After');
        Self.jToolBar1.add(Self.jButton41);
        Self.jButton5.setText('Delete');
        Self.jToolBar1.add(Self.jButton5);
        Self.animateJButton.setText('AnimateEdit');
        Self.jToolBar1.add(Self.animateJButton);
        Self.playJButton.setText('Play');
        Self.playJButton.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.playJButtonMousePressed(evt);
end;
*));
        Self.jToolBar1.add(Self.playJButton);
        Self.stopJjButton.setText('Stop');
        Self.stopJjButton.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.stopJjButtonMousePressed(evt);
end;
*));
        Self.jToolBar1.add(Self.stopJjButton);
        Self.getContentPane().add(Self.jToolBar1, Tjava.awt.BorderLayout.NORTH);
        Self.jPanel1.setLayout(TGridLayout.Create(1, 0));
        Self.mainJPanel.setLayout(TGridLayout.Create(1, 0));
        Self.jTabbedPane.setMinimumSize(TDimension.Create(550, 400));
        Self.jTabbedPane.addChangeListener(TChangeListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.stateChanged(evt: TChangeEvent);
begin
                Self.jTabbedPaneStateChanged(evt);
end;
*));
        Self.mainJPanel.add(Self.jTabbedPane);
        Self.jPanel1.add(Self.mainJPanel);
        Self.getContentPane().add(Self.jPanel1, Tjava.awt.BorderLayout.CENTER);
        Self.statusJPanel.setLayout(TGridLayout.Create(1, 0));
        TMyFrame.statusJLabel.setText('Status Bar');
        Self.statusJPanel.add(TMyFrame.statusJLabel);
        Self.getContentPane().add(Self.statusJPanel, Tjava.awt.BorderLayout.SOUTH);
        Self.fileJMenu.setText('File');
        Self.fileJMenu.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.fileJMenuActionPerformed(evt);
end;
*));
        Self.newJMenuItem.setText('New');
        Self.newJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.newJMenuItemActionPerformed(evt);
end;
*));
        Self.fileJMenu.add(Self.newJMenuItem);
        Self.openJMenuItem.setText('Open');
        Self.openJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.openJMenuItemActionPerformed(evt);
end;
*));
        Self.fileJMenu.add(Self.openJMenuItem);
        Self.saveJMenuItem.setText('Save');
        Self.saveJMenuItem.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.saveJMenuItemMousePressed(evt);
end;
*));
        Self.fileJMenu.add(Self.saveJMenuItem);
        Self.saveAsJMenuItem.setText('SaveAs');
        Self.fileJMenu.add(Self.saveAsJMenuItem);
        Self.exportJMenuItem1.setText('Export');
        Self.exportJMenuItem1.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.exportJMenuItem1ActionPerformed(evt);
end;
*));
        Self.fileJMenu.add(Self.exportJMenuItem1);
        Self.exitJMenuItem.setText('Exit');
        Self.exitJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.exitJMenuItemActionPerformed(evt);
end;
*));
        Self.fileJMenu.add(Self.exitJMenuItem);
        Self.menuJMenuBar.add(Self.fileJMenu);
        Self.viewJMenu.setText('View');
        Self.zoomInJMenuItem.setText('Zoom In');
        Self.zoomInJMenuItem.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.zoomInJMenuItemMousePressed(evt);
end;
*));
        Self.viewJMenu.add(Self.zoomInJMenuItem);
        Self.zoomOutJMenuItem.setText('Zoom Out');
        Self.zoomOutJMenuItem.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.zoomOutJMenuItemMousePressed(evt);
end;
*));
        Self.viewJMenu.add(Self.zoomOutJMenuItem);
        Self.menuJMenuBar.add(Self.viewJMenu);
        Self.objectJMenu.setText('Objects');
        Self.explodeAllJMenuItem.setText('Explode All');
        Self.explodeAllJMenuItem.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.explodeAllJMenuItemMousePressed(evt);
end;
*));
        Self.objectJMenu.add(Self.explodeAllJMenuItem);
        Self.menuJMenuBar.add(Self.objectJMenu);
        Self.frameJMenu.setText('Frame');
        Self.frameJMenu.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.frameJMenuActionPerformed(evt);
end;
*));
        Self.previousFrameJMenuItem.setText('Previous');
        Self.frameJMenu.add(Self.previousFrameJMenuItem);
        Self.nextFrameJMenuItem.setText(TCommonLabels.getInstance().NEXT);
        Self.frameJMenu.add(Self.nextFrameJMenuItem);
        Self.removeJMenuItem.setText('Remove');
        Self.frameJMenu.add(Self.removeJMenuItem);
        Self.copyJMenuItem1.setText('Copy');
        Self.frameJMenu.add(Self.copyJMenuItem1);
        Self.insertAfterJMenuItem.setText('Ins After');
        Self.frameJMenu.add(Self.insertAfterJMenuItem);
        Self.insertBeforeJMenuItem.setText('Ins Before');
        Self.frameJMenu.add(Self.insertBeforeJMenuItem);
        Self.menuJMenuBar.add(Self.frameJMenu);
        Self.generateJMenu.setText('Generate');
        Self.centerJMenuItem.setText('Center');
        Self.centerJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.centerJMenuItemActionPerformed(evt);
end;
*));
        Self.generateJMenu.add(Self.centerJMenuItem);
        Self.autoDamageJMenuItem.setText('Damage');
        Self.generateJMenu.add(Self.autoDamageJMenuItem);
        Self.autoExplodeJMenuItem.setText('Explode');
        Self.autoExplodeJMenuItem.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.autoExplodeJMenuItemMousePressed(evt);
end;
*));
        Self.generateJMenu.add(Self.autoExplodeJMenuItem);
        Self.autoGrowJMenuItem.setText('Grow');
        Self.generateJMenu.add(Self.autoGrowJMenuItem);
        Self.jMenuItem1.setText('Mirror');
        Self.jMenuItem1.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.jMenuItem1ActionPerformed(evt);
end;
*));
        Self.generateJMenu.add(Self.jMenuItem1);
        Self.autoRotateGenerationJMenuItem.setText('Rotate');
        Self.autoRotateGenerationJMenuItem.addMouseListener(TMouseAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.mousePressed(evt: TMouseEvent);
begin
                Self.autoRotateGenerationJMenuItemMousePressed(evt);
end;
*));
        Self.generateJMenu.add(Self.autoRotateGenerationJMenuItem);
        Self.autoSheildMenuItem.setText('Shield');
        Self.generateJMenu.add(Self.autoSheildMenuItem);
        Self.autoShrinkJMenuItem.setText('Shrink');
        Self.generateJMenu.add(Self.autoShrinkJMenuItem);
        Self.menuJMenuBar.add(Self.generateJMenu);
        Self.jMenu1.setText('Help');
        Self.menuJMenuBar.add(Self.jMenu1);
        Self.setJMenuBar(Self.menuJMenuBar);
        Self.pack();
end;
    

procedure TMyFrame.explodeAllJMenuItemMousePressed(evt: TMouseEvent);
begin
        try
            TMyCanvasEventService.fire(TMyCanvasEvent.Create(TObject(TMyCanvasEventSource.Create(TMyCanvasEventService.EXPLODE, nil))));
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'explodeAllJMenuItemMousePressed', e);
            end;
        end;
end;
    

procedure TMyFrame.autoExplodeJMenuItemMousePressed(evt: TMouseEvent);
begin
        try
            TMyCanvasEventService.fire(TMyCanvasEvent.Create(TObject(TMyCanvasEventSource.Create(TMyCanvasEventService.AUTOEXPLODE, nil))));
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'autoExplodeJMenuItemMousePressed', e);
            end;
        end;
end;
    

procedure TMyFrame.stopJjButtonMousePressed(evt: TMouseEvent);
begin
        Self.getSelectedWorkArea().stop();
end;
    

procedure TMyFrame.playJButtonMousePressed(evt: TMouseEvent);
begin
        Self.getSelectedWorkArea().play();
end;
    

procedure TMyFrame.autoRotateGenerationJMenuItemMousePressed(evt: TMouseEvent);
begin
        Self.rotateJDialog.setVisible(True);
end;
    

procedure TMyFrame.zoomOutJMenuItemMousePressed(evt: TMouseEvent);
begin
        Self.getSelectedWorkArea().changeZoom(-1);
end;
    

procedure TMyFrame.zoomInJMenuItemMousePressed(evt: TMouseEvent);
begin
        Self.getSelectedWorkArea().changeZoom(1);
end;
    

procedure TMyFrame.openJMenuItemActionPerformed(evt: TActionEvent);
begin
        Self.openGraphics();
end;
    

procedure TMyFrame.exportJMenuItem1ActionPerformed(evt: TActionEvent);
begin
        Self.export();
end;
    

procedure TMyFrame.saveJMenuItemMousePressed(evt: TMouseEvent);
begin
        Self.save();
end;
    

procedure TMyFrame.jTabbedPaneStateChanged(evt: TChangeEvent);
begin
        Self.updateSelectedWorkArea();
end;
    

procedure TMyFrame.frameJMenuActionPerformed(evt: TActionEvent);
begin
end;
    

procedure TMyFrame.exitJMenuItemActionPerformed(evt: TActionEvent);
begin
        Halt(0);
end;
    

procedure TMyFrame.newJMenuItemActionPerformed(evt: TActionEvent);
begin
        Self.newGraphics();
end;
    

procedure TMyFrame.fileJMenuActionPerformed(evt: TActionEvent);
begin
end;
    

procedure TMyFrame.exitForm(evt: TWindowEvent);
begin
        Halt(0);
end;
    

procedure TMyFrame.openJButtonActionPerformed(evt: TActionEvent);
begin
        Self.openGraphics();
end;
    

procedure TMyFrame.jButton2ActionPerformed(evt: TActionEvent);
begin
        Self.newGraphics();
end;
    

procedure TMyFrame.centerJMenuItemActionPerformed(evt: TActionEvent);
begin
        try
            TMyCanvasEventService.fire(TMyCanvasEvent.Create(TObject(TMyCanvasEventSource.Create(TMyCanvasEventService.CENTER, nil))));
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'centerJMenuItemActionPerformed', e);
            end;
        end;
end;
    

procedure TMyFrame.saveJButtonActionPerformed(evt: TActionEvent);
begin
        Self.save();
end;
    

procedure TMyFrame.jButton1ActionPerformed(evt: TActionEvent);
begin
        Self.export();
end;
    

procedure TMyFrame.jMenuItem1ActionPerformed(evt: TActionEvent);
begin
        try
            Self.getSelectedWorkArea().autoMirror();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'centerJMenuItemActionPerformed', e);
            end;
        end;
end;
    

procedure TMyFrame.onFiles(files: TArray<TFile>);
var
  document: TDocument;
  workAreaJPanel: TWorkAreaJPanel;
  index: Integer;
begin
        try
            Self.logUtil.putF('Reading: ' + TJava.ToString(files), Self, 'onFiles');
            for index := 0 to System.Length(files) - 1 do begin
                document := TDomHelper.getInstance().createDocument(files[index]);
                workAreaJPanel := TWorkAreaJPanel.Create(TWorkAreaDom.Create(document), Self.getSize());
                workAreaJPanel.setLayout(TGridLayout.Create(1, 1));
                Self.add(IWorkAreaJPanelInterface(Pointer(workAreaJPanel)));
            end;
            Self.fileJDialog.setVisible(False);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'onFiles', e);
            end;
        end;
end;
    

procedure TMyFrame.newGraphics;
var
  newName: string;
  dim: TDimension;
  newDialog: TNewWorkAreaJDialog;
begin
        try
            newName := 'graphic' + TJava.ToString(TMyFrame.numberOfWorkAreas);
            dim := Self.getSize();
            newDialog := TNewWorkAreaJDialog.Create(Self, False, dim, newName);
        except
            on e: SysUtils.Exception do begin
            if LOGGING.contains(LOGGING.MENUEVENT) then begin
                Self.guiLog.put(Self.commonStrings.EXCEPTION, Self, 'newJMenuItemActionPerformed', e);
            end;
            end;
        end;
end;
    

procedure TMyFrame.openGraphics;
begin
        try
            Self.logUtil.putF('Starting', Self, 'openImageJMenuItemActionPerformed');
            Self.fileJDialog.setVisible(True);
        except
            on e: SysUtils.Exception do begin
            if LOGGING.contains(LOGGING.MENUEVENT) then begin
                Self.guiLog.put(Self.commonStrings.EXCEPTION, Self, 'open', e);
            end;
            end;
        end;
end;
    

procedure TMyFrame.export;
var
  workAreaJPanel: IWorkAreaJPanelInterface;
  file_: TFile;
  document: TDocument;
begin
        try
            workAreaJPanel := IWorkAreaJPanelInterface(Pointer(Self.jTabbedPane.getSelectedComponent()));
            file_ := TFile.Create(Self.SAVE_PATH + '/' + workAreaJPanel.getName() + Self.JAVAEXTENSION);
            document := workAreaJPanel.toDocument();
            Self.logUtil.putF('Export: ' + TDomHelper.getInstance().toString(document), Self, 'exportJMenuItem1ActionPerformed');
            Self.xslHelper.export(file_, TJava.ToString(TMyFrame.TEMPLATE_EXPORT_PATH) + '/' + Self.JAVA_TEMPLATE, document);
        except
            on e: SysUtils.Exception do begin
            if LOGGING.contains(LOGGING.MENUEVENT) then begin
                Self.guiLog.put(Self.commonStrings.EXCEPTION, Self, 'export', e);
            end;
            end;
        end;
end;
    

procedure TMyFrame.save;
var
  workAreaJPanel: IWorkAreaJPanelInterface;
begin
        try
            workAreaJPanel := IWorkAreaJPanelInterface(Pointer(Self.jTabbedPane.getSelectedComponent()));
            TDomHelper.getInstance().save(TFile.Create(Self.SAVE_PATH + '/' + workAreaJPanel.getName() + Self.SAVEEXTENSION), workAreaJPanel.toDocument());
        except
            on e: SysUtils.Exception do begin
            if LOGGING.contains(LOGGING.MENUEVENT) then begin
                Self.guiLog.put(Self.commonStrings.EXCEPTION, Self, Self.commonStrings.SAVE, e);
            end;
            end;
        end;
end;
    

// throws Exception
procedure TMyFrame.onHashMap(hashMap: TJavaHashMap);
var
  angleIncrementInteger: Integer;
  totalRotationInteger: Integer;
begin
        angleIncrementInteger := Integer(hashMap.get(IntToStr(0)));
        totalRotationInteger := Integer(hashMap.get(IntToStr(1)));
        Self.getSelectedWorkArea().autoRotate(angleIncrementInteger, totalRotationInteger);
end;
    

function TMyFrame.getSelectedWorkArea: IWorkAreaJPanelInterface;
begin
        Exit(IWorkAreaJPanelInterface(Pointer(Self.jTabbedPane.getSelectedComponent())));
end;
    

procedure TMyFrame.updateSelectedWorkArea;
var
  numberOfTabs: Integer;
  workAreaJPanel: IWorkAreaJPanelInterface;
  index: Integer;
begin
        numberOfTabs := Self.jTabbedPane.getTabCount();
        for index := 0 to numberOfTabs - 1 do begin
            workAreaJPanel := IWorkAreaJPanelInterface(Pointer(Self.jTabbedPane.getComponentAt(index)));
            workAreaJPanel.deselect();
        end;
        workAreaJPanel := IWorkAreaJPanelInterface(Pointer(Self.jTabbedPane.getSelectedComponent()));
        if (workAreaJPanel) <> (nil) then begin
            workAreaJPanel.select();
        end;
end;
    

// throws Exception
procedure TMyFrame.add(newCanvasInterface: IWorkAreaJPanelInterface);
var
  animationThread: TThread;
begin
        try
            Inc(Self.numberOfWorkAreas);
            if (Self.numberOfWorkAreas) = (TMyFrame.MAXWORKAREAS) then begin
                raise SysUtils.Exception.Create('');
            end;
            Self.jTabbedPane.addTab(newCanvasInterface.getName(), TJPanel(newCanvasInterface));
            Self.jTabbedPane.setSelectedComponent(TJPanel(newCanvasInterface));
            animationThread := TThread.Create(True);
            animationThread.start();
            Self.updateSelectedWorkArea();
        except
            on e: SysUtils.Exception do begin
            if LOGGING.contains(LOGGING.GRAPHICSCREATION) then begin
                Self.guiLog.put(Self.commonStrings.EXCEPTION, Self, 'addNewCanvas', e);
            end;
            end;
        end;
end;
    

procedure TMyFrame.keyPressed(keyEvent: TKeyEvent);
begin
        Self.getSelectedWorkArea().keyPressed(keyEvent);
end;
    

procedure TMyFrame.keyReleased(keyEvent: TKeyEvent);
begin
end;
    

procedure TMyFrame.keyTyped(keyEvent: TKeyEvent);
begin
end;
    

class procedure TMyFrame.main(args: TArray<string>);
var
  logUtil: TLogUtil;
begin
        try
            TAngleFactory.getInstance();
            TSmallIntegerSingletonFactory.getInstance().init();
            TMyFrame.Create().show();
        except
            on e: SysUtils.Exception do begin
            logUtil := TLogUtil.getInstance();
            logUtil.put(TCommonStrings.getInstance().EXCEPTION, nil, 'main', e);
            end;
        end;
end;

initialization
  TMyFrame.MAXWORKAREAS := 10;
  TMyFrame.numberOfWorkAreas := 0;
  TMyFrame.PATH := 'G:/mnt/bc/mydev/work/graphics/AllBinaryGraphicsJavaApplication';
  TMyFrame.SAVE_PATH := TJava.ToString(TMyFrame.PATH) + '/save';
  TMyFrame.TEMPLATE_EXPORT_PATH := TJava.ToString(TMyFrame.PATH) + '/templates/export';
  

end.

