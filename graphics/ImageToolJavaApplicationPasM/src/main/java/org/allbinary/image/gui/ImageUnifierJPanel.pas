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
unit ImageUnifierJPanel;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, LogUtil, FileWrapperUtil, StringMaker, StringUtil, ImagePersistanceUtil, ImageProcessorInput, ImageProcessorInputCompositeInterface, ImageStrings, ImageUnifierCell, ImageUnifierProperties, ImageUnifierUtil, ImageUtil, ImagesRatioUtil, CommonPhoneStrings, CommonSeps, CommonStrings, ActionEvent, KeyEvent, PropertyChangeEvent, JTextField, JButton, JList, JLabel, JPanel, JScrollPane, ImageIconUnique;

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

  TImageUnifierJPanel = class(TJPanel, IImageProcessorInputCompositeInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    imageStrings: TImageStrings;
    imagesRatioUtil: TImagesRatioUtil;
    imageProcessorInput: TImageProcessorInput;
    icon: TArray<TImageIconUnique>;
    imageUnifierProperties: TImageUnifierProperties;
    result_: TBufferedImage;
    isImageFillIn: Boolean;
    avgRatioJTextField: TJTextField;
    cellHeightJTextField: TJTextField;
    cellRatioJTextField: TJTextField;
    cellWidthJTextField: TJTextField;
    columnsJTextField: TJTextField;
    downJButton: TJButton;
    fudgeItJButton: TJButton;
    imageJList: TJList;
    jButton1: TJButton;
    jButton2: TJButton;
    jButtonOrder: TJButton;
    jLabel1: TJLabel;
    jLabel2: TJLabel;
    jLabel3: TJLabel;
    jLabel4: TJLabel;
    jLabel5: TJLabel;
    jLabel6: TJLabel;
    jPanel1: TJPanel;
    jScrollPane1: TJScrollPane;
    jScrollPane2: TJScrollPane;
    rowsJTextField: TJTextField;
    upJButton: TJButton;
    procedure InitFields;
        constructor Create(imageProcessorInput: TImageProcessorInput);
        procedure init; virtual;
        procedure updateImage; overload;
        procedure updateImageWithFudgedImages;
        procedure updateImage(tempBufferedImageArray: TArray<TBufferedImage>); overload;
        procedure updateOnPropertiesChange;
        procedure initComponents;
        procedure jButton2ActionPerformed(evt: TActionEvent);
        procedure columnsJTextFieldKeyPressed(evt: TKeyEvent);
        procedure columnsJTextFieldKeyTyped(evt: TKeyEvent);
        procedure columnsJTextFieldPropertyChange(evt: TPropertyChangeEvent);
        procedure fudgeItJButtonActionPerformed(evt: TActionEvent);
        procedure cellHeightJTextFieldActionPerformed(evt: TActionEvent);
        procedure cellWidthJTextFieldActionPerformed(evt: TActionEvent);
        procedure columnsJTextFieldActionPerformed(evt: TActionEvent);
        procedure rowsJTextFieldActionPerformed(evt: TActionEvent);
        procedure jButton1ActionPerformed(evt: TActionEvent);
        procedure downJButtonActionPerformed(evt: TActionEvent);
        procedure upJButtonActionPerformed(evt: TActionEvent);
        procedure jButtonOrderActionPerformed(evt: TActionEvent);
        function getImageProcessorInput: TImageProcessorInput; virtual;
        procedure setImageProcessorInput(imageProcessorInput: TImageProcessorInput); virtual;
  end;

implementation
uses
  DefaultListModel, ImageIconUnique, ImageIcon, Icon, Dimension, ActionListener, PropertyChangeListener, KeyAdapter, GroupLayout, Short;



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


procedure TImageUnifierJPanel.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.imageStrings := TImageStrings.getInstance();
  Self.imagesRatioUtil := TImagesRatioUtil.getInstance();
  
  
  
  
  Self.isImageFillIn := True;
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end;
    

constructor TImageUnifierJPanel.Create(imageProcessorInput: TImageProcessorInput);
begin
    inherited Create;
    InitFields;
        Self.initComponents();
        Self.setImageProcessorInput(imageProcessorInput);
end;
    

procedure TImageUnifierJPanel.init;
var
  imageProcessorInput: TImageProcessorInput;
  bufferedImageArray: TArray<TBufferedImage>;
  defaultListModel: TDefaultListModel;
  width: Double;
  height: Double;
  newWidth: Integer;
  oldRatio: Double;
  newHeight: Integer;
  iconBufferedImage: TBufferedImage;
  index: Integer;
begin
        try
            imageProcessorInput := Self.getImageProcessorInput();
            bufferedImageArray := imageProcessorInput.getBufferedImageArray();
            Self.icon := TJava.NewArray<TImageIconUnique>(System.Length(bufferedImageArray));
            defaultListModel := TDefaultListModel.Create();
            for index := 0 to System.Length(bufferedImageArray) - 1 do begin
                width := bufferedImageArray[index].getWidth();
                height := bufferedImageArray[index].getHeight();
                newWidth := 52;
                oldRatio := (width) / (height);
                newHeight := Integer(Trunc(((newWidth) / (oldRatio))));
                iconBufferedImage := TImageUtil.getInstance().createBufferedImage(bufferedImageArray[index], newWidth, newHeight, True);
                Self.icon[index] := TImageIconUnique.Create(iconBufferedImage, index);
                defaultListModel.addElement(Self.icon[index]);
            end;
            Self.imageJList.setModel(defaultListModel);
            Self.updateOnPropertiesChange();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.commonStrings.INIT, e);
            end;
        end;
