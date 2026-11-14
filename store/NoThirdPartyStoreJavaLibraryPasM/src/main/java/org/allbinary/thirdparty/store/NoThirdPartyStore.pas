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
unit NoThirdPartyStore;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbeClientInformationInterface, ThirdPartyStore;

type
  {AB:TYPES}
  TNoThirdPartyStore = class(TThirdPartyStore)
  public
        constructor Create;
        procedure authorize(clientInformationInterface: IAbeClientInformationInterface); override;
  end;

implementation
uses
  StringUtil;


{AB:CODE}
    

constructor TNoThirdPartyStore.Create;
begin
        inherited Create(TStringUtil.getInstance().EMPTY_STRING);
end;
    

procedure TNoThirdPartyStore.authorize(clientInformationInterface: IAbeClientInformationInterface);
begin
        Self.setAuthorized(True);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

