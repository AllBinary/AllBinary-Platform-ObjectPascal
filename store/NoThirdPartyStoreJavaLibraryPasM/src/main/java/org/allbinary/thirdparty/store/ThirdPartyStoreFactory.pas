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
// package org.allbinary.thirdparty.store
unit ThirdPartyStoreFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, NoThirdPartyStore, ThirdPartyStore;

type
  {AB:TYPES}
  TThirdPartyStoreFactory = class(TObject)
  public
    class var instance: TNoThirdPartyStore;
        class function getInstance: TThirdPartyStore; static;
        constructor Create;
  end;

implementation

{AB:CODE}
    

class function TThirdPartyStoreFactory.getInstance: TThirdPartyStore;
begin
        Exit(TThirdPartyStoreFactory.instance);
end;
    

constructor TThirdPartyStoreFactory.Create;
begin
    inherited Create;
end;

initialization
  {AB:INITIALIZATION}
  TThirdPartyStoreFactory.instance := TNoThirdPartyStore.Create();
  {AB:END}

end.

