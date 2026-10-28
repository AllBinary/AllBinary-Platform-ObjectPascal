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
// package admin.taghelpers
unit AuthenticationHelper;

{$mode delphi}{$H+}
{$interfaces corba}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, BasicArrayList, BasicArrayListD, UserInterface, BasicUserRole, UserRole, UserRoleFactory, UserEntityFactory, UserEntityInterface, GLOBALS2, WeblisketSession, LogUtil, BooleanFactory, BooleanUtil, StringMaker, StringUtil, TagHelper;

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

  TAuthenticationHelper = class(TTagHelper)
  public
    logUtil: TLogUtil;
    weblisketSession: TWeblisketSession;
    authenticated: string;
    sessionUserName: string;
    role: TUserRole;
    timeout: string;
    attemptsInteger: Integer;
    procedure InitFields;
        constructor Create(hashMap: TJavaHashMap; pageContext: TPageContext); overload;
        constructor Create(hashMap: TJavaHashMap; httpServletRequest: THttpServletRequest); overload;
        procedure getFormData;
        function invalidateSession: Integer; virtual;
        function isSessionOld: Boolean; virtual;
        function isRarelyUsedSession: Boolean;
        function validRole: string; virtual;
        function invalidRole: string; virtual;
        function isAuthenticated: Boolean; virtual;
        function isAuthenticationSessionValid(roles: TBasicArrayList): Boolean; virtual;
        procedure nextAttempt; virtual;
        function processIfNewLogin(userName: string; password: string): Boolean; virtual;
        function processInvalidation: Boolean; virtual;
        function outputSessionInfo: string; virtual;
        function getRole: TUserRole; virtual;
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


procedure TAuthenticationHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
  
  
end;
    

constructor TAuthenticationHelper.Create(hashMap: TJavaHashMap; pageContext: TPageContext);
begin
        Create(hashMap, THttpServletRequest(pageContext.getRequest()));
end;
    

constructor TAuthenticationHelper.Create(hashMap: TJavaHashMap; httpServletRequest: THttpServletRequest);
begin
    inherited Create;
    InitFields;
        Self.weblisketSession := TWeblisketSession.Create(hashMap, httpServletRequest);
        Self.getFormData();
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().AUTHENTICATION) then begin
            Self.logUtil.putF(Self.outputSessionInfo(), Self, Self.commonStrings.CONSTRUCTOR_);
        end;
end;
    

// throws Exception
procedure TAuthenticationHelper.getFormData;
begin
        Self.authenticated := Self.weblisketSession.getAuthentication();
        Self.sessionUserName := Self.weblisketSession.getUserName();
        Self.role := Self.weblisketSession.getRole();
        Self.attemptsInteger := Self.weblisketSession.getAttempts();
        Self.timeout := Self.weblisketSession.getTimeout();
end;
    

// throws Exception
function TAuthenticationHelper.invalidateSession: Integer;
begin
        try
            Self.weblisketSession.clear();
            Exit(TTagSupport.EVAL_BODY_INCLUDE);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().AUTHENTICATIONERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'invalidateSession()', e);
            end;
            Exit(nil);
            end;
        end;
end;
    

function TAuthenticationHelper.isSessionOld: Boolean;
var
  timeCreated: Int64;
  sessionTimout: Int64;
  calendar: TDateTime;
  timeFirst: Int64;
  stringBuffer: TStringMaker;
begin
        if (Self.role) <> (nil) then begin
            timeCreated := Self.weblisketSession.getCreationTime();
            sessionTimout := Self.role.getSessionTimeout();
            calendar := Now;
            timeFirst := (calendar.getTimeInMillis()) - (sessionTimout);
            if (timeFirst) > (timeCreated) then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().AUTHENTICATION) then begin
                    stringBuffer := TStringMaker.Create();
                    stringBuffer.append('Session Is Old - Timeout: ');
                    stringBuffer.appendlong(sessionTimout);
                    stringBuffer.append(' Eval: ');
                    stringBuffer.appendlong(timeFirst);
                    stringBuffer.append(' > ');
                    stringBuffer.appendlong(timeCreated);
                    Self.logUtil.putF(stringBuffer.toString(), Self, 'isSessionOld()');
                end;
                Exit(True);
            end;
        end else begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().AUTHENTICATION) then begin
                Self.logUtil.putF('Role Is Not In Session', Self, 'isSessionOld()');
            end;
        end;
        Exit(Self.isRarelyUsedSession());
