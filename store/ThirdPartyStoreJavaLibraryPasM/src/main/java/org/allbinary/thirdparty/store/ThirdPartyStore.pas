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
unit ThirdPartyStore;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbeClientInformationInterface;

type
  {AB:TYPES}
  TThirdPartyStore = class(TObject)
  public
    authorized: Boolean;
    name: string;
    procedure InitFields;
        constructor Create(name: string);
        procedure authorize(clientInformationInterface: IAbeClientInformationInterface); virtual;
        function isAuthorized: Boolean; virtual;
        procedure setAuthorized(authorized: Boolean); virtual;
        function getName: string; virtual;
  end;

implementation

{AB:CODE}

procedure TThirdPartyStore.InitFields;
begin
  
  
end;
    

constructor TThirdPartyStore.Create(name: string);
begin
    inherited Create;
    InitFields;
        Self.name := name;
end;
    

procedure TThirdPartyStore.authorize(clientInformationInterface: IAbeClientInformationInterface);
begin
end;
    

function TThirdPartyStore.isAuthorized: Boolean;
begin
        Exit(Self.authorized);
end;
    

procedure TThirdPartyStore.setAuthorized(authorized: Boolean);
begin
        Self.authorized := authorized;
end;
    

function TThirdPartyStore.getName: string;
begin
        Exit(Self.name);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

