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
// package org.allbinary.image.gui
unit ImageToolJFrame;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, FileJDialog, FileJDialogListenerInterface, LogUtil, ImageProcessorInput, ImageProcessorInputCompositeInterface, ColorRange, ColorRangeInterface, ImageAnalysis, ImageAnalysisResults, CommonPhoneStrings, CommonStrings, ActionEvent, JTextField, JDialog, JMenuItem, JLabel, JMenu, JPanel, JMenuBar, JButton, JFrame;

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

  TImageToolJFrame = class(TJFrame, IFileJDialogListenerInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    fileJDialog: TFileJDialog;
    imageProcessorInput: TImageProcessorInput;
    analysisActionJDialog: TJDialog;
    analyzeJMenuItem: TJMenuItem;
    blueJLabel: TJLabel;
    colorRangeJLabel: TJLabel;
    createStripImageJMenuItem: TJMenuItem;
    fileJMenu: TJMenu;
    generateSpriteSplitterMenuItem: TJMenuItem;
    generateRotationMenuItem: TJMenuItem;
    generateMirrorSpriteMenuItem: TJMenuItem;
    generateRotationSpriteJMenuItem: TJMenuItem;
    greenJLabel: TJLabel;
    jPanel1: TJPanel;
    mainJMenuBar: TJMenuBar;
    maxBlueJTextField: TJTextField;
    maxGreenJTextField: TJTextField;
    maxJLabel: TJLabel;
    maxRedJTextField: TJTextField;
    minBlueJTextField: TJTextField;
    minGreenJTextField: TJTextField;
    minJLabel: TJLabel;
    minRedJTextField: TJTextField;
    mirrorJMenuItem: TJMenuItem;
    okJButton: TJButton;
    openImageJMenuItem: TJMenuItem;
    processingJMenu: TJMenu;
    redJLabel: TJLabel;
    scaleImagesJMenuItem: TJMenuItem;
    canvasImagesJMenuItem: TJMenuItem;
    createIconImagesJMenuItem: TJMenuItem;
    titleJLabel: TJLabel;
    class var imageProcessorInputCompositeInterface: IImageProcessorInputCompositeInterface;
    procedure InitFields;
        constructor Create;
        procedure initComponents;
        procedure createStripImageJMenuItemActionPerformed(evt: TActionEvent);
        procedure okJButtonActionPerformed(evt: TActionEvent);
        procedure processingJMenuActionPerformed(evt: TActionEvent);
        procedure openImageJMenuItemActionPerformed(evt: TActionEvent);
        procedure onFiles(files: TArray<TFile>); virtual;
        procedure fileJMenuActionPerformed(evt: TActionEvent);
        procedure analyzeJMenuItemActionPerformed(evt: TActionEvent);
        procedure generateRotationSpriteJMenuItemActionPerformed(evt: TActionEvent);
        procedure generateSpriteSplitterMenuItemActionPerformed(evt: TActionEvent);
        procedure generateRotationMenuItemActionPerformed(evt: TActionEvent);
        procedure scaleImagesJMenuItemActionPerformed(evt: TActionEvent);
        procedure createIconsJMenuItemActionPerformed(evt: TActionEvent);
        procedure canvasImagesJMenuItemActionPerformed(evt: TActionEvent);
        procedure generateMirrorSpriteMenuItemActionPerformed(evt: TActionEvent);
        procedure mirrorJMenuItemActionPerformed(evt: TActionEvent);
        function getColorRangeInterface: IColorRangeInterface;
        function getMaxBlueJTextField: TJTextField; virtual;
        procedure setMaxBlueJTextField(maxBlueJTextField: TJTextField); virtual;
        function getMaxGreenJTextField: TJTextField; virtual;
        procedure setMaxGreenJTextField(maxGreenJTextField: TJTextField); virtual;
        function getMaxRedJTextField: TJTextField; virtual;
        procedure setMaxRedJTextField(maxRedJTextField: TJTextField); virtual;
        function getMinBlueJTextField: TJTextField; virtual;
        procedure setMinBlueJTextField(minBlueJTextField: TJTextField); virtual;
        function getMinGreenJTextField: TJTextField; virtual;
        procedure setMinGreenJTextField(minGreenJTextField: TJTextField); virtual;
        function getMinRedJTextField: TJTextField; virtual;
        procedure setMinRedJTextField(minRedJTextField: TJTextField); virtual;
  end;

implementation
uses
  Dimension, ActionListener, GroupLayout, Short, GridLayout, ImageUnifierJPanel, ImageAnalysisResultsJPanel, RotationSpriteImageJPanel, SpriteSplitterImageJPanel, RotationImageJPanel, ResizeImageJPanel, CreateIconImagesJPanel, CanvasImageJPanel, MirrorSpriteImageJPanel, MirrorImageJPanel;



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


procedure TImageToolJFrame.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end;
    

constructor TImageToolJFrame.Create;
var
  commonPhoneStrings: TCommonPhoneStrings;
begin
    inherited Create;
    InitFields;
        Self.initComponents();
        commonPhoneStrings := TCommonPhoneStrings.getInstance();
        Self.setSize(640, 480);
        Self.getMaxRedJTextField().setText('255');
        Self.getMaxGreenJTextField().setText('255');
        Self.getMaxBlueJTextField().setText('255');
        Self.getMinRedJTextField().setText(commonPhoneStrings.ZERO);
        Self.getMinGreenJTextField().setText(commonPhoneStrings.ZERO);
        Self.getMinBlueJTextField().setText(commonPhoneStrings.ZERO);
        Self.fileJDialog := TFileJDialog.Create();
        Self.fileJDialog.addFinishedListener(Self);
end;
    

procedure TImageToolJFrame.initComponents;
var
  analysisActionJDialogLayout: TGroupLayout;
begin
        Self.analysisActionJDialog := TJDialog.Create();
        Self.titleJLabel := TJLabel.Create();
        Self.colorRangeJLabel := TJLabel.Create();
        Self.redJLabel := TJLabel.Create();
        Self.minJLabel := TJLabel.Create();
        Self.maxJLabel := TJLabel.Create();
        Self.greenJLabel := TJLabel.Create();
        Self.blueJLabel := TJLabel.Create();
        Self.minRedJTextField := TJTextField.Create();
        Self.maxRedJTextField := TJTextField.Create();
        Self.maxGreenJTextField := TJTextField.Create();
        Self.minBlueJTextField := TJTextField.Create();
        Self.maxBlueJTextField := TJTextField.Create();
        Self.okJButton := TJButton.Create();
        Self.minGreenJTextField := TJTextField.Create();
        Self.jPanel1 := TJPanel.Create();
        Self.mainJMenuBar := TJMenuBar.Create();
        Self.fileJMenu := TJMenu.Create();
        Self.openImageJMenuItem := TJMenuItem.Create();
        Self.processingJMenu := TJMenu.Create();
        Self.analyzeJMenuItem := TJMenuItem.Create();
        Self.generateSpriteSplitterMenuItem := TJMenuItem.Create();
        Self.generateRotationMenuItem := TJMenuItem.Create();
        Self.generateMirrorSpriteMenuItem := TJMenuItem.Create();
        Self.generateRotationSpriteJMenuItem := TJMenuItem.Create();
        Self.createStripImageJMenuItem := TJMenuItem.Create();
        Self.mirrorJMenuItem := TJMenuItem.Create();
        Self.scaleImagesJMenuItem := TJMenuItem.Create();
        Self.canvasImagesJMenuItem := TJMenuItem.Create();
        Self.createIconImagesJMenuItem := TJMenuItem.Create();
        Self.analysisActionJDialog.setMinimumSize(TDimension.Create(350, 250));
        Self.titleJLabel.setText('              Color At Action Options            ');
        Self.colorRangeJLabel.setText('Color Range');
        Self.redJLabel.setText('Red:');
        Self.minJLabel.setText('Minimum');
        Self.maxJLabel.setText('Maximum');
        Self.greenJLabel.setText('Green:');
        Self.blueJLabel.setText('Blue:');
        Self.okJButton.setText('OK');
        Self.okJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.okJButtonActionPerformed(evt);
end;
*));
        analysisActionJDialogLayout := TGroupLayout.Create(Self.analysisActionJDialog.getContentPane());
        Self.analysisActionJDialog.getContentPane().setLayout(analysisActionJDialogLayout);
        analysisActionJDialogLayout.setHorizontalGroup(analysisActionJDialogLayout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.LEADING).add(analysisActionJDialogLayout.createSequentialGroup().addContainerGap().add(analysisActionJDialogLayout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.LEADING).add(analysisActionJDialogLayout.createSequentialGroup().add(analysisActionJDialogLayout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.LEADING).add(Self.blueJLabel).add(Self.greenJLabel).add(Self.redJLabel).add(Self.colorRangeJLabel)).add(29, 29, 29).add(analysisActionJDialogLayout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.LEADING).add(Torg.jdesktop.layout.GroupLayout.TRAILING, Self.minJLabel, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 58, TShort.MAX_VALUE).add(analysisActionJDialogLayout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.TRAILING, False).add(Torg.jdesktop.layout.GroupLayout.LEADING, Self.minBlueJTextField).add(Torg.jdesktop.layout.GroupLayout.LEADING, Self.minGreenJTextField).add(Torg.jdesktop.layout.GroupLayout.LEADING, Self.minRedJTextField, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 42, TShort.MAX_VALUE).add(Torg.jdesktop.layout.GroupLayout.LEADING, Self.okJButton))).addPreferredGap(Torg.jdesktop.layout.LayoutStyle.RELATED).add(analysisActionJDialogLayout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.TRAILING).add(Torg.jdesktop.layout.GroupLayout.LEADING, analysisActionJDialogLayout.createSequentialGroup().add(analysisActionJDialogLayout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.TRAILING, False).add(Torg.jdesktop.layout.GroupLayout.LEADING, Self.maxRedJTextField).add(Torg.jdesktop.layout.GroupLayout.LEADING, analysisActionJDialogLayout.createSequentialGroup().add(1, 1, 1).add(analysisActionJDialogLayout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.LEADING).add(Self.maxBlueJTextField).add(Self.maxGreenJTextField, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 43, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))).addPreferredGap(Torg.jdesktop.layout.LayoutStyle.RELATED, 17, TShort.MAX_VALUE)).add(Torg.jdesktop.layout.GroupLayout.LEADING, Self.maxJLabel, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 61, TShort.MAX_VALUE)).addContainerGap()).add(Torg.jdesktop.layout.GroupLayout.TRAILING, analysisActionJDialogLayout.createSequentialGroup().add(Self.titleJLabel).add(25, 25, 25)))));
        analysisActionJDialogLayout.setVerticalGroup(analysisActionJDialogLayout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.LEADING).add(analysisActionJDialogLayout.createSequentialGroup().add(Self.titleJLabel).addPreferredGap(Torg.jdesktop.layout.LayoutStyle.RELATED).add(analysisActionJDialogLayout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.BASELINE).add(Self.minJLabel).add(Self.colorRangeJLabel).add(Self.maxJLabel)).addPreferredGap(Torg.jdesktop.layout.LayoutStyle.RELATED).add(analysisActionJDialogLayout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.TRAILING).add(Self.redJLabel).add(analysisActionJDialogLayout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.BASELINE).add(Self.minRedJTextField, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE).add(Self.maxRedJTextField, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE))).addPreferredGap(Torg.jdesktop.layout.LayoutStyle.RELATED).add(analysisActionJDialogLayout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.TRAILING).add(Self.greenJLabel).add(analysisActionJDialogLayout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.BASELINE).add(Self.minGreenJTextField, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE).add(Self.maxGreenJTextField, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE))).addPreferredGap(Torg.jdesktop.layout.LayoutStyle.RELATED).add(analysisActionJDialogLayout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.TRAILING).add(Self.blueJLabel).add(analysisActionJDialogLayout.createParallelGroup(Torg.jdesktop.layout.GroupLayout.BASELINE).add(Self.minBlueJTextField, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE).add(Self.maxBlueJTextField, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE, Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Torg.jdesktop.layout.GroupLayout.PREFERRED_SIZE))).add(16, 16, 16).add(Self.okJButton).addContainerGap(Torg.jdesktop.layout.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE)));
        Self.setDefaultCloseOperation(Tjavax.swing.WindowConstants.EXIT_ON_CLOSE);
        Self.getContentPane().setLayout(TGridLayout.Create(1, 0));
        Self.jPanel1.setLayout(TGridLayout.Create(1, 0));
        Self.getContentPane().add(Self.jPanel1);
        Self.fileJMenu.setText('File');
        Self.fileJMenu.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.fileJMenuActionPerformed(evt);
