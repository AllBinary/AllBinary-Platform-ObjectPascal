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
unit PoolType;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CacheType;

type
  {AB:TYPES}
  TPoolType = class(TObject)
  public
    cacheType: TCacheType;
    procedure InitFields;
        constructor Create(cacheType_: TCacheType);
        function getCacheType: TCacheType; virtual;
        function toString: string; virtual;
  end;

implementation

{AB:CODE}

procedure TPoolType.InitFields;
begin
  
end;
    

constructor TPoolType.Create(cacheType_: TCacheType);
begin
    inherited Create;
    InitFields;
        Self.cacheType := cacheType_;
end;
    

function TPoolType.getCacheType: TCacheType;
begin
        Exit(Self.cacheType);
end;
    

function TPoolType.toString: string;
var
  POOL_TYPE: string;
begin
        POOL_TYPE := 'PoolType: ';
        Exit(POOL_TYPE + Self.getCacheType().toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

