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
unit BasicArrayListCacheable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayListD, CacheableInterface;

type
  {AB:TYPES}
  TBasicArrayListCacheable = class(TBasicArrayListD, ICacheableInterface)
  public
    function JavaObject: TObject;
    constructor Create;
        function getKey: TObject; virtual;
  end;

implementation
uses
  StringUtil;


{AB:CODE}

function TBasicArrayListCacheable.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TBasicArrayListCacheable.Create;
begin
  inherited Create;
end;
    

function TBasicArrayListCacheable.getKey: TObject;
begin
        Exit(TJava.Box(TStringUtil.getInstance().EMPTY_STRING));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