end;
    

procedure TImageUnifierJPanel.updateImage;
var
  bufferedImageArray: TArray<TBufferedImage>;
  tempBufferedImageArray: TArray<TBufferedImage>;
  indexedImageIcon: TImageIconUnique;
  bufferedImage: TBufferedImage;
  index: Integer;
  totalImages: Integer;
  averageRatio: Double;
  averageRatioString: string;
begin
        try
            bufferedImageArray := Self.getImageProcessorInput().getBufferedImageArray();
            tempBufferedImageArray := TJava.NewArray<TBufferedImage>(System.Length(bufferedImageArray));
            for index := 0 to System.Length(bufferedImageArray) - 1 do begin
                indexedImageIcon := TImageIconUnique(Self.imageJList.getModel().getElementAt(index));
                bufferedImage := TImageUtil.getInstance().createBufferedImage(bufferedImageArray[indexedImageIcon.getId()], Self.imageUnifierProperties.getImageUnifierCell().getWidth(), Self.imageUnifierProperties.getImageUnifierCell().getHeight(), False);
                tempBufferedImageArray[index] := bufferedImage;
            end;
            totalImages := (Self.imageUnifierProperties.getRows()) * (Self.imageUnifierProperties.getColumns());
            averageRatio := Self.imagesRatioUtil.getAverage(tempBufferedImageArray, totalImages);
            averageRatioString := averageRatio.toString();
            if (System.Length(averageRatioString)) > (4) then begin
                averageRatioString := Copy(averageRatioString, (0) + 1, (4) - (0));
            end;
            Self.avgRatioJTextField.setText(averageRatioString);
            Self.fudgeItJButton.setEnabled(False);
            if not (Self.imagesRatioUtil.isEqual(tempBufferedImageArray, totalImages)) then begin
                if Self.isImageFillIn then begin
                    Self.fudgeItJButton.setEnabled(True);
                end;
            end;
            Self.updateImage(tempBufferedImageArray);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'updateImage', e);
            end;
        end;
end;
    

procedure TImageUnifierJPanel.updateImageWithFudgedImages;
var
  bufferedImageArray: TArray<TBufferedImage>;
  tempBufferedImageArray: TArray<TBufferedImage>;
  indexedImageIcon: TImageIconUnique;
  bufferedImage: TBufferedImage;
  index: Integer;
  totalImages: Integer;
  averageRatio: Double;
  fudgedBufferedImageArray: TArray<TBufferedImage>;
