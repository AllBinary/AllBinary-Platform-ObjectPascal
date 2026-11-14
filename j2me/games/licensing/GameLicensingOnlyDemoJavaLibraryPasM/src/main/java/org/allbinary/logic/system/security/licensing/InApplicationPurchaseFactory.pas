{
 
  To change this license header, choose License Headers in Project Properties. 
  To change this template file, choose Tools | Templates 
  and open the template in the editor.  
}
// Generated Code Do Not Modify
// package org.allbinary.logic.system.security.licensing
unit InApplicationPurchaseFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LockableFeature;

type
  {AB:TYPES}
  TInApplicationPurchaseFactory = class(TObject)
  public
    class var instance: TInApplicationPurchaseFactory;
        class function getInstance: TInApplicationPurchaseFactory; static;
        constructor Create;
        procedure init(anyType: TObject; stateObject: TObject); virtual;
        procedure onCreate(anyType: TObject; stateObject: TObject); virtual;
        procedure onStart; virtual;
        procedure onResult(requestCode: Integer; resultCode: Integer; data: TObject); virtual;
        procedure onSaveState(anyType: TObject); virtual;
        procedure onStop; virtual;
        procedure onDestroy; virtual;
        procedure purchase(lockableFeature_: TLockableFeature); virtual;
        function isPurchased(lockableFeature_: TLockableFeature): Boolean; virtual;
        procedure add(lockableFeature_: TLockableFeature); virtual;
        function getUserName: string; virtual;
        function isEnabled: Boolean; virtual;
  end;

implementation
uses
  StringUtil;


{AB:CODE}
    

class function TInApplicationPurchaseFactory.getInstance: TInApplicationPurchaseFactory;
begin
        Exit(TInApplicationPurchaseFactory.instance);
end;
    

constructor TInApplicationPurchaseFactory.Create;
begin
    inherited Create;
end;
    

procedure TInApplicationPurchaseFactory.init(anyType: TObject; stateObject: TObject);
begin
end;
    

procedure TInApplicationPurchaseFactory.onCreate(anyType: TObject; stateObject: TObject);
begin
end;
    

procedure TInApplicationPurchaseFactory.onStart;
begin
end;
    

procedure TInApplicationPurchaseFactory.onResult(requestCode: Integer; resultCode: Integer; data: TObject);
begin
end;
    

procedure TInApplicationPurchaseFactory.onSaveState(anyType: TObject);
begin
end;
    

procedure TInApplicationPurchaseFactory.onStop;
begin
end;
    

procedure TInApplicationPurchaseFactory.onDestroy;
begin
end;
    

procedure TInApplicationPurchaseFactory.purchase(lockableFeature_: TLockableFeature);
begin
end;
    

function TInApplicationPurchaseFactory.isPurchased(lockableFeature_: TLockableFeature): Boolean;
begin
        Exit(False);
end;
    

procedure TInApplicationPurchaseFactory.add(lockableFeature_: TLockableFeature);
begin
end;
    

function TInApplicationPurchaseFactory.getUserName: string;
begin
        Exit(TStringUtil.getInstance().EMPTY_STRING);
end;
    

function TInApplicationPurchaseFactory.isEnabled: Boolean;
begin
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  TInApplicationPurchaseFactory.instance := TInApplicationPurchaseFactory.Create();
  {AB:END}

end.

