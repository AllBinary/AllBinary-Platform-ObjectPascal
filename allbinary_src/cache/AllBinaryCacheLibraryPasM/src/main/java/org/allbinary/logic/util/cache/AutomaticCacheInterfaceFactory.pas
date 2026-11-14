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
unit AutomaticCacheInterfaceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AutomaticCacheInterface, CacheableInterfaceFactoryInterface, CacheType, CachePolicy;

type
  {AB:TYPES}
  TAutomaticCacheInterfaceFactory = class(TObject)
  public
        constructor Create;
        class function getInstance(cacheableInterfaceFactoryInterface_: ICacheableInterfaceFactoryInterface; cacheType_: TCacheType; cachePolicy_: TCachePolicy): IAutomaticCacheInterface; static;
  end;

implementation

{AB:CODE}
    

constructor TAutomaticCacheInterfaceFactory.Create;
begin
    inherited Create;
end;
    

// throws Exception
class function TAutomaticCacheInterfaceFactory.getInstance(cacheableInterfaceFactoryInterface_: ICacheableInterfaceFactoryInterface; cacheType_: TCacheType; cachePolicy_: TCachePolicy): IAutomaticCacheInterface;
begin
        raise SysUtils.Exception.Create('No such ' + cacheType_.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

