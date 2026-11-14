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
unit IndexedBasicArrayListCache;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommonStrings, CacheableInterface, BaseBasicArrayListCache, CacheInterface;

type
  {AB:TYPES}
  TIndexedBasicArrayListCache = class(TBaseBasicArrayListCache, ICacheInterface)
  public
    commonStrings: TCommonStrings;
    size: Integer;
    index: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        class function createCache(size: Integer): TIndexedBasicArrayListCache; static;
        constructor Create;
        procedure init(size: Integer); virtual;
        function getAt(index: Integer): TObject; virtual;
        procedure addDefault; virtual;
        procedure addObject(anyType: TObject); virtual;
        procedure add(cacheableInterface_: ICacheableInterface); virtual;
        procedure addArray(cacheableInterfaces: TArray<ICacheableInterface>); virtual;
        procedure clear; virtual;
  end;

implementation
uses
  JsType, JsMethod, JsConstructor, JsProperty;


{AB:CODE}

procedure TIndexedBasicArrayListCache.InitFields;
begin
  Self.commonStrings := TCommonStrings.getInstance();
  Self.size := 0;
  Self.index := 0;
end;

function TIndexedBasicArrayListCache.JavaObject: TObject;
begin
  Result := Self;
end;
    

// throws Exception
class function TIndexedBasicArrayListCache.createCache(size: Integer): TIndexedBasicArrayListCache;
var
  indexedBasicArrayListCache_: TIndexedBasicArrayListCache;
begin
        indexedBasicArrayListCache_ := TIndexedBasicArrayListCache.Create();
        indexedBasicArrayListCache_.init(size);
        Exit(indexedBasicArrayListCache_);
end;
    

constructor TIndexedBasicArrayListCache.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
procedure TIndexedBasicArrayListCache.init(size: Integer);
var
  index: Integer;
begin
        if (Self.size) < (size) then begin
            Self.list.ensureCapacity(size);
            for index := (size) - (1) downto Self.size do begin
                Self.addDefault();
            end;
            Self.size := size;
        end;
end;
    

function TIndexedBasicArrayListCache.getAt(index: Integer): TObject;
begin
        Exit(TJava.Box(Self.list.objectArray[index]));
end;
    

// throws Exception
procedure TIndexedBasicArrayListCache.addDefault;
begin
end;
    

// throws Exception
procedure TIndexedBasicArrayListCache.addObject(anyType: TObject);
begin
        Self.list.add(TJava.Box(anyType));
end;
    

// throws Exception
procedure TIndexedBasicArrayListCache.add(cacheableInterface_: ICacheableInterface);
begin
        Self.list.add(TJava.Box(cacheableInterface_));
end;
    

// throws Exception
procedure TIndexedBasicArrayListCache.addArray(cacheableInterfaces: TArray<ICacheableInterface>);
begin
        raise SysUtils.Exception.Create('No Imple');
end;
    

procedure TIndexedBasicArrayListCache.clear;
begin
        Self.index := 0;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

