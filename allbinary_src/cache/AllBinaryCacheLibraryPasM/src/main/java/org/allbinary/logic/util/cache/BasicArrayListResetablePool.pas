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
unit BasicArrayListResetablePool;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CacheableInterfaceFactoryInterface, CacheableInterface, AbstractArrayListPool;

type
  {AB:TYPES}
  TBasicArrayListResetablePool = class(TAbstractArrayListPool)
  public
        constructor Create(cacheableInterfaceFactoryInterface_: ICacheableInterfaceFactoryInterface);
        procedure clear; override;
        function remove(key: TObject): ICacheableInterface; override;
  end;

implementation

{AB:CODE}
    

constructor TBasicArrayListResetablePool.Create(cacheableInterfaceFactoryInterface_: ICacheableInterfaceFactoryInterface);
begin
        inherited Create(cacheableInterfaceFactoryInterface_);
end;
    

procedure TBasicArrayListResetablePool.clear;
begin
end;
    

// throws Exception
function TBasicArrayListResetablePool.remove(key: TObject): ICacheableInterface;
var
  size: Integer;
begin
        size := Self.buffers.size();
        if (size) > (0) then begin
            Exit((TJava.ToObject(Self.buffers.removeAt((size) - (1))) as ICacheableInterface));
        end else begin
            Exit(Self.cacheableInterfaceFactoryInterface.getInstance(key));
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