end;
    

function TAuthenticationHelper.isRarelyUsedSession: Boolean;
var
  timeCreated: Int64;
  lastAccess: Int64;
  inactivityAllowed: Int64;
  calendar: TDateTime;
  timeFirst: Int64;
  stringBuffer: TStringMaker;
begin
        if (Self.role) <> (nil) then begin
            timeCreated := Self.weblisketSession.getCreationTime();
            lastAccess := Self.weblisketSession.getLastAccessedTime();
            inactivityAllowed := Self.role.getSessionInactivityTimeout();
            calendar := Now;
            timeFirst := (calendar.getTimeInMillis()) - (lastAccess);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().AUTHENTICATION) then begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Session Is Rarely Used - Timeout: ');
                stringBuffer.appendlong(lastAccess);
                stringBuffer.append(' Eval: ');
                stringBuffer.appendlong(timeFirst);
                stringBuffer.append(' > ');
                stringBuffer.appendlong(inactivityAllowed);
                Self.logUtil.putF(stringBuffer.toString(), Self, 'isRarelyUsedSession()');
            end;
        end else begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().AUTHENTICATION) then begin
                Self.logUtil.putF('Role Is Not In Session', Self, 'isRarelyUsedSession()');
            end;
        end;
        Exit(False);
end;
    

function TAuthenticationHelper.validRole: string;
var
  stringBuffer: TStringMaker;
  error: string;
begin
        try
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Trying New login<p/>');
            Exit(stringBuffer.toString());
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to set valid role';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().AUTHENTICATIONERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'validRole()', e);
            end;
            Exit(error);
            end;
        end;
end;
    

function TAuthenticationHelper.invalidRole: string;
var
  stringBuffer: TStringMaker;
  error: string;
begin
        try
            Self.weblisketSession.setAuthenticated(False);
            stringBuffer := TStringMaker.Create();
            stringBuffer.append('Sorry your username and password is invalid on this page. ');
            stringBuffer.append('Trying New login<p/>');
            Exit(stringBuffer.toString());
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to set role invalid';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().AUTHENTICATIONERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'invalidRole()', e);
            end;
            Exit(error);
            end;
        end;
end;
    

// throws Exception
function TAuthenticationHelper.isAuthenticated: Boolean;
begin
        if TBooleanUtil.getInstance().getFromString(Self.authenticated) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TAuthenticationHelper.isAuthenticationSessionValid(roles: TBasicArrayList): Boolean;
var
  basicUserRole: TBasicUserRole;
  basicUserRoleArray: TArray<TObject>;
  size: Integer;
  mustBeOfRole: TBasicUserRole;
  userEntityInterface: IUserEntityInterface;
  userInterface: IUserInterface;
  index: Integer;
begin
        try
            if (Self.role) <> (nil) then begin
                if Self.isAuthenticated() then begin
                    if (Self.sessionUserName) <> ('') then begin
                        basicUserRole := Self.role.getBasicUserRole();
                        basicUserRoleArray := roles.toArray();
                        size := System.Length(basicUserRoleArray);
                        for index := 0 to size - 1 do begin
                            mustBeOfRole := TBasicUserRole(basicUserRoleArray[index]);
                            if basicUserRole.equals(mustBeOfRole) then begin
                                if basicUserRole.equals(TUserRoleFactory.getInstance().CUSTOMER) then begin
                                    userEntityInterface := TUserEntityFactory.getInstance();
                                    userInterface := userEntityInterface.getUser(Self.sessionUserName);
                                    if not (userInterface.isSessionValid().booleanValue()) then begin
                                        Exit(False);
                                    end;
                                end;
                                Exit(True);
                            end;
                        end;
                    end;
                    Exit(False);
                end;
            end else begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().AUTHENTICATION) then begin
                    Self.logUtil.putF('Role Is Not In Session', Self, 'isAuthenticationSessionValid()');
                end;
            end;
            Exit(False);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().AUTHENTICATIONERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'isAuthenticatedSessionValid()', e);
            end;
            Exit(False);
            end;
        end;
