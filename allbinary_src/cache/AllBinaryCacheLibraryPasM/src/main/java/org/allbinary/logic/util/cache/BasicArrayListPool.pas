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
unit BasicArrayListPool;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, CacheableInterfaceFactoryInterface, CacheableInterface, AbstractArrayListPool;

type
  {AB:TYPES}
  TBasicArrayListPool = class(TAbstractArrayListPool)
  public
        constructor Create(cacheableInterfaceFactoryInterface_: ICacheableInterfaceFactoryInterface);
        procedure clear; override;
        function remove(key: TObject): ICacheableInterface; override;
        procedure addAll(usedList: TBasicArrayList); virtual;
        procedure releaseUsedBackToPool(usedList: TBasicArrayList); virtual;
  end;

implementation
uses
  BasicArrayListCacheable;


{AB:CODE}
    

constructor TBasicArrayListPool.Create(cacheableInterfaceFactoryInterface_: ICacheableInterfaceFactoryInterface);
begin
        inherited Create(cacheableInterfaceFactoryInterface_);
end;
    

procedure TBasicArrayListPool.clear;
begin
        Self.buffers.clear();
end;
    

// throws Exception
function TBasicArrayListPool.remove(key: TObject): ICacheableInterface;
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
    

// throws Exception
procedure TBasicArrayListPool.addAll(usedList: TBasicArrayList);
var
  anyType: ICacheableInterface;
  index: Integer;
begin
        index := usedList.size();
        while (TJava.PreDec(index)) >= (0) do begin
            anyType := (TJava.ToObject(usedList.objectArray[index]) as ICacheableInterface);
            Self.add(anyType);
        end;
        usedList.clear();
end;
    

// throws Exception
procedure TBasicArrayListPool.releaseUsedBackToPool(usedList: TBasicArrayList);
var
  list: TBasicArrayListCacheable;
  index: Integer;
begin
        index := usedList.size();
        while (TJava.PreDec(index)) >= (0) do begin
            list := TBasicArrayListCacheable(TJava.ToObject(usedList.objectArray[index]));
            if (list.size()) = (0) then begin
                usedList.removeAt(index);
                Self.add(list);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

