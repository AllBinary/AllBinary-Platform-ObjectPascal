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
unit AdminRoleFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList;

type
  {AB:TYPES}
  TAdminRoleFactory = class(TObject)
  public
    adminRoles: TBasicArrayList;
    storeAdminRoles: TBasicArrayList;
    storeManagementRoles: TBasicArrayList;
    productManagementRoles: TBasicArrayList;
    reviewManagementRoles: TBasicArrayList;
    customerManagementRoles: TBasicArrayList;
    workflowManagementRoles: TBasicArrayList;
    orderManagementRoles: TBasicArrayList;
    adjusterManagementRoles: TBasicArrayList;
    shippingManagementRoles: TBasicArrayList;
    webManagementRoles: TBasicArrayList;
    class var instance: TAdminRoleFactory;
    procedure InitFields;
        class function getInstance: TAdminRoleFactory; static;
        constructor Create;
        function getProductManagementRoles: TBasicArrayList; virtual;
        function getAdminRoles: TBasicArrayList; virtual;
        function getStoreAdminRoles: TBasicArrayList; virtual;
        function getStoreManagementRoles: TBasicArrayList; virtual;
        function getReviewManagementRoles: TBasicArrayList; virtual;
        function getCustomerManagementRoles: TBasicArrayList; virtual;
        function getWorkflowManagementRoles: TBasicArrayList; virtual;
        function getWebManagementRoles: TBasicArrayList; virtual;
        function getShippingManagementRoles: TBasicArrayList; virtual;
        function getAdjusterManagementRoles: TBasicArrayList; virtual;
        function getOrderManagementRoles: TBasicArrayList; virtual;
  end;

implementation
uses
  BasicUserRoleFactory, BasicArrayListD;


{AB:CODE}

procedure TAdminRoleFactory.InitFields;
begin
  Self.adminRoles := TBasicArrayListD.Create();
  Self.storeAdminRoles := TBasicArrayListD.Create();
  Self.storeManagementRoles := TBasicArrayListD.Create();
  Self.productManagementRoles := TBasicArrayListD.Create();
  Self.reviewManagementRoles := TBasicArrayListD.Create();
  Self.customerManagementRoles := TBasicArrayListD.Create();
  Self.workflowManagementRoles := TBasicArrayListD.Create();
  Self.orderManagementRoles := TBasicArrayListD.Create();
  Self.adjusterManagementRoles := TBasicArrayListD.Create();
  Self.shippingManagementRoles := TBasicArrayListD.Create();
  Self.webManagementRoles := TBasicArrayListD.Create();
end;
    

class function TAdminRoleFactory.getInstance: TAdminRoleFactory;
begin
        Exit(TAdminRoleFactory.instance);
end;
    

constructor TAdminRoleFactory.Create;
var
  basicUserRoleFactory_: TBasicUserRoleFactory;
