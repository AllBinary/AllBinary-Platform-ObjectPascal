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
// package org.allbinary.business.user.modules
unit User;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, BasicArrayList, BasicArrayListD, StoreFrontData, EntryData, UserData, UserInterface, UserConfigurationDomDocumentMapping, UserConfigurationInterface, UserConfigurationInterfaceFactory, Password, UserRole, UserRoleB, UserRoleData, UserName, StdUtil, RequestParams, WeblisketSessionData, WeblisketSessionInterface, LogUtil, StringMaker, StringUtil, CommonStrings, Document, Node;

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

  TUser = class(TInterfacedObject, IUserInterface)
  public
    logUtil: TLogUtil;
    userName: string;
    prefixName: string;
    firstName: string;
    lastName: string;
    middleName: string;
    suffixName: string;
    company: string;
    positionAtCompany: string;
    mainEmail: string;
    secondaryEmail: string;
    homePhone: string;
    cellPhone: string;
    workPhone: string;
    otherContact: string;
    electronicDevice: string;
    fax: string;
    role: TUserRole;
    encryption: string;
    secret: string;
    password: TPassword;
    enable_: string;
    permissions: string;
    userConfigurationInterface: IUserConfigurationInterface;
    procedure InitFields;
        constructor Create; overload;
        constructor Create(request: THttpServletRequest); overload;
        constructor Create(userHashMap: TJavaHashMap); overload;
        procedure getFormData(userHashMap: TJavaHashMap); virtual;
        function isValid: Boolean; virtual;
        function validationInfo: string; virtual;
        procedure setUserName(value: string); virtual;
        procedure setPrefixName(value: string); virtual;
        procedure setFirstName(value: string); virtual;
        procedure setLastName(value: string); virtual;
        procedure setMiddleName(value: string); virtual;
        procedure setSuffixName(value: string); virtual;
        procedure setCompany(value: string); virtual;
        procedure setPositionAtCompany(value: string); virtual;
        procedure setMainEmail(value: string); virtual;
        procedure setSecondaryEmail(value: string); virtual;
        procedure setHomePhone(value: string); virtual;
        procedure setCellPhone(value: string); virtual;
        procedure setWorkPhone(value: string); virtual;
        procedure setOtherContact(value: string); virtual;
        procedure setElectronicContact(value: string); virtual;
        procedure setFax(value: string); virtual;
        procedure setRole(role: TUserRole); virtual;
        procedure setPermissions(value: string); virtual;
        procedure setEncryption(value: string); virtual;
        procedure setSecret(value: string); virtual;
        procedure setPassword(value: string); virtual;
        procedure enable; virtual;
        procedure disable; virtual;
        procedure setEnable(enable: string); virtual;
        function getUserName: string; virtual;
        function getPrefixName: string; virtual;
        function getFirstName: string; virtual;
        function getLastName: string; virtual;
        function getMiddleName: string; virtual;
        function getSuffixName: string; virtual;
        function getCompany: string; virtual;
        function getPositionAtCompany: string; virtual;
        function getMainEmail: string; virtual;
        function getSecondaryEmail: string; virtual;
        function getHomePhone: string; virtual;
        function getCellPhone: string; virtual;
        function getWorkPhone: string; virtual;
        function getOtherContact: string; virtual;
        function getElectronicContact: string; virtual;
        function getFax: string; virtual;
        function getRole: TUserRole; virtual;
        function getPermissions: string; virtual;
        function getEncryption: string; virtual;
        function getSecret: string; virtual;
        function getPassword: string; virtual;
        function toVector: TBasicArrayList; virtual;
        function toHashMap: TJavaHashMap; virtual;
        function toPasswordHashMap: TJavaHashMap; virtual;
        procedure validateSession(weblisketSession: IWeblisketSessionInterface); virtual;
        procedure updateSession(weblisketSession: IWeblisketSessionInterface); virtual;
        function isSessionValid: Boolean; virtual;
        function getKey: TObject; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document: TDocument): TNode; virtual;
        function getUserConfigurationInterface: IUserConfigurationInterface; virtual;
        procedure setUserConfigurationInterface(userConfigurationInterface: IUserConfigurationInterface); virtual;
  end;

