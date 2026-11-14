{
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.util
unit BasicArrayListS;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList;

type
  {AB:TYPES}
  TBasicArrayListS = class(TBasicArrayList)
  public
        constructor Create(size: Integer);
  end;

implementation
uses
  JsType, NullUtil, StringMaker, JsConstructor;


{AB:CODE}
    

constructor TBasicArrayListS.Create(size: Integer);
begin
        inherited Create(TNullUtil.getInstance().NULL_OBJECT_ARRAY);
        if (size) < (0) then begin
            raise SysUtils.Exception.Create(TStringMaker.Create().append('Init Size Exception: ').appendint(size).toString());
        end;
        Self.objectArray := TJava.NewArray<TObject>(size);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

