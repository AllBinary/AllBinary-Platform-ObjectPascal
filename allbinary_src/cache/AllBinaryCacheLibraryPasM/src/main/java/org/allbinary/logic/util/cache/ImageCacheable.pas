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
unit ImageCacheable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TImageCacheable = class(TObject)
  public
    name: string;
    procedure InitFields;
        constructor Create(name: string; anyType: TObject);
        function getKey: TObject; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  StringUtil;


{AB:CODE}

procedure TImageCacheable.InitFields;
begin
  Self.name := TStringUtil.getInstance().EMPTY_STRING;
end;
    

constructor TImageCacheable.Create(name: string; anyType: TObject);
begin
    inherited Create;
    InitFields;
end;
    

function TImageCacheable.getKey: TObject;
begin
        Exit(TJava.Box(Self.name));
end;
    

function TImageCacheable.toString: string;
begin
        Exit(Self.name);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

