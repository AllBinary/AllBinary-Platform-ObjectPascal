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
// package org.allbinary.game.midlet
unit LicenseLoadingTypeFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LicenseLoadingType;

type
  {AB:TYPES}
  TLicenseLoadingTypeFactory = class(TObject)
  public
    INITIAL_LOADING: TLicenseLoadingType;
    GAME_START: TLicenseLoadingType;
    LOGIN: TLicenseLoadingType;
    OTHER: TLicenseLoadingType;
    class var instance: TLicenseLoadingTypeFactory;
    procedure InitFields;
    constructor Create;
        class function getIntance: TLicenseLoadingTypeFactory; static;
  end;

implementation

{AB:CODE}

procedure TLicenseLoadingTypeFactory.InitFields;
begin
  Self.INITIAL_LOADING := TLicenseLoadingType.Create('Initial Loading');
  Self.GAME_START := TLicenseLoadingType.Create('Game Start');
  Self.LOGIN := TLicenseLoadingType.Create('Login');
  Self.OTHER := TLicenseLoadingType.Create('Other/Usually The First Non Demo Level');
end;

constructor TLicenseLoadingTypeFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TLicenseLoadingTypeFactory.getIntance: TLicenseLoadingTypeFactory;
begin
        Exit(TLicenseLoadingTypeFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TLicenseLoadingTypeFactory.instance := TLicenseLoadingTypeFactory.Create();
  {AB:END}

end.

