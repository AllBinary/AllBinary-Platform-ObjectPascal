{
 
  AllBinary Open License Version 1 
  Copyright (c) 2007 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.logic.util.cache
unit CacheType;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TCacheType = class(TObject)
  public
    vendor: string;
    type_: string;
    procedure InitFields;
        constructor Create(vendor: string; type_: string);
        function getVendor: string; virtual;
        function getType: string; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  StringMaker;


{AB:CODE}

procedure TCacheType.InitFields;
begin
  
  
end;
    

constructor TCacheType.Create(vendor: string; type_: string);
begin
    inherited Create;
    InitFields;
        Self.vendor := vendor;
        Self.type_ := type_;
end;
    

function TCacheType.getVendor: string;
begin
        Exit(Self.vendor);
end;
    

function TCacheType.getType: string;
begin
        Exit(Self.type_);
end;
    

function TCacheType.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('CacheType: Vendor: ');
        stringBuffer.append(Self.getVendor());
        stringBuffer.append(' Type: ');
        stringBuffer.append(Self.getType());
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