implementation


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


procedure TUser.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end;
    

constructor TUser.Create;
begin
    inherited Create;
    InitFields;
        Self.userConfigurationInterface := TUserConfigurationInterfaceFactory.getInstance();
        Self.password := TPassword.Create(TStringUtil.getInstance().EMPTY_STRING);
end;
    

constructor TUser.Create(request: THttpServletRequest);
begin
    inherited Create;
    InitFields;
        Self.getFormData(TRequestParams.Create(request).toHashMap());
        Self.userConfigurationInterface := TUserConfigurationInterfaceFactory.getInstance(Self.getRole());
end;
    

constructor TUser.Create(userHashMap: TJavaHashMap);
begin
    inherited Create;
    InitFields;
        Self.getFormData(userHashMap);
        Self.userConfigurationInterface := TUserConfigurationInterfaceFactory.getInstance(Self.getRole());
end;
    

// throws Exception
procedure TUser.getFormData(userHashMap: TJavaHashMap);
var
  stringUtil: TStringUtil;
  passwordString: string;
  stringValidationUtil: TObject;
  encryption: string;
  secret: string;
begin
        Self.userName := TUserName.Create(userHashMap).get();
        stringUtil := TStringUtil.getInstance();
        passwordString := stringUtil.getNonNull(string(userHashMap.get(TUserData.PASSWORD)));
        stringValidationUtil := nil;
        if ((Self.userName = '')) and ((passwordString = '')) then begin
            Self.userName := stringUtil.getNonNull(string(userHashMap.get(TWeblisketSessionData.REMOVABLEUSERNAME)));
            passwordString := stringUtil.getNonNull(string(userHashMap.get(TWeblisketSessionData.REMOVABLEPASSWORD)));
        end;
        encryption := stringUtil.getNonNull(string(userHashMap.get(TEntryData.getInstance().ENCRYPTION)));
        secret := stringUtil.getNonNull(string(userHashMap.get(TUserData.SECRET)));
        Self.password := TPassword.Create(passwordString);
        Self.prefixName := stringUtil.getNonNull(string(userHashMap.get(TUserData.PREFIXNAME)));
        Self.firstName := stringUtil.getNonNull(string(userHashMap.get(TUserData.FIRSTNAME)));
        Self.lastName := stringUtil.getNonNull(string(userHashMap.get(TUserData.LASTNAME)));
        Self.middleName := stringUtil.getNonNull(string(userHashMap.get(TUserData.MIDDLENAME)));
        Self.suffixName := stringUtil.getNonNull(string(userHashMap.get(TUserData.SUFFIXNAME)));
        Self.company := stringUtil.getNonNull(string(userHashMap.get(TUserData.COMPANY)));
        Self.positionAtCompany := stringUtil.getNonNull(string(userHashMap.get(TUserData.POSITIONATCOMPANY)));
        Self.mainEmail := stringUtil.getNonNull(string(userHashMap.get(TUserData.MAINEMAIL)));
        Self.secondaryEmail := stringUtil.getNonNull(string(userHashMap.get(TUserData.SECONDARYEMAIL)));
        Self.homePhone := stringUtil.getNonNull(string(userHashMap.get(TUserData.HOMEPHONE)));
        Self.cellPhone := stringUtil.getNonNull(string(userHashMap.get(TUserData.CELLPHONE)));
        Self.workPhone := stringUtil.getNonNull(string(userHashMap.get(TUserData.WORKPHONE)));
        Self.otherContact := stringUtil.getNonNull(string(userHashMap.get(TUserData.OTHERCONTACT)));
        Self.electronicDevice := stringUtil.getNonNull(string(userHashMap.get(TUserData.ELECTRONICDEVICE)));
        Self.fax := stringUtil.getNonNull(string(userHashMap.get(TUserData.FAX)));
        Self.role := TUserRoleB.getRole(string(userHashMap.get(TUserRoleData.NAME.toString())));
        Self.permissions := stringUtil.getNonNull(string(userHashMap.get(TUserData.PERMISSIONS)));
        if (not ((Self.permissions = ''))) and ((CompareStr(Self.permissions, TStoreFrontData.getInstance().NAME)) = (0)) then begin
            Self.permissions := stringUtil.getNonNull(string(userHashMap.get(TStoreFrontData.getInstance().NAME)));
        end else if (Self.permissions) = ('') then begin
            Self.permissions := 'No Permissions';
        end;
        Self.enable_ := stringUtil.getNonNull(string(userHashMap.get(TEntryData.getInstance().ENABLE)));
