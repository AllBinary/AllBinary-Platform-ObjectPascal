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
unit BaseBasicArrayListCache;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList;

type
  {AB:TYPES}
  TBaseBasicArrayListCache = class(TObject)
  public
    list: TBasicArrayList;
    procedure InitFields;
    constructor Create;
        function log: string; virtual;
  end;

implementation
uses
  JsType, StringMaker, BasicArrayListD, JsMethod, JsProperty;


{AB:CODE}

procedure TBaseBasicArrayListCache.InitFields;
begin
  Self.list := TBasicArrayListD.Create();
end;

constructor TBaseBasicArrayListCache.Create;
begin
  inherited Create;
  InitFields;
end;
    

function TBaseBasicArrayListCache.log: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('S: ');
        stringBuffer.appendint(Self.list.size());
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