end;
*));
        Self.openImageJMenuItem.setText('Open');
        Self.openImageJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.openImageJMenuItemActionPerformed(evt);
end;
*));
        Self.fileJMenu.add(Self.openImageJMenuItem);
        Self.mainJMenuBar.add(Self.fileJMenu);
        Self.processingJMenu.setText('Processing');
        Self.processingJMenu.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.processingJMenuActionPerformed(evt);
end;
*));
        Self.analyzeJMenuItem.setText('Image Analyze');
        Self.analyzeJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.analyzeJMenuItemActionPerformed(evt);
end;
*));
        Self.processingJMenu.add(Self.analyzeJMenuItem);
        Self.generateMirrorSpriteMenuItem.setText('Mirror Sprite Generator');
        Self.generateMirrorSpriteMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.generateMirrorSpriteMenuItemActionPerformed(evt);
end;
*));
        Self.processingJMenu.add(Self.generateMirrorSpriteMenuItem);
        Self.generateRotationSpriteJMenuItem.setText('Rotation Sprite Generator');
        Self.generateRotationSpriteJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.generateRotationSpriteJMenuItemActionPerformed(evt);
end;
*));
        Self.processingJMenu.add(Self.generateRotationSpriteJMenuItem);
        Self.generateSpriteSplitterMenuItem.setText('Sprite Splitter Generator');
        Self.generateSpriteSplitterMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.generateSpriteSplitterMenuItemActionPerformed(evt);