end;
    

function TUser.isValid: Boolean;
var
  valid: Boolean;
  stringValidationUtil: TObject;
  commonStrings: TCommonStrings;
begin
        try
            valid := True;
            if not (TUserName.getInstance().isValid(Self.userName).booleanValue()) then begin
                valid := False;
            end;
            if not (Self.password.isValid().booleanValue()) then begin
                valid := False;
            end;
            stringValidationUtil := nil;
            if not (stringValidationUtil.isValidRequired(Self.firstName, 1, TUserData.MAXLEN)) then begin
                valid := False;
            end;
            if not (stringValidationUtil.isValidRequired(Self.lastName, 1, TUserData.MAXLEN)) then begin
                valid := False;
            end;
            if (not (stringValidationUtil.isValidRequired(Self.mainEmail, 1, TUserData.MAXLEN))) or (((Pos(TJava.ToString('@'), Self.mainEmail) - 1)) = (-1)) then begin
                valid := False;
            end;
            Exit(valid);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VALIDATIONERROR) then begin
                commonStrings := TCommonStrings.getInstance();
                Self.logUtil.put('Failed to validate form', Self, commonStrings.IS_VALID, e);
            end;
            Exit(False);
            end;
        end;
end;
    

function TUser.validationInfo: string;
var
  stringValidationUtil: TObject;
  stringBuffer: TStringMaker;
begin
        try
            stringValidationUtil := nil;
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(TUserName.getValidationInfo(Self.userName));
            stringBuffer.append(Self.password.getValidationInfo());
            if not (stringValidationUtil.isValidRequired(Self.firstName, 1, TUserData.MAXLEN)) then begin
                stringBuffer.append('Please enter a valid First Name.<br />');
            end;
            if not (stringValidationUtil.isValidRequired(Self.lastName, 1, TUserData.MAXLEN)) then begin
                stringBuffer.append('Please enter a valid Last Name.<br />');
            end;
            if (not (stringValidationUtil.isValidRequired(Self.mainEmail, 1, TUserData.MAXLEN))) or (((Pos(TJava.ToString('@'), Self.mainEmail) - 1)) = (-1)) then begin
                stringBuffer.append('Please enter a valid email address.<br />');
            end;
            Exit(stringBuffer.toString());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put('Failed to generate validation error info', Self, 'validationInfo()', e);
            end;
            Exit('Error Validating Form');
            end;
        end;
end;
    

procedure TUser.setUserName(value: string);
begin
        Self.userName := value;
end;
    

procedure TUser.setPrefixName(value: string);
begin
        Self.prefixName := value;
end;
    

procedure TUser.setFirstName(value: string);
begin
        Self.firstName := value;
end;
    

procedure TUser.setLastName(value: string);
begin
        Self.lastName := value;
end;
    

procedure TUser.setMiddleName(value: string);
begin
        Self.middleName := value;
end;
    

procedure TUser.setSuffixName(value: string);
begin
        Self.suffixName := value;
end;
    

procedure TUser.setCompany(value: string);
begin
        Self.company := value;
end;
    

procedure TUser.setPositionAtCompany(value: string);
begin
        Self.positionAtCompany := value;
end;
    

procedure TUser.setMainEmail(value: string);
begin
        Self.mainEmail := value;
end;
    

procedure TUser.setSecondaryEmail(value: string);
begin
        Self.secondaryEmail := value;
end;
    

procedure TUser.setHomePhone(value: string);
begin
        Self.homePhone := value;
end;
    

procedure TUser.setCellPhone(value: string);
begin
        Self.cellPhone := value;
end;
    

procedure TUser.setWorkPhone(value: string);
begin
        Self.workPhone := value;
