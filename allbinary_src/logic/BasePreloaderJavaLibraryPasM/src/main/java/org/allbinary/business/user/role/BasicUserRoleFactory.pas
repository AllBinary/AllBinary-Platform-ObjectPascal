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
unit BasicUserRoleFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicUserRole;

type
  {AB:TYPES}
  TBasicUserRoleFactory = class(TObject)
  public
    INACTIVITYTIMEOUT: Int64;
    CUSTOMERTIMEOUT: Int64;
    CUSTOMERMAXSESSIONTIME: Int64;
    MAXSESSIONTIME: Int64;
    INSTALLER: TBasicUserRole;
    ADMINISTRATOR: TBasicUserRole;
    CUSTOMER: TBasicUserRole;
    SUBSCRIBERCUSTOMER: TBasicUserRole;
    WHOLESALECUSTOMER: TBasicUserRole;
    STOREMANAGER: TBasicUserRole;
    PRODUCTMANAGER: TBasicUserRole;
    CUSTOMERMANAGER: TBasicUserRole;
    PAYMENTMANAGER: TBasicUserRole;
    ORDERMANAGER: TBasicUserRole;
    WEBMANAGER: TBasicUserRole;
    REVIEWER: TBasicUserRole;
    SHIPPING: TBasicUserRole;
    ADJUSTER: TBasicUserRole;
    WORKFLOWEDITOR: TBasicUserRole;
    WIZARD: TBasicUserRole;
    VIEWEDITOR: TBasicUserRole;
    class var instance: TBasicUserRoleFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TBasicUserRoleFactory; static;
  end;

implementation

{AB:CODE}

procedure TBasicUserRoleFactory.InitFields;
begin
  Self.INACTIVITYTIMEOUT := 360000000;
  Self.CUSTOMERTIMEOUT := 360000000;
  Self.CUSTOMERMAXSESSIONTIME := 360000000;
  Self.MAXSESSIONTIME := 360000000;
  Self.INSTALLER := TBasicUserRole.Create('Installer', 16, Self.MAXSESSIONTIME, Self.INACTIVITYTIMEOUT);
  Self.ADMINISTRATOR := TBasicUserRole.Create('Administrator', 0, Self.MAXSESSIONTIME, Self.INACTIVITYTIMEOUT);
  Self.CUSTOMER := TBasicUserRole.Create('CustomerUser', 'Customer User', 1, Self.CUSTOMERTIMEOUT, Self.CUSTOMERMAXSESSIONTIME);
  Self.SUBSCRIBERCUSTOMER := TBasicUserRole.Create('SubscriberUser', 'Subscriber User', 2, Self.CUSTOMERTIMEOUT, Self.CUSTOMERMAXSESSIONTIME);
  Self.WHOLESALECUSTOMER := TBasicUserRole.Create('WholesaleUser', 'Wholesale User', 3, Self.CUSTOMERTIMEOUT, Self.CUSTOMERMAXSESSIONTIME);
  Self.STOREMANAGER := TBasicUserRole.Create('StoreManager', 'Store Manager', 4, Self.MAXSESSIONTIME, Self.INACTIVITYTIMEOUT);
  Self.PRODUCTMANAGER := TBasicUserRole.Create('ProductManager', 'Product Manager', 5, Self.MAXSESSIONTIME, Self.INACTIVITYTIMEOUT);
  Self.CUSTOMERMANAGER := TBasicUserRole.Create('UserManager', 'User Manager', 6, Self.MAXSESSIONTIME, Self.INACTIVITYTIMEOUT);
  Self.PAYMENTMANAGER := TBasicUserRole.Create('PaymentManager', 'Payment Manager', 7, Self.MAXSESSIONTIME, Self.INACTIVITYTIMEOUT);
  Self.ORDERMANAGER := TBasicUserRole.Create('OrderManager', 'Order Manager', 8, Self.MAXSESSIONTIME, Self.INACTIVITYTIMEOUT);
  Self.WEBMANAGER := TBasicUserRole.Create('WebManager', 'Web Manager', 9, Self.MAXSESSIONTIME, Self.INACTIVITYTIMEOUT);
  Self.REVIEWER := TBasicUserRole.Create('Reviewer', 10, Self.MAXSESSIONTIME, Self.INACTIVITYTIMEOUT);
  Self.SHIPPING := TBasicUserRole.Create('Shipping', 11, Self.MAXSESSIONTIME, Self.INACTIVITYTIMEOUT);
  Self.ADJUSTER := TBasicUserRole.Create('Adjuster', 12, Self.MAXSESSIONTIME, Self.INACTIVITYTIMEOUT);
  Self.WORKFLOWEDITOR := TBasicUserRole.Create('WorkFlowEditor', 'WorkFlow Editor', 13, Self.MAXSESSIONTIME, Self.INACTIVITYTIMEOUT);
  Self.WIZARD := TBasicUserRole.Create('WizardUser', 'Wizard User', 14, Self.MAXSESSIONTIME, Self.INACTIVITYTIMEOUT);
  Self.VIEWEDITOR := TBasicUserRole.Create('ViewEditor', 'View Editor', 15, Self.MAXSESSIONTIME, Self.INACTIVITYTIMEOUT);
end;

constructor TBasicUserRoleFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TBasicUserRoleFactory.getInstance: TBasicUserRoleFactory;
begin
        Exit(TBasicUserRoleFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TBasicUserRoleFactory.instance := TBasicUserRoleFactory.Create();
  {AB:END}

end.

