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
unit LicenseLevelUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TLicenseLevelUtil = class(TObject)
  public
    class var instance: TLicenseLevelUtil;
    constructor Create;
        class function getInstance: TLicenseLevelUtil; static;
        function getMaxLevel(maxLevel: Integer; demoLevel: Integer): Integer; virtual;
  end;

implementation

{AB:CODE}

constructor TLicenseLevelUtil.Create;
begin
  inherited Create;
end;
    

class function TLicenseLevelUtil.getInstance: TLicenseLevelUtil;
begin
        Exit(TLicenseLevelUtil.instance);
end;
    

function TLicenseLevelUtil.getMaxLevel(maxLevel: Integer; demoLevel: Integer): Integer;
begin
        Exit(demoLevel);
end;

initialization
  {AB:INITIALIZATION}
  TLicenseLevelUtil.instance := TLicenseLevelUtil.Create();
  {AB:END}

end.

