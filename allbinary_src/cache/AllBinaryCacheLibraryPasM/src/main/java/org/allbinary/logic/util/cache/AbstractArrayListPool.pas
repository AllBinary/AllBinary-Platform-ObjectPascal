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
unit AbstractArrayListPool;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommonStrings, BasicArrayList, CacheableInterfaceFactoryInterface, CacheableInterface, PoolInterface, CacheInterface;

type
  {AB:TYPES}
  TAbstractArrayListPool = class(TInterfacedObject, IPoolInterface, ICacheInterface)
  public
    commonStrings: TCommonStrings;
    buffers: TBasicArrayList;
    cacheableInterfaceFactoryInterface: ICacheableInterfaceFactoryInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(cacheableInterfaceFactoryInterface_: ICacheableInterfaceFactoryInterface);
        procedure clear; virtual;
        function remove(key: TObject): ICacheableInterface; virtual;
        procedure add(cacheableInterface_: ICacheableInterface); virtual;
        procedure addArray(cacheableInterfaces: TArray<ICacheableInterface>); virtual;
  end;

implementation
uses
  BasicArrayListD;


{AB:CODE}

procedure TAbstractArrayListPool.InitFields;
begin
  Self.commonStrings := TCommonStrings.getInstance();
  Self.buffers := TBasicArrayListD.Create();
  
end;

function TAbstractArrayListPool.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAbstractArrayListPool.Create(cacheableInterfaceFactoryInterface_: ICacheableInterfaceFactoryInterface);
begin
    inherited Create;
    InitFields;
        Self.cacheableInterfaceFactoryInterface := cacheableInterfaceFactoryInterface_;
end;
    

// throws Exception
procedure TAbstractArrayListPool.clear;
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

// throws Exception
function TAbstractArrayListPool.remove(key: TObject): ICacheableInterface;
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

// throws Exception
procedure TAbstractArrayListPool.add(cacheableInterface_: ICacheableInterface);
begin
        Self.buffers.add(TJava.Box(cacheableInterface_));
end;
    

// throws Exception
procedure TAbstractArrayListPool.addArray(cacheableInterfaces: TArray<ICacheableInterface>);
var
  index: Integer;
begin
        for index := 0 to System.Length(cacheableInterfaces) - 1 do begin
            Self.buffers.add(TJava.Box(cacheableInterfaces[index]));
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