end;
*));
        Self.processingJMenu.add(Self.generateSpriteSplitterMenuItem);
        Self.generateRotationMenuItem.setText('Rotate Image Generator');
        Self.generateRotationMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.generateRotationMenuItemActionPerformed(evt);
end;
*));
        Self.processingJMenu.add(Self.generateRotationMenuItem);
        Self.createStripImageJMenuItem.setText('Multi Image Unifier');
        Self.createStripImageJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.createStripImageJMenuItemActionPerformed(evt);
end;
*));
        Self.processingJMenu.add(Self.createStripImageJMenuItem);
        Self.mirrorJMenuItem.setText('Mirror Image(s)');
        Self.mirrorJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.mirrorJMenuItemActionPerformed(evt);
end;
*));
        Self.processingJMenu.add(Self.mirrorJMenuItem);
        Self.scaleImagesJMenuItem.setText('Scale Image(s)');
        Self.scaleImagesJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.scaleImagesJMenuItemActionPerformed(evt);
end;
*));
        Self.processingJMenu.add(Self.scaleImagesJMenuItem);
        Self.canvasImagesJMenuItem.setText('Canvas Image(s)');
        Self.canvasImagesJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.canvasImagesJMenuItemActionPerformed(evt);
end;
*));
        Self.processingJMenu.add(Self.canvasImagesJMenuItem);
        Self.createIconImagesJMenuItem.setText('Create Icon Image(s)');
        Self.createIconImagesJMenuItem.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.createIconsJMenuItemActionPerformed(evt);