end;
    

procedure TUser.setOtherContact(value: string);
begin
        Self.otherContact := value;
end;
    

procedure TUser.setElectronicContact(value: string);
begin
        Self.electronicDevice := value;
end;
    

procedure TUser.setFax(value: string);
begin
        Self.fax := value;
end;
    

procedure TUser.setRole(role: TUserRole);
begin
        Self.role := role;
end;
    

procedure TUser.setPermissions(value: string);
begin
        Self.permissions := value;
end;
    

procedure TUser.setEncryption(value: string);
begin
        Self.encryption := value;
end;
    

procedure TUser.setSecret(value: string);
begin
        Self.secret := value;
end;
    

procedure TUser.setPassword(value: string);
begin
        Self.password.set_(value);
end;
    

procedure TUser.enable;
begin
        Self.setEnable('Yes');
end;
    

procedure TUser.disable;
begin
        Self.setEnable('No');
end;
    

procedure TUser.setEnable(enable: string);
begin
        Self.enable_ := enable;
end;
    

function TUser.getUserName: string;
begin
        Exit(Self.userName);
end;
    

function TUser.getPrefixName: string;
begin
        Exit(Self.prefixName);
end;
    

function TUser.getFirstName: string;
begin
        Exit(Self.firstName);
end;
    

function TUser.getLastName: string;
begin
        Exit(Self.lastName);
end;
    

function TUser.getMiddleName: string;
begin
        Exit(Self.middleName);
end;
    

function TUser.getSuffixName: string;
begin
        Exit(Self.suffixName);
end;
    

function TUser.getCompany: string;
begin
        Exit(Self.company);
end;
    

function TUser.getPositionAtCompany: string;
begin
        Exit(Self.positionAtCompany);
end;
    

function TUser.getMainEmail: string;
begin
        Exit(Self.mainEmail);
end;
    

function TUser.getSecondaryEmail: string;
begin
        Exit(Self.secondaryEmail);
end;
    

function TUser.getHomePhone: string;
begin
        Exit(Self.homePhone);
end;
    

function TUser.getCellPhone: string;
begin
        Exit(Self.cellPhone);
end;
    

function TUser.getWorkPhone: string;
begin
        Exit(Self.workPhone);
end;
    

function TUser.getOtherContact: string;
begin
        Exit(Self.otherContact);
end;
    

function TUser.getElectronicContact: string;
begin
        Exit(Self.electronicDevice);
end;
    

function TUser.getFax: string;
begin
        Exit(Self.fax);
end;
    

function TUser.getRole: TUserRole;
begin
        Exit(Self.role);
end;
    

function TUser.getPermissions: string;
begin
        Exit(Self.permissions);
end;
    

function TUser.getEncryption: string;
begin
        Exit(Self.encryption);
end;
    

function TUser.getSecret: string;
begin
        Exit(Self.secret);
end;
    

function TUser.getPassword: string;
begin
        Exit(Self.password.get());
end;
    

// throws Exception
function TUser.toVector: TBasicArrayList;
var
  values: TBasicArrayList;
  userConfigurationDomDocumentMapping: TUserConfigurationDomDocumentMapping;
  calendar: TDateTime;
  time: string;
begin
        values := TBasicArrayListD.Create();
        values.add(TJava.BoxString(Self.userName));
        values.add(TJava.BoxString(Self.prefixName));
        values.add(TJava.BoxString(Self.firstName));
        values.add(TJava.BoxString(Self.lastName));
        values.add(TJava.BoxString(Self.middleName));
        values.add(TJava.BoxString(Self.suffixName));
        values.add(TJava.BoxString(Self.company));
        values.add(TJava.BoxString(Self.positionAtCompany));
        values.add(TJava.BoxString(Self.mainEmail));
        values.add(TJava.BoxString(Self.secondaryEmail));
        values.add(TJava.BoxString(Self.homePhone));
        values.add(TJava.BoxString(Self.cellPhone));
        values.add(TJava.BoxString(Self.workPhone));
        values.add(TJava.BoxString(Self.otherContact));
        values.add(TJava.BoxString(Self.electronicDevice));
        values.add(TJava.BoxString(Self.fax));
        values.add(TJava.BoxString(Self.getRole().toString()));
        userConfigurationDomDocumentMapping := TUserConfigurationDomDocumentMapping.Create(Self.getUserConfigurationInterface());
        values.add(userConfigurationDomDocumentMapping.toDomDocumentString());
        values.add(TJava.BoxString(Self.permissions));
        values.addAllList(Self.password.toVector(Self.secret));
        values.add(TJava.BoxString(Self.enable_));
        calendar := Now;
        time := TJava.NewString(calendar.getTimeInMillis().toString());
        values.add(TJava.BoxString(time));
        values.add(TJava.BoxString(time));
        Exit(values);
