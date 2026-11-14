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
unit ThirdPartyInApplicationPurchaseInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LockableFeature;

type
  {AB:TYPES}
  IThirdPartyInApplicationPurchaseInterface = interface(IJavaObject) ['IThirdPartyInApplicationPurchaseInterface']
        function isPurchased(lockableFeature_: TLockableFeature): Boolean;
        procedure onCreate(anyType: TObject; stateObject: TObject);
        procedure onDestroy;
        procedure onStart;
        procedure onActivityResult(requestCode: Integer; resultCode: Integer; dataObject: TObject);
        procedure onSaveInstanceState(anyType: TObject);
        procedure onStop;
        procedure requestPurchase(lockableFeature_: TLockableFeature);
        procedure requestReceipts;
        procedure add(lockableFeature_: TLockableFeature);
        function getUserName: string;
        function isEnabled: Boolean;
  end;
  TThirdPartyInApplicationPurchaseInterface = IThirdPartyInApplicationPurchaseInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