begin
        try
            bufferedImageArray := Self.getImageProcessorInput().getBufferedImageArray();
            tempBufferedImageArray := TJava.NewArray<TBufferedImage>(System.Length(bufferedImageArray));
            for index := 0 to System.Length(bufferedImageArray) - 1 do begin
                indexedImageIcon := TImageIconUnique(Self.imageJList.getModel().getElementAt(index));
                bufferedImage := TImageUtil.getInstance().createBufferedImage(bufferedImageArray[indexedImageIcon.getId()], Self.imageUnifierProperties.getImageUnifierCell().getWidth(), Self.imageUnifierProperties.getImageUnifierCell().getHeight(), False);
                tempBufferedImageArray[index] := bufferedImage;
            end;
            totalImages := (Self.imageUnifierProperties.getRows()) * (Self.imageUnifierProperties.getColumns());
            averageRatio := Self.imagesRatioUtil.getAverage(tempBufferedImageArray, totalImages);
            fudgedBufferedImageArray := Self.imagesRatioUtil.fudge(tempBufferedImageArray, totalImages, averageRatio);
            Self.updateImage(fudgedBufferedImageArray);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'updateImageWithFudgedImages', e);
            end;
        end;
end;
    

procedure TImageUnifierJPanel.updateImage(tempBufferedImageArray: TArray<TBufferedImage>);
var
  image: TIcon;
  label_: TJLabel;
begin
        Self.result_ := TImageUnifierUtil.getInstance().getImage(tempBufferedImageArray, Self.imageUnifierProperties);
        image := TImageIcon.Create(Self.result_);
        label_ := TJLabel.Create(image);
        Self.jScrollPane2.getViewport().add(label_);
        Self.updateUI();
end;
    

procedure TImageUnifierJPanel.updateOnPropertiesChange;
var
  imageUnifierCell: TImageUnifierCell;
  cellRatio: Double;
  cellRatioString: string;
begin
        if ((((Self.rowsJTextField.getText().length()) > (0)) and ((Self.columnsJTextField.getText().length()) > (0))) and ((Self.cellWidthJTextField.getText().length()) > (0))) and ((Self.cellHeightJTextField.getText().length()) > (0)) then begin
            Self.imageUnifierProperties := TImageUnifierProperties.Create();
            Self.imageUnifierProperties.setRows(Self.rowsJTextField.getText());
            Self.imageUnifierProperties.setColumns(Self.columnsJTextField.getText());
            imageUnifierCell := TImageUnifierCell.Create(Self.cellWidthJTextField.getText(), Self.cellHeightJTextField.getText());
            Self.imageUnifierProperties.setImageUnifierCell(imageUnifierCell);
            cellRatio := ((Double(imageUnifierCell.getWidth())) / (imageUnifierCell.getHeight()));
            cellRatioString := cellRatio.toString();
            if (System.Length(cellRatioString)) > (4) then begin
                cellRatioString := Copy(cellRatioString, (0) + 1, (4) - (0));
            end;
            Self.cellRatioJTextField.setText(cellRatioString);
            Self.updateImage();
        end;
end;
    

procedure TImageUnifierJPanel.initComponents;
var
  commonPhoneStrings: TCommonPhoneStrings;
  jPanel1Layout: TGroupLayout;
  layout: TGroupLayout;
begin
        commonPhoneStrings := TCommonPhoneStrings.getInstance();
        Self.jScrollPane1 := TJScrollPane.Create();
        Self.imageJList := TJList.Create();
        Self.jScrollPane2 := TJScrollPane.Create();
        Self.jPanel1 := TJPanel.Create();
        Self.jButton1 := TJButton.Create();
        Self.upJButton := TJButton.Create();
        Self.downJButton := TJButton.Create();
        Self.fudgeItJButton := TJButton.Create();
        Self.jLabel2 := TJLabel.Create();
        Self.columnsJTextField := TJTextField.Create();
        Self.jLabel1 := TJLabel.Create();
        Self.rowsJTextField := TJTextField.Create();
        Self.jLabel3 := TJLabel.Create();
        Self.cellWidthJTextField := TJTextField.Create();
        Self.jLabel4 := TJLabel.Create();
        Self.cellHeightJTextField := TJTextField.Create();
        Self.jLabel5 := TJLabel.Create();
        Self.cellRatioJTextField := TJTextField.Create();
        Self.jLabel6 := TJLabel.Create();
        Self.avgRatioJTextField := TJTextField.Create();
        Self.jButton2 := TJButton.Create();
        Self.jButtonOrder := TJButton.Create();
        Self.setMinimumSize(TDimension.Create(500, 375));
        Self.setPreferredSize(TDimension.Create(0, 0));
        Self.imageJList.setMinimumSize(TDimension.Create(50, 0));
        Self.jScrollPane1.setViewportView(Self.imageJList);
        Self.jButton1.setText('Save');
        Self.jButton1.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.jButton1ActionPerformed(evt);