end;
*));
        Self.processingJMenu.add(Self.createIconImagesJMenuItem);
        Self.mainJMenuBar.add(Self.processingJMenu);
        Self.setJMenuBar(Self.mainJMenuBar);
        Self.pack();
end;
    

procedure TImageToolJFrame.createStripImageJMenuItemActionPerformed(evt: TActionEvent);
var
  imageUnifierJPanel: TImageUnifierJPanel;
begin
        try
            imageUnifierJPanel := TImageUnifierJPanel.Create(Self.imageProcessorInput);
            Self.jPanel1.removeAll();
            Self.jPanel1.add(imageUnifierJPanel);
            Self.jPanel1.updateUI();
            TImageToolJFrame.imageProcessorInputCompositeInterface := imageUnifierJPanel;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'createStripImageJMenuItemActionPerformed', e);
            end;
        end;
end;
    

procedure TImageToolJFrame.okJButtonActionPerformed(evt: TActionEvent);
var
  imageAnalysisResultsArray: TArray<TImageAnalysisResults>;
begin
        try
            Self.logUtil.putF('Starting', Self, 'okJButtonActionPerformed');
            imageAnalysisResultsArray := TImageAnalysis.getInstance().process(Self.imageProcessorInput.getBufferedImageArray(), Self.getColorRangeInterface());
            Self.jPanel1.removeAll();
            Self.jPanel1.add(TImageAnalysisResultsJPanel.Create(imageAnalysisResultsArray));
            Self.jPanel1.updateUI();
            Self.analysisActionJDialog.setVisible(False);
            TImageToolJFrame.imageProcessorInputCompositeInterface := nil;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'okJButtonActionPerformed', e);
            end;
        end;
