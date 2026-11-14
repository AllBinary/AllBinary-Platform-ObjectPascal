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
unit ThirdPartyMessageFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TThirdPartyMessageFactory = class(TObject)
  public
    AUTHORIZED: string;
    NOT_AUTHORIZED: string;
    LINKAGE_ERROR: string;
    class var instance: TThirdPartyMessageFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TThirdPartyMessageFactory; static;
  end;

implementation

{AB:CODE}

procedure TThirdPartyMessageFactory.InitFields;
begin
  Self.AUTHORIZED := 'Authorized';
  Self.NOT_AUTHORIZED := 'Not Authorized';
  Self.LINKAGE_ERROR := 'Linkage Error';
end;

constructor TThirdPartyMessageFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TThirdPartyMessageFactory.getInstance: TThirdPartyMessageFactory;
begin
        Exit(TThirdPartyMessageFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TThirdPartyMessageFactory.instance := TThirdPartyMessageFactory.Create();
  {AB:END}

end.

