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
// package org.allbinary.logic.util.event
unit AllBinaryEventCircularPool;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BaseCircularPool, AllBinaryEventObjectFactoryInterface;

type
  {AB:TYPES}
  TAllBinaryEventCircularPool = class(TBaseCircularPool)
  public
        constructor Create(max: Integer);
        procedure initAllBinaryEventCircularPool(allBinaryEventObjectFactoryInterface_: IAllBinaryEventObjectFactoryInterface); virtual;
  end;

implementation
uses
  CircularIndexUtil;


{AB:CODE}
    

constructor TAllBinaryEventCircularPool.Create(max: Integer);
begin
    inherited Create;
        Self.OBJECT_ARRAY := TJava.NewArray<TObject>(max);
        Self.circularIndexUtil := TCircularIndexUtil.createInstance(max);
end;
    

procedure TAllBinaryEventCircularPool.initAllBinaryEventCircularPool(allBinaryEventObjectFactoryInterface_: IAllBinaryEventObjectFactoryInterface);
var
  size: Integer;
  index: Integer;
begin
        Self.circularIndexUtil.setIndex(0);
        size := Self.circularIndexUtil.getSize();
        for index := 0 to size - 1 do begin
            Self.OBJECT_ARRAY[index] := allBinaryEventObjectFactoryInterface_.getInstance();
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

