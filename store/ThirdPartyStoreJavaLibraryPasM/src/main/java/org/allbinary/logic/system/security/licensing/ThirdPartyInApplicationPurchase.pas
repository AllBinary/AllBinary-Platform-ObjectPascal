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
// package org.allbinary.logic.system.security.licensing
unit ThirdPartyInApplicationPurchase;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LockableFeature, ThirdPartyInApplicationPurchaseInterface;

type
  {AB:TYPES}
  TThirdPartyInApplicationPurchase = class(TInterfacedObject, IThirdPartyInApplicationPurchaseInterface)
  public
    function JavaObject: TObject;
    constructor Create;
        function isPurchased(lockableFeature_: TLockableFeature): Boolean; virtual;
        procedure onCreate(anyType: TObject; stateObject: TObject); virtual;
        procedure onDestroy; virtual;
        procedure onStart; virtual;
        procedure onActivityResult(requestCode: Integer; resultCode: Integer; dataObject: TObject); virtual;
        procedure onSaveInstanceState(anyType: TObject); virtual;
        procedure onStop; virtual;
        procedure requestPurchase(lockableFeature_: TLockableFeature); virtual;
        procedure requestReceipts; virtual;
        procedure add(lockableFeature_: TLockableFeature); virtual;
        function getUserName: string; virtual;
        function isEnabled: Boolean; virtual;
        procedure requestProducts; virtual;
  end;

implementation
uses
  StringUtil;


{AB:CODE}

function TThirdPartyInApplicationPurchase.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TThirdPartyInApplicationPurchase.Create;
begin
  inherited Create;
end;
    

function TThirdPartyInApplicationPurchase.isPurchased(lockableFeature_: TLockableFeature): Boolean;
begin
        Exit(False);
end;
    

procedure TThirdPartyInApplicationPurchase.onCreate(anyType: TObject; stateObject: TObject);
begin
end;
    

procedure TThirdPartyInApplicationPurchase.onDestroy;
begin
end;
    

procedure TThirdPartyInApplicationPurchase.onStart;
begin
end;
    

procedure TThirdPartyInApplicationPurchase.onActivityResult(requestCode: Integer; resultCode: Integer; dataObject: TObject);
begin
end;
    

procedure TThirdPartyInApplicationPurchase.onSaveInstanceState(anyType: TObject);
begin
end;
    

procedure TThirdPartyInApplicationPurchase.onStop;
begin
end;
    

procedure TThirdPartyInApplicationPurchase.requestPurchase(lockableFeature_: TLockableFeature);
begin
end;
    

procedure TThirdPartyInApplicationPurchase.requestReceipts;
begin
end;
    

procedure TThirdPartyInApplicationPurchase.add(lockableFeature_: TLockableFeature);
begin
end;
    

function TThirdPartyInApplicationPurchase.getUserName: string;
begin
        Exit(TStringUtil.getInstance().EMPTY_STRING);
end;
    

function TThirdPartyInApplicationPurchase.isEnabled: Boolean;
begin
        Exit(False);
end;
    

procedure TThirdPartyInApplicationPurchase.requestProducts;
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