end;
    

// throws Exception
function TUser.toHashMap: TJavaHashMap;
var
  values: TJavaHashMap;
  userConfigurationDomDocumentMapping: TUserConfigurationDomDocumentMapping;
  calendar: TDateTime;
  time: string;
begin
        values := TStdUtil.getInstance().createHashMap();
        values.put(TUserData.USERNAME, Self.userName);
        values.put(TUserData.PREFIXNAME, Self.prefixName);
        values.put(TUserData.FIRSTNAME, Self.firstName);
        values.put(TUserData.LASTNAME, Self.lastName);
        values.put(TUserData.MIDDLENAME, Self.middleName);
        values.put(TUserData.SUFFIXNAME, Self.suffixName);
        values.put(TUserData.COMPANY, Self.company);
        values.put(TUserData.POSITIONATCOMPANY, Self.positionAtCompany);
        values.put(TUserData.MAINEMAIL, Self.mainEmail);
        values.put(TUserData.SECONDARYEMAIL, Self.secondaryEmail);
        values.put(TUserData.HOMEPHONE, Self.homePhone);
        values.put(TUserData.CELLPHONE, Self.cellPhone);
        values.put(TUserData.WORKPHONE, Self.workPhone);
        values.put(TUserData.OTHERCONTACT, Self.otherContact);
        values.put(TUserData.ELECTRONICDEVICE, Self.electronicDevice);
        values.put(TUserData.FAX, Self.fax);
        if (Self.getRole()) <> (nil) then begin
            values.put(TUserRoleData.NAME.toString(), Self.getRole().toString());
        end;
        userConfigurationDomDocumentMapping := TUserConfigurationDomDocumentMapping.Create(Self.getUserConfigurationInterface());
        values.put(TUserData.CONFIGURATION, userConfigurationDomDocumentMapping.toDomDocumentString());
        values.put(TUserData.PERMISSIONS, Self.permissions);
        values.putAll(Self.password.toHashMap(Self.secret));
        values.put(TEntryData.getInstance().ENABLE, Self.enable_);
        calendar := Now;
        time := TJava.NewString(calendar.getTimeInMillis().toString());
        values.put(TEntryData.getInstance().LASTMODIFIED, time);
        Exit(values);
end;
    

function TUser.toPasswordHashMap: TJavaHashMap;
begin
        Exit(Self.password.toHashMap(Self.secret));
end;
    

procedure TUser.validateSession(weblisketSession: IWeblisketSessionInterface);
begin
        weblisketSession.setAuthenticated();
        weblisketSession.setRole(Self.getRole());
        weblisketSession.setUserName(Self.getUserName());
end;
    

procedure TUser.updateSession(weblisketSession: IWeblisketSessionInterface);
begin
end;
    

function TUser.isSessionValid: Boolean;
begin
        Exit(True);
end;
    

// throws Exception
function TUser.getKey: TObject;
begin
        Exit(TObject(Self.userName));
end;
    

function TUser.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TUser.toValidationInfoNode(document: TDocument): TNode;
begin
        Exit(nil);
end;
    

function TUser.getUserConfigurationInterface: IUserConfigurationInterface;
begin
        Exit(Self.userConfigurationInterface);
end;
    

procedure TUser.setUserConfigurationInterface(userConfigurationInterface: IUserConfigurationInterface);
begin
        Self.userConfigurationInterface := userConfigurationInterface;
end;

initialization

end.