end;
    

procedure TImageToolJFrame.processingJMenuActionPerformed(evt: TActionEvent);
begin
end;
    

procedure TImageToolJFrame.openImageJMenuItemActionPerformed(evt: TActionEvent);
begin
        try
            Self.logUtil.putF('Starting', Self, 'openImageJMenuItemActionPerformed');
            Self.fileJDialog.setVisible(True);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'openImageJMenuItemActionPerformed', e);
            end;
        end;
end;
    

procedure TImageToolJFrame.onFiles(files: TArray<TFile>);
var
  bufferedImageArray: TArray<TBufferedImage>;
  index: Integer;
begin
        try
            Self.logUtil.putF('Reading ' + IntToStr(System.Length(files)) + ' files.', Self, 'onFiles');
            TArrays.sort(files, TComparator<TFile>.Create() (* Java anonymous class body: implement it as a named class
                

            function T.compare(file1: TFile; file2: TFile): Integer;
var
  fileNameIndexValue1: Integer;
  fileNameIndexValue2: Integer;
begin
                    fileNameIndexValue1 := Self.extractIndexNumberIfAnyFromFileName(file1.getName());
                    fileNameIndexValue2 := Self.extractIndexNumberIfAnyFromFileName(file2.getName());
                    Exit((fileNameIndexValue1) - (fileNameIndexValue2));
end;
                

            function T.extractIndexNumberIfAnyFromFileName(name: string): Integer;
var
  i: Integer;
  start: Integer;
  end_: Integer;
  number: string;
begin
                    i := 0;
                    try
                        start := ((RPos(TJava.ToString('_'), name) - 1)) + (1);
                        end_ := (RPos(TJava.ToString('.'), name) - 1);
                        number := Copy(name, (start) + 1, (end_) - (start));
                        i := StrToInt(number);
                    except
                        on e: SysUtils.Exception do begin
                        i := 0;
                        end;
                    end;
                    Exit(i);
end;
*));
            bufferedImageArray := TJava.NewArray<TBufferedImage>(System.Length(files));
            for index := 0 to System.Length(files) - 1 do begin
                bufferedImageArray[index] := TImageIO.read(files[index]);
                if (bufferedImageArray[index]) = (nil) then begin
                    raise SysUtils.Exception.Create('Unable to read file: ' + TJava.ToString(files[index].getPath()));
                end;
            end;
            Self.imageProcessorInput := TImageProcessorInput.Create(files, bufferedImageArray);
            Self.fileJDialog.setVisible(False);
            if (TImageToolJFrame.imageProcessorInputCompositeInterface) <> (nil) then begin
                TImageToolJFrame.imageProcessorInputCompositeInterface.setImageProcessorInput(Self.imageProcessorInput);
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'onFiles', e);
            end;
        end;
end;
    

procedure TImageToolJFrame.fileJMenuActionPerformed(evt: TActionEvent);
begin
end;
    

procedure TImageToolJFrame.analyzeJMenuItemActionPerformed(evt: TActionEvent);
begin
        try
            Self.logUtil.putF('Starting', Self, 'analyzeJMenuItemActionPerformed');
            Self.analysisActionJDialog.setVisible(True);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'analyzeJMenuItemActionPerformed', e);
            end;
        end;
end;
    

procedure TImageToolJFrame.generateRotationSpriteJMenuItemActionPerformed(evt: TActionEvent);
var
  spriteImageJPanel: TRotationSpriteImageJPanel;
