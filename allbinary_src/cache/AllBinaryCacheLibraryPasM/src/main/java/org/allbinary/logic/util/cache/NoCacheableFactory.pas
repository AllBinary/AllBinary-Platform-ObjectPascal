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
unit NoCacheableFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CacheableInterface, CacheableInterfaceFactoryInterface;

type
  {AB:TYPES}
  TNoCacheableFactory = class(TInterfacedObject, ICacheableInterfaceFactoryInterface)
  public
    function JavaObject: TObject;
        constructor Create;
        function getInstance(key: TObject): ICacheableInterface; virtual;
  end;

implementation

{AB:CODE}

function TNoCacheableFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TNoCacheableFactory.Create;
begin
    inherited Create;
end;
    

// throws Exception
function TNoCacheableFactory.getInstance(key: TObject): ICacheableInterface;
begin
        raise SysUtils.Exception.Create('This Factory Does Not');
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