end;
*));
        Self.upJButton.setText('Up');
        Self.upJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.upJButtonActionPerformed(evt);
end;
*));
        Self.downJButton.setText('Down');
        Self.downJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.downJButtonActionPerformed(evt);
end;
*));
        Self.fudgeItJButton.setText('Fudge It!');
        Self.fudgeItJButton.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.fudgeItJButtonActionPerformed(evt);
end;
*));
        Self.jLabel2.setText('Columns:');
        Self.columnsJTextField.setText(commonPhoneStrings.TWO);
        Self.columnsJTextField.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.columnsJTextFieldActionPerformed(evt);
end;
*));
        Self.columnsJTextField.addPropertyChangeListener(TPropertyChangeListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.propertyChange(evt: TPropertyChangeEvent);
begin
                Self.columnsJTextFieldPropertyChange(evt);
end;
*));
        Self.columnsJTextField.addKeyListener(TKeyAdapter.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.keyPressed(evt: TKeyEvent);
begin
                Self.columnsJTextFieldKeyPressed(evt);
end;
            

        procedure T.keyTyped(evt: TKeyEvent);
begin
                Self.columnsJTextFieldKeyTyped(evt);
end;
*));
        Self.jLabel1.setText('Rows:');
        Self.rowsJTextField.setText(commonPhoneStrings.TWO);
        Self.rowsJTextField.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.rowsJTextFieldActionPerformed(evt);
end;
*));
        Self.jLabel3.setText('Cell Width:');
        Self.cellWidthJTextField.setText('200');
        Self.cellWidthJTextField.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.cellWidthJTextFieldActionPerformed(evt);
end;
*));
        Self.jLabel4.setText('Cell Height:');
        Self.cellHeightJTextField.setText('150');
        Self.cellHeightJTextField.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.cellHeightJTextFieldActionPerformed(evt);
end;
*));
        Self.jLabel5.setText('Cell Ratio:');
        Self.cellRatioJTextField.setEditable(False);
        Self.jLabel6.setText('Avg Image Ratio:');
        Self.avgRatioJTextField.setEditable(False);
        Self.jButton2.setText(Self.commonStrings.UPDATE);
        Self.jButton2.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.jButton2ActionPerformed(evt);
