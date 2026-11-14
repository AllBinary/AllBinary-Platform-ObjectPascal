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
// package org.allbinary.logic.system
unit SoftwareInformation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TSoftwareInformation = class(TObject)
  public
    name: string;
    shortName: string;
    version: string;
    procedure InitFields;
        constructor Create(name: string; version: string; shortName: string);
        function getName: string; virtual;
        function getVersion: string; virtual;
        function toShortString: string; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  KotlinUtil, StringMaker, CommonSeps;


{AB:CODE}

procedure TSoftwareInformation.InitFields;
begin
  
  
  
end;
    

constructor TSoftwareInformation.Create(name: string; version: string; shortName: string);
begin
    inherited Create;
    InitFields;
        Self.name := name;
        Self.version := version;
        Self.shortName := TStringMaker.Create().append(shortName).append(TKotlinUtil.getShortName()).toString();
end;
    

function TSoftwareInformation.getName: string;
begin
        Exit(Self.name);
end;
    

function TSoftwareInformation.getVersion: string;
begin
        Exit(Self.version);
end;
    

function TSoftwareInformation.toShortString: string;
begin
        Exit(Self.shortName);
end;
    

function TSoftwareInformation.toString: string;
var
  NAME: string;
  VERSION: string;
  stringBuffer: TStringMaker;
begin
        NAME := 'Name: ';
        VERSION := 'Version: ';
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(NAME);
        stringBuffer.append(Self.getName());
        stringBuffer.append(TCommonSeps.getInstance().SPACE);
        stringBuffer.append(VERSION);
        stringBuffer.append(Self.getVersion());
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

