{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.persistance
unit PlatformRecordIdUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbeClientInformationInterface;

type
  {AB:TYPES}
  TPlatformRecordIdUtil = class(TObject)
  public
    PLATFORM_SHORT_NAME: string;
    class var instance: TPlatformRecordIdUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TPlatformRecordIdUtil; static;
        function getRecordId(abeClientInformation: IAbeClientInformationInterface; baseRecordId: string): string; virtual;
  end;

implementation
uses
  StringMaker, CommonSeps;


{AB:CODE}

procedure TPlatformRecordIdUtil.InitFields;
begin
  Self.PLATFORM_SHORT_NAME := 'JSE';
end;

constructor TPlatformRecordIdUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TPlatformRecordIdUtil.getInstance: TPlatformRecordIdUtil;
begin
        Exit(TPlatformRecordIdUtil.instance);
end;
    

function TPlatformRecordIdUtil.getRecordId(abeClientInformation: IAbeClientInformationInterface; baseRecordId: string): string;
begin
        Exit(TStringMaker.Create().append(abeClientInformation.toShortString()).append(TCommonSeps.getInstance().UNDERSCORE).append(Self.PLATFORM_SHORT_NAME).append(baseRecordId).toString());
end;

initialization
  {AB:INITIALIZATION}
  TPlatformRecordIdUtil.instance := TPlatformRecordIdUtil.Create();
  {AB:END}

end.