end;
    

procedure TAuthenticationHelper.nextAttempt;
begin
        if ((Self.attemptsInteger) <> (0)) and ((Self.attemptsInteger) > (0)) then begin
            Self.weblisketSession.setAttempts((Self.attemptsInteger) + (1));
        end else begin
            Self.weblisketSession.setAttempts(1);
        end;
end;
    

function TAuthenticationHelper.processIfNewLogin(userName: string; password: string): Boolean;
var
  login: string;
  userEntityInterface: IUserEntityInterface;
  userInterface: IUserInterface;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().AUTHENTICATIONERROR) then begin
                Self.logUtil.putF('Starting: ' + userName, Self, 'processIfNewLogin()');
            end;
            if ((((userName) <> ('')) and ((CompareStr(userName, TStringUtil.getInstance().EMPTY_STRING)) <> (0))) and ((password) <> (''))) and ((CompareStr(password, TStringUtil.getInstance().EMPTY_STRING)) <> (0)) then begin
                
                userEntityInterface := TUserEntityFactory.getInstance();
                login := userEntityInterface.login(userName, password);
                if (CompareStr(login, GLOBALS2.LOGINSUCCESS)) = (0) then begin
                    userInterface := userEntityInterface.getUser(userName);
                    if userInterface.isSessionValid().booleanValue() then begin
                        Self.weblisketSession.setAttempts(0);
                        Exit(True);
                    end;
                end;
                Self.nextAttempt();
                Exit(False);
            end;
            Self.nextAttempt();
            Exit(False);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().AUTHENTICATIONERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'processIfNewLogin()', e);
            end;
            Exit(False);
            end;
        end;
end;
    

function TAuthenticationHelper.processInvalidation: Boolean;
begin
        try
            if TBooleanUtil.getInstance().getFromString(Self.timeout) then begin
                Self.invalidateSession();
                Exit(True);
            end;
            begin
                Self.weblisketSession.setTimeout(TBooleanFactory.getInstance().TRUE_STRING);
                Exit(False);
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().AUTHENTICATIONERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, 'processInvalidation()', e);
            end;
            Exit(False);
            end;
        end;
end;
    

function TAuthenticationHelper.outputSessionInfo: string;
var
  calendar: TDateTime;
  timeCreated: Int64;
  stringBuffer: TStringMaker;
  lastAccess: Int64;
begin
        try
            calendar := Now;
            timeCreated := Self.weblisketSession.getCreationTime();
            stringBuffer := TStringMaker.Create();
            lastAccess := Self.weblisketSession.getLastAccessedTime();
            stringBuffer.append('Time Since Last Access: ' + TJava.ToString(((calendar.getTimeInMillis()) - (lastAccess))) + '<br/>'#10'');
            if (Self.role) <> (nil) then begin
                stringBuffer.append('Auth: ');
                stringBuffer.append(Self.authenticated);
                stringBuffer.append(' UserName: ');
                stringBuffer.append(Self.sessionUserName);
                stringBuffer.append(' Role: ');
                stringBuffer.append(Self.role.toString());
                stringBuffer.append('<br/>'#10'');
                stringBuffer.append('Time Left: ');
                stringBuffer.appendlong(Int64(Trunc(((Self.role.getSessionTimeout()) - (((calendar.getTimeInMillis()) - (timeCreated)))))));
                stringBuffer.append('<br/>'#10'');
                stringBuffer.append('Inactivity Time Allowed: ');
                stringBuffer.appendlong(Int64(Trunc(Self.role.getSessionTimeout())));
                stringBuffer.append('<br/>'#10'');
                stringBuffer.append('Inactivity Time Allowed: ');
                stringBuffer.appendlong(Int64(Trunc(Self.role.getSessionInactivityTimeout())));
                stringBuffer.append('<br/>'#10'');
            end else begin
                stringBuffer.append('Role Is Not Set<br/>'#10'');
            end;
            Exit(stringBuffer.toString());
        except
            on e: SysUtils.Exception do begin
            Exit('Error');
            end;
        end;
end;
    

function TAuthenticationHelper.getRole: TUserRole;
begin
        Exit(Self.role);
end;

initialization

end.