begin
    inherited Create;
    InitFields;
        basicUserRoleFactory_ := TBasicUserRoleFactory.getInstance();
        Self.adminRoles.add(TJava.Box(basicUserRoleFactory_.ADMINISTRATOR));
        Self.storeAdminRoles.add(TJava.Box(basicUserRoleFactory_.ADMINISTRATOR));
        Self.storeAdminRoles.add(TJava.Box(basicUserRoleFactory_.STOREMANAGER));
        Self.storeManagementRoles.add(TJava.Box(basicUserRoleFactory_.ADMINISTRATOR));
        Self.storeManagementRoles.add(TJava.Box(basicUserRoleFactory_.STOREMANAGER));
        Self.storeManagementRoles.add(TJava.Box(basicUserRoleFactory_.CUSTOMERMANAGER));
        Self.storeManagementRoles.add(TJava.Box(basicUserRoleFactory_.ADJUSTER));
        Self.storeManagementRoles.add(TJava.Box(basicUserRoleFactory_.PRODUCTMANAGER));
        Self.storeManagementRoles.add(TJava.Box(basicUserRoleFactory_.REVIEWER));
        Self.storeManagementRoles.add(TJava.Box(basicUserRoleFactory_.SHIPPING));
        Self.productManagementRoles.add(TJava.Box(basicUserRoleFactory_.ADMINISTRATOR));
        Self.productManagementRoles.add(TJava.Box(basicUserRoleFactory_.STOREMANAGER));
        Self.productManagementRoles.add(TJava.Box(basicUserRoleFactory_.PRODUCTMANAGER));
        Self.reviewManagementRoles.add(TJava.Box(basicUserRoleFactory_.ADMINISTRATOR));
        Self.reviewManagementRoles.add(TJava.Box(basicUserRoleFactory_.STOREMANAGER));
        Self.reviewManagementRoles.add(TJava.Box(basicUserRoleFactory_.REVIEWER));
        Self.customerManagementRoles.add(TJava.Box(basicUserRoleFactory_.ADMINISTRATOR));
        Self.customerManagementRoles.add(TJava.Box(basicUserRoleFactory_.STOREMANAGER));
        Self.customerManagementRoles.add(TJava.Box(basicUserRoleFactory_.CUSTOMERMANAGER));
        Self.workflowManagementRoles.add(TJava.Box(basicUserRoleFactory_.ADMINISTRATOR));
        Self.workflowManagementRoles.add(TJava.Box(basicUserRoleFactory_.STOREMANAGER));
        Self.workflowManagementRoles.add(TJava.Box(basicUserRoleFactory_.WORKFLOWEDITOR));
        Self.orderManagementRoles.add(TJava.Box(basicUserRoleFactory_.ADMINISTRATOR));
        Self.orderManagementRoles.add(TJava.Box(basicUserRoleFactory_.STOREMANAGER));
        Self.adjusterManagementRoles.add(TJava.Box(basicUserRoleFactory_.ADMINISTRATOR));
        Self.adjusterManagementRoles.add(TJava.Box(basicUserRoleFactory_.STOREMANAGER));
        Self.adjusterManagementRoles.add(TJava.Box(basicUserRoleFactory_.ADJUSTER));
        Self.shippingManagementRoles.add(TJava.Box(basicUserRoleFactory_.ADMINISTRATOR));
        Self.shippingManagementRoles.add(TJava.Box(basicUserRoleFactory_.STOREMANAGER));
        Self.shippingManagementRoles.add(TJava.Box(basicUserRoleFactory_.SHIPPING));
        Self.webManagementRoles.add(TJava.Box(basicUserRoleFactory_.ADMINISTRATOR));
        Self.webManagementRoles.add(TJava.Box(basicUserRoleFactory_.STOREMANAGER));
        Self.webManagementRoles.add(TJava.Box(basicUserRoleFactory_.WEBMANAGER));
        Self.webManagementRoles.add(TJava.Box(basicUserRoleFactory_.WORKFLOWEDITOR));
        Self.webManagementRoles.add(TJava.Box(basicUserRoleFactory_.VIEWEDITOR));
end;
    

function TAdminRoleFactory.getProductManagementRoles: TBasicArrayList;
begin
        Exit(Self.productManagementRoles);
end;
    

function TAdminRoleFactory.getAdminRoles: TBasicArrayList;
begin
        Exit(Self.adminRoles);
end;
    

function TAdminRoleFactory.getStoreAdminRoles: TBasicArrayList;
begin
        Exit(Self.storeAdminRoles);
end;
    

function TAdminRoleFactory.getStoreManagementRoles: TBasicArrayList;
begin
        Exit(Self.storeManagementRoles);
end;
    

function TAdminRoleFactory.getReviewManagementRoles: TBasicArrayList;
begin
        Exit(Self.reviewManagementRoles);
end;
    

function TAdminRoleFactory.getCustomerManagementRoles: TBasicArrayList;
begin
        Exit(Self.customerManagementRoles);
end;
    

function TAdminRoleFactory.getWorkflowManagementRoles: TBasicArrayList;
begin
        Exit(Self.workflowManagementRoles);
end;
    

function TAdminRoleFactory.getWebManagementRoles: TBasicArrayList;
begin
        Exit(Self.webManagementRoles);
end;
    

function TAdminRoleFactory.getShippingManagementRoles: TBasicArrayList;
begin
        Exit(Self.shippingManagementRoles);
end;
    

function TAdminRoleFactory.getAdjusterManagementRoles: TBasicArrayList;
begin
        Exit(Self.adjusterManagementRoles);
end;
    

function TAdminRoleFactory.getOrderManagementRoles: TBasicArrayList;
begin
        Exit(Self.orderManagementRoles);
end;

initialization
  {AB:INITIALIZATION}
  TAdminRoleFactory.instance := TAdminRoleFactory.Create();
  {AB:END}

end.

