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
unit StoreRoleFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList;

type
  {AB:TYPES}
  TStoreRoleFactory = class(TObject)
  public
    roles: TBasicArrayList;
    subscriberRoles: TBasicArrayList;
    wholesaleRoles: TBasicArrayList;
    class var instance: TStoreRoleFactory;
    procedure InitFields;
        class function getInstance: TStoreRoleFactory; static;
        constructor Create;
        function getRoles: TBasicArrayList; virtual;
        function getSubscriberRoles: TBasicArrayList; virtual;
        function getWholesaleRoles: TBasicArrayList; virtual;
  end;

implementation
uses
  BasicUserRoleFactory, BasicArrayListD;


{AB:CODE}

procedure TStoreRoleFactory.InitFields;
begin
  Self.roles := TBasicArrayListD.Create();
  Self.subscriberRoles := TBasicArrayListD.Create();
  Self.wholesaleRoles := TBasicArrayListD.Create();
end;
    

class function TStoreRoleFactory.getInstance: TStoreRoleFactory;
begin
        Exit(TStoreRoleFactory.instance);
end;
    

constructor TStoreRoleFactory.Create;
var
  basicUserRoleFactory_: TBasicUserRoleFactory;
begin
    inherited Create;
    InitFields;
        basicUserRoleFactory_ := TBasicUserRoleFactory.getInstance();
        Self.roles.add(TJava.Box(basicUserRoleFactory_.CUSTOMER));
        Self.roles.add(TJava.Box(basicUserRoleFactory_.SUBSCRIBERCUSTOMER));
        Self.roles.add(TJava.Box(basicUserRoleFactory_.WHOLESALECUSTOMER));
        Self.subscriberRoles.add(TJava.Box(basicUserRoleFactory_.SUBSCRIBERCUSTOMER));
        Self.wholesaleRoles.add(TJava.Box(basicUserRoleFactory_.WHOLESALECUSTOMER));
end;
    

function TStoreRoleFactory.getRoles: TBasicArrayList;
begin
        Exit(Self.roles);
end;
    

function TStoreRoleFactory.getSubscriberRoles: TBasicArrayList;
begin
        Exit(Self.subscriberRoles);
end;
    

function TStoreRoleFactory.getWholesaleRoles: TBasicArrayList;
begin
        Exit(Self.wholesaleRoles);
end;

initialization
  {AB:INITIALIZATION}
  TStoreRoleFactory.instance := TStoreRoleFactory.Create();
  {AB:END}

end.