end;
*));
        Self.jButtonOrder.setText('Order');
        Self.jButtonOrder.addActionListener(TActionListener.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.actionPerformed(evt: TActionEvent);
begin
                Self.jButtonOrderActionPerformed(evt);
end;
*));
        jPanel1Layout := TGroupLayout.Create(Self.jPanel1);
        Self.jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(jPanel1Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(Tjavax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup().addContainerGap().addGroup(jPanel1Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.TRAILING).addComponent(Self.jButton1, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 151, TShort.MAX_VALUE).addGroup(jPanel1Layout.createSequentialGroup().addComponent(Self.upJButton, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 71, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED, 10, TShort.MAX_VALUE).addComponent(Self.downJButton, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 70, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addComponent(Self.fudgeItJButton, Tjavax.swing.GroupLayout.Alignment.LEADING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 151, TShort.MAX_VALUE).addGroup(Tjavax.swing.GroupLayout.Alignment.LEADING, jPanel1Layout.createSequentialGroup().addComponent(Self.jLabel3).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED, 99, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addGroup(Tjavax.swing.GroupLayout.Alignment.LEADING, jPanel1Layout.createSequentialGroup().addComponent(Self.jLabel4).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED, 96, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addComponent(Self.avgRatioJTextField, Tjavax.swing.GroupLayout.Alignment.LEADING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 151, TShort.MAX_VALUE).addComponent(Self.jLabel6, Tjavax.swing.GroupLayout.Alignment.LEADING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 151, TShort.MAX_VALUE).addComponent(Self.cellRatioJTextField, Tjavax.swing.GroupLayout.Alignment.LEADING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 151, TShort.MAX_VALUE).addComponent(Self.jLabel5, Tjavax.swing.GroupLayout.Alignment.LEADING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 151, TShort.MAX_VALUE).addComponent(Self.cellHeightJTextField, Tjavax.swing.GroupLayout.Alignment.LEADING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 151, TShort.MAX_VALUE).addComponent(Self.cellWidthJTextField, Tjavax.swing.GroupLayout.Alignment.LEADING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 151, TShort.MAX_VALUE).addComponent(Self.jButton2, Tjavax.swing.GroupLayout.Alignment.LEADING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 151, TShort.MAX_VALUE).addGroup(Tjavax.swing.GroupLayout.Alignment.LEADING, jPanel1Layout.createSequentialGroup().addGroup(jPanel1Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.jLabel2).addComponent(Self.jLabel1)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(jPanel1Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addComponent(Self.rowsJTextField, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 103, TShort.MAX_VALUE).addGroup(jPanel1Layout.createSequentialGroup().addComponent(Self.columnsJTextField, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 102, TShort.MAX_VALUE).addGap(1, 1, 1)))).addComponent(Self.jButtonOrder, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 151, TShort.MAX_VALUE)).addContainerGap()));
        jPanel1Layout.setVerticalGroup(jPanel1Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(jPanel1Layout.createSequentialGroup().addContainerGap().addComponent(Self.jButton1).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(jPanel1Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.upJButton).addComponent(Self.downJButton)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.jButtonOrder).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.fudgeItJButton).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(jPanel1Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.jLabel2).addComponent(Self.columnsJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addGroup(jPanel1Layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.BASELINE).addComponent(Self.jLabel1).addComponent(Self.rowsJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE)).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.jLabel3).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.cellWidthJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.jLabel4).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.cellHeightJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.jButton2).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.jLabel5).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED, Tjavax.swing.GroupLayout.DEFAULT_SIZE, TShort.MAX_VALUE).addComponent(Self.cellRatioJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addGap(7, 7, 7).addComponent(Self.jLabel6).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.avgRatioJTextField, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addGap(66, 66, 66)));
        layout := TGroupLayout.Create(Self);
        Self.setLayout(layout);
        layout.setHorizontalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(layout.createSequentialGroup().addComponent(Self.jScrollPane1, Tjavax.swing.GroupLayout.PREFERRED_SIZE, 84, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.jPanel1, Tjavax.swing.GroupLayout.PREFERRED_SIZE, Tjavax.swing.GroupLayout.DEFAULT_SIZE, Tjavax.swing.GroupLayout.PREFERRED_SIZE).addPreferredGap(Tjavax.swing.LayoutStyle.ComponentPlacement.RELATED).addComponent(Self.jScrollPane2, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 527, TShort.MAX_VALUE)));
        layout.setVerticalGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.LEADING).addGroup(Tjavax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup().addGroup(layout.createParallelGroup(Tjavax.swing.GroupLayout.Alignment.TRAILING).addComponent(Self.jPanel1, Tjavax.swing.GroupLayout.Alignment.LEADING, 0, 445, TShort.MAX_VALUE).addComponent(Self.jScrollPane2, Tjavax.swing.GroupLayout.Alignment.LEADING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 445, TShort.MAX_VALUE).addComponent(Self.jScrollPane1, Tjavax.swing.GroupLayout.Alignment.LEADING, Tjavax.swing.GroupLayout.DEFAULT_SIZE, 445, TShort.MAX_VALUE)).addContainerGap()));
end;
    

procedure TImageUnifierJPanel.jButton2ActionPerformed(evt: TActionEvent);
begin
        Self.updateOnPropertiesChange();
end;
    

procedure TImageUnifierJPanel.columnsJTextFieldKeyPressed(evt: TKeyEvent);
begin
end;
    

procedure TImageUnifierJPanel.columnsJTextFieldKeyTyped(evt: TKeyEvent);
begin
end;
    

procedure TImageUnifierJPanel.columnsJTextFieldPropertyChange(evt: TPropertyChangeEvent);
begin
end;
    

procedure TImageUnifierJPanel.fudgeItJButtonActionPerformed(evt: TActionEvent);
begin
        Self.updateImageWithFudgedImages();
end;
    

procedure TImageUnifierJPanel.cellHeightJTextFieldActionPerformed(evt: TActionEvent);
begin
        Self.updateOnPropertiesChange();
end;
    