begin
        try
            Self.logUtil.putF('Starting', Self, 'generateRotationSpriteJMenuItemActionPerformed');
            spriteImageJPanel := TRotationSpriteImageJPanel.Create(Self.imageProcessorInput);
            Self.jPanel1.removeAll();
            Self.jPanel1.add(spriteImageJPanel);
            Self.jPanel1.updateUI();
            TImageToolJFrame.imageProcessorInputCompositeInterface := spriteImageJPanel;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'generateRotationSpriteJMenuItemActionPerformed', e);
            end;
        end;
end;
    

procedure TImageToolJFrame.generateSpriteSplitterMenuItemActionPerformed(evt: TActionEvent);
var
  imageJPanel: TSpriteSplitterImageJPanel;
begin
        try
            Self.logUtil.putF('Starting', Self, 'generateRotationSpriteJMenuItemActionPerformed');
            imageJPanel := TSpriteSplitterImageJPanel.Create(Self.imageProcessorInput);
            Self.jPanel1.removeAll();
            Self.jPanel1.add(imageJPanel);
            Self.jPanel1.updateUI();
            TImageToolJFrame.imageProcessorInputCompositeInterface := imageJPanel;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'generateRotationMenuItemActionPerformed', e);
            end;
        end;
end;
    

procedure TImageToolJFrame.generateRotationMenuItemActionPerformed(evt: TActionEvent);
var
  rotationImageJPanel: TRotationImageJPanel;
begin
        try
            Self.logUtil.putF('Starting', Self, 'generateRotationSpriteJMenuItemActionPerformed');
            rotationImageJPanel := TRotationImageJPanel.Create(Self.imageProcessorInput);
            Self.jPanel1.removeAll();
            Self.jPanel1.add(rotationImageJPanel);
            Self.jPanel1.updateUI();
            TImageToolJFrame.imageProcessorInputCompositeInterface := rotationImageJPanel;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'generateRotationMenuItemActionPerformed', e);
            end;
        end;
end;
    

procedure TImageToolJFrame.scaleImagesJMenuItemActionPerformed(evt: TActionEvent);
var
  resizeImageJPanel: TResizeImageJPanel;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, Self, 'scaleImagesJMenuItemActionPerformed');
            resizeImageJPanel := TResizeImageJPanel.Create(Self.imageProcessorInput);
            Self.jPanel1.removeAll();
            Self.jPanel1.add(resizeImageJPanel);
            Self.jPanel1.updateUI();
            TImageToolJFrame.imageProcessorInputCompositeInterface := resizeImageJPanel;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'scaleImagesJMenuItemActionPerformed', e);
            end;
        end;
end;
    

procedure TImageToolJFrame.createIconsJMenuItemActionPerformed(evt: TActionEvent);
var
  createIconImagesJPanel: TCreateIconImagesJPanel;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, Self, 'createIconsJMenuItemActionPerformed');
            createIconImagesJPanel := TCreateIconImagesJPanel.Create(Self.imageProcessorInput);
            Self.jPanel1.removeAll();
            Self.jPanel1.add(createIconImagesJPanel);
            Self.jPanel1.updateUI();
            TImageToolJFrame.imageProcessorInputCompositeInterface := createIconImagesJPanel;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'scaleImagesJMenuItemActionPerformed', e);
            end;
        end;
end;
    

procedure TImageToolJFrame.canvasImagesJMenuItemActionPerformed(evt: TActionEvent);
var
  resizeImageJPanel: TCanvasImageJPanel;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, Self, 'canvasImagesJMenuItemActionPerformed');
            resizeImageJPanel := TCanvasImageJPanel.Create(Self.imageProcessorInput);
            Self.jPanel1.removeAll();
            Self.jPanel1.add(resizeImageJPanel);
            Self.jPanel1.updateUI();
            TImageToolJFrame.imageProcessorInputCompositeInterface := resizeImageJPanel;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'scaleImagesJMenuItemActionPerformed', e);
            end;
        end;
end;
    

procedure TImageToolJFrame.generateMirrorSpriteMenuItemActionPerformed(evt: TActionEvent);
var
  spriteImageJPanel: TMirrorSpriteImageJPanel;
