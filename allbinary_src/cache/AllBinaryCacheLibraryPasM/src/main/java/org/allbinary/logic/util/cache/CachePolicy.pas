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
// package org.allbinary.logic.util.cache
unit CachePolicy;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TCachePolicy = class(TObject)
  public
    name: string;
    maxTime: Int64;
    maxSize: Int64;
    procedure InitFields;
        constructor Create(name: string; maxTime: Int64; maxSize: Int64);
        function getMaxTime: Int64; virtual;
        procedure setMaxTime(maxTime: Int64); virtual;
        function getMaxSize: Int64; virtual;
        procedure setMaxSize(maxSize: Int64); virtual;
        function getName: string; virtual;
  end;

implementation

{AB:CODE}

procedure TCachePolicy.InitFields;
begin
  
  
  
end;
    

constructor TCachePolicy.Create(name: string; maxTime: Int64; maxSize: Int64);
begin
    inherited Create;
    InitFields;
        Self.name := name;
        Self.setMaxTime(maxTime);
        Self.setMaxSize(maxSize);
end;
    

function TCachePolicy.getMaxTime: Int64;
begin
        Exit(Self.maxTime);
end;
    

procedure TCachePolicy.setMaxTime(maxTime: Int64);
begin
        Self.maxTime := maxTime;
end;
    

function TCachePolicy.getMaxSize: Int64;
begin
        Exit(Self.maxSize);
end;
    

procedure TCachePolicy.setMaxSize(maxSize: Int64);
begin
        Self.maxSize := maxSize;
end;
    

function TCachePolicy.getName: string;
begin
        Exit(Self.name);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