procedure TImageUnifierJPanel.cellWidthJTextFieldActionPerformed(evt: TActionEvent);
begin
        Self.updateOnPropertiesChange();
end;
    

procedure TImageUnifierJPanel.columnsJTextFieldActionPerformed(evt: TActionEvent);
begin
        Self.updateOnPropertiesChange();
end;
    

procedure TImageUnifierJPanel.rowsJTextFieldActionPerformed(evt: TActionEvent);
begin
        Self.updateOnPropertiesChange();
end;
    

procedure TImageUnifierJPanel.jButton1ActionPerformed(evt: TActionEvent);
var
  fileArray: TArray<TFile>;
  file_: TFile;
  filePath: string;
  extensionIndex: Integer;
  outputFile: TFile;
begin
        try
            fileArray := Self.imageProcessorInput.getFiles();
            file_ := fileArray[0];
            filePath := file_.getAbsolutePath();
            extensionIndex := (Pos(TJava.ToString(Self.imageStrings.PNG_EXTENSION), filePath) - 1);
            filePath := TStringMaker.Create().append(Copy(filePath, (0) + 1, (extensionIndex) - (0))).append(TCommonSeps.getInstance().UNDERSCORE).appendint(Integer(Trunc(Self.imageUnifierProperties.getColumns()))).append('_By_').appendint(Integer(Trunc(Self.imageUnifierProperties.getRows()))).append('_Unified').append(Self.imageStrings.PNG_EXTENSION).toString();
            Self.logUtil.putF('New File Path: ' + filePath, Self, TStringUtil.getInstance().EMPTY_STRING);
            outputFile := TFile.Create(filePath);
            TImagePersistanceUtil.getInstance().saveWithBatik(TFileWrapperUtil.wrapFile(outputFile), Self.result_);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'jButton1ActionPerformed', e);
            end;
        end;
end;
    

procedure TImageUnifierJPanel.downJButtonActionPerformed(evt: TActionEvent);
var
  index: Integer;
  defaultListModel: TDefaultListModel;
  indexedImageIcon: TImageIconUnique;
begin
        index := Self.imageJList.getSelectedIndex();
        defaultListModel := TDefaultListModel(Self.imageJList.getModel());
        if ((index) >= (0)) and (((index) + (1)) < (defaultListModel.size())) then begin
            indexedImageIcon := TImageIconUnique(defaultListModel.remove(index));
            defaultListModel.insertElementAt(indexedImageIcon, (index) + (1));
            Self.imageJList.setSelectedIndex((index) + (1));
            Self.updateImage();
        end;
end;
    

procedure TImageUnifierJPanel.upJButtonActionPerformed(evt: TActionEvent);
var
  index: Integer;
  defaultListModel: TDefaultListModel;
  indexedImageIcon: TImageIconUnique;
begin
        index := Self.imageJList.getSelectedIndex();
        if (index) > (0) then begin
            defaultListModel := TDefaultListModel(Self.imageJList.getModel());
            indexedImageIcon := TImageIconUnique(defaultListModel.remove(index));
            defaultListModel.insertElementAt(indexedImageIcon, (index) - (1));
            Self.imageJList.setSelectedIndex((index) - (1));
            Self.updateImage();
        end;
end;
    

procedure TImageUnifierJPanel.jButtonOrderActionPerformed(evt: TActionEvent);
var
  defaultListModel: TDefaultListModel;
  size: Integer;
  last: Integer;
  indexedImageIcon: TImageIconUnique;
  index: Integer;
begin
        defaultListModel := TDefaultListModel(Self.imageJList.getModel());
        size := defaultListModel.size();
        last := (size) - (1);
        for index := last downto 0 do begin
            indexedImageIcon := TImageIconUnique(defaultListModel.remove(last));
            defaultListModel.insertElementAt(indexedImageIcon, (last) - (index));
        end;
        if (size) > (0) then begin
            Self.imageJList.setSelectedIndex(0);
            Self.updateImage();
        end;
end;
    

function TImageUnifierJPanel.getImageProcessorInput: TImageProcessorInput;
begin
        Exit(Self.imageProcessorInput);
end;
    

procedure TImageUnifierJPanel.setImageProcessorInput(imageProcessorInput: TImageProcessorInput);
begin
        Self.imageProcessorInput := imageProcessorInput;
        Self.init();
end;

initialization

end.

