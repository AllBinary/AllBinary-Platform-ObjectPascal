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
// package org.allbinary.graphics
unit GPointCircularPool;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BaseCircularPool;

type
  {AB:TYPES}
  TGPointCircularPool = class(TBaseCircularPool)
  public
        constructor Create(size: Integer);
  end;

implementation
uses
  CustomGPoint, CircularIndexUtil;


{AB:CODE}
    

constructor TGPointCircularPool.Create(size: Integer);
var
  index: Integer;
begin
    inherited Create;
        Self.circularIndexUtil := TCircularIndexUtil.createInstance(size);
        Self.OBJECT_ARRAY := TJava.NewArray<TObject>(size);
        for index := (size) - (1) downto 0 do begin
            Self.OBJECT_ARRAY[index] := TCustomGPoint.getInstance3(0, 0);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