begin
        try
            Self.logUtil.putF('Starting', Self, 'generateMirrorSpriteJMenuItemActionPerformed');
            spriteImageJPanel := TMirrorSpriteImageJPanel.Create(Self.imageProcessorInput);
            Self.jPanel1.removeAll();
            Self.jPanel1.add(spriteImageJPanel);
            Self.jPanel1.updateUI();
            TImageToolJFrame.imageProcessorInputCompositeInterface := spriteImageJPanel;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'generateMirrorSpriteJMenuItemActionPerformed', e);
            end;
        end;
end;
    

procedure TImageToolJFrame.mirrorJMenuItemActionPerformed(evt: TActionEvent);
var
  mirrorImageJPanel: TMirrorImageJPanel;
begin
        try
            Self.logUtil.putF('Starting', Self, 'generateMirrorJMenuItemActionPerformed');
            mirrorImageJPanel := TMirrorImageJPanel.Create(Self.imageProcessorInput);
            Self.jPanel1.removeAll();
            Self.jPanel1.add(mirrorImageJPanel);
            Self.jPanel1.updateUI();
            TImageToolJFrame.imageProcessorInputCompositeInterface := mirrorImageJPanel;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'generateMirrorJMenuItemActionPerformed', e);
            end;
        end;
end;
    

function TImageToolJFrame.getColorRangeInterface: IColorRangeInterface;
var
  colorRangeInterface: IColorRangeInterface;
begin
        colorRangeInterface := IColorRangeInterface(Pointer(TColorRange.Create()));
        colorRangeInterface.setMinRed(Self.getMinRedJTextField().getText().intValue());
        colorRangeInterface.setMaxRed(Self.getMaxRedJTextField().getText().intValue());
        colorRangeInterface.setMinGreen(Self.getMinGreenJTextField().getText().intValue());
        colorRangeInterface.setMaxGreen(Self.getMaxGreenJTextField().getText().intValue());
        colorRangeInterface.setMinBlue(Self.getMinBlueJTextField().getText().intValue());
        colorRangeInterface.setMaxBlue(Self.getMaxBlueJTextField().getText().intValue());
        Exit(colorRangeInterface);
end;
    

function TImageToolJFrame.getMaxBlueJTextField: TJTextField;
begin
        Exit(Self.maxBlueJTextField);
end;
    

procedure TImageToolJFrame.setMaxBlueJTextField(maxBlueJTextField: TJTextField);
begin
        Self.maxBlueJTextField := Self.maxBlueJTextField;
end;
    

function TImageToolJFrame.getMaxGreenJTextField: TJTextField;
begin
        Exit(Self.maxGreenJTextField);
end;
    

procedure TImageToolJFrame.setMaxGreenJTextField(maxGreenJTextField: TJTextField);
begin
        Self.maxGreenJTextField := Self.maxGreenJTextField;
end;
    

function TImageToolJFrame.getMaxRedJTextField: TJTextField;
begin
        Exit(Self.maxRedJTextField);
end;
    

procedure TImageToolJFrame.setMaxRedJTextField(maxRedJTextField: TJTextField);
begin
        Self.maxRedJTextField := Self.maxRedJTextField;
end;
    

function TImageToolJFrame.getMinBlueJTextField: TJTextField;
begin
        Exit(Self.minBlueJTextField);
end;
    

procedure TImageToolJFrame.setMinBlueJTextField(minBlueJTextField: TJTextField);
begin
        Self.minBlueJTextField := Self.minBlueJTextField;
end;
    

function TImageToolJFrame.getMinGreenJTextField: TJTextField;
begin
        Exit(Self.minGreenJTextField);
end;
    

procedure TImageToolJFrame.setMinGreenJTextField(minGreenJTextField: TJTextField);
begin
        Self.minGreenJTextField := Self.minGreenJTextField;
end;
    

function TImageToolJFrame.getMinRedJTextField: TJTextField;
begin
        Exit(Self.minRedJTextField);
end;
    

procedure TImageToolJFrame.setMinRedJTextField(minRedJTextField: TJTextField);
begin
        Self.minRedJTextField := Self.minRedJTextField;
end;

initialization
  

end.

