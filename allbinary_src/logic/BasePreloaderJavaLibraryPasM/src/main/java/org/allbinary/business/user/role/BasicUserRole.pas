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
// package org.allbinary.business.user.role
unit BasicUserRole;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TBasicUserRole = class(TObject)
  public
    m_int_RoleId: Integer;
    role: string;
    displayValue: string;
    sessionTimeout: Int64;
    sessionInactivityTimeout: Int64;
    procedure InitFields;
        constructor Create(aRole: string; a_int_RoleId: Integer; aSessionTimeout: Int64; aSessionInactivityTimeout: Int64); overload;
        constructor Create(aRole: string; aDisplayValue: string; a_int_RoleId: Integer; aSessionTimeout: Int64; aSessionInactivityTimeout: Int64); overload;
        function getRoleId: Integer;
        function getRole: string; virtual;
        function getSessionTimeout: Int64; virtual;
        function getSessionInactivityTimeout: Int64; virtual;
        function equals(basicUserRole_: TBasicUserRole): Boolean; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  BasicUserRoles;


{AB:CODE}

procedure TBasicUserRole.InitFields;
begin
  
  
  
  
  
end;
    

constructor TBasicUserRole.Create(aRole: string; a_int_RoleId: Integer; aSessionTimeout: Int64; aSessionInactivityTimeout: Int64);
begin
        Create(aRole, aRole, a_int_RoleId, aSessionTimeout, aSessionInactivityTimeout);
end;
    

constructor TBasicUserRole.Create(aRole: string; aDisplayValue: string; a_int_RoleId: Integer; aSessionTimeout: Int64; aSessionInactivityTimeout: Int64);
begin
    inherited Create;
    InitFields;
        Self.m_int_RoleId := a_int_RoleId;
        Self.role := aRole;
        Self.displayValue := aDisplayValue;
        Self.sessionTimeout := aSessionTimeout;
        Self.sessionInactivityTimeout := aSessionInactivityTimeout;
        TBasicUserRoles.getInstance().roleVector.add(Self);
end;
    

function TBasicUserRole.getRoleId: Integer;
begin
        Exit(Self.m_int_RoleId);
end;
    

function TBasicUserRole.getRole: string;
begin
        Exit(Self.role);
end;
    

function TBasicUserRole.getSessionTimeout: Int64;
begin
        Exit(Self.sessionTimeout);
end;
    

function TBasicUserRole.getSessionInactivityTimeout: Int64;
begin
        Exit(Self.sessionInactivityTimeout);
end;
    

function TBasicUserRole.equals(basicUserRole_: TBasicUserRole): Boolean;
begin
        if (Self.getRoleId()) = (basicUserRole_.getRoleId()) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TBasicUserRole.toString: string;
begin
        Exit(Self.getRole());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

