{
 
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.business.user.role
unit BasicUserRoles;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, BasicUserRole;

type
  {AB:TYPES}
  TBasicUserRoles = class(TObject)
  public
    roleVector: TBasicArrayList;
    class var instance: TBasicUserRoles;
    procedure InitFields;
    constructor Create;
        class function getInstance: TBasicUserRoles; static;
        function getRole(role: string): TBasicUserRole; virtual;
        function getAll: TBasicArrayList; virtual;
  end;

implementation
uses
  BasicArrayListD;


{AB:CODE}

procedure TBasicUserRoles.InitFields;
begin
  Self.roleVector := TBasicArrayListD.Create();
end;

constructor TBasicUserRoles.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TBasicUserRoles.getInstance: TBasicUserRoles;
begin
        Exit(TBasicUserRoles.instance);
end;
    

// throws Exception
function TBasicUserRoles.getRole(role: string): TBasicUserRole;
var
  roleVector: TBasicArrayList;
  size: Integer;
  userRole: TBasicUserRole;
  index: Integer;
begin
        roleVector := Self.getAll();
        size := roleVector.size();
        for index := 0 to size - 1 do begin
            userRole := TBasicUserRole(TJava.ToObject(roleVector.get(index)));
            if (CompareStr(role, userRole.toString())) = (0) then begin
                Exit(userRole);
            end;
        end;
        raise SysUtils.Exception.Create('Unable to get role - Unknown Role');
end;
    

function TBasicUserRoles.getAll: TBasicArrayList;
begin
        Exit(Self.roleVector);
end;

initialization
  {AB:INITIALIZATION}
  TBasicUserRoles.instance := TBasicUserRoles.Create();
  {AB:END}

end.

