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
// package org.allbinary.layer
unit AllBinaryLayerCircularPool;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BaseCircularPool, AllBinaryLayerFactoryInterface;

type
  {AB:TYPES}
  TAllBinaryLayerCircularPool = class(TBaseCircularPool)
  public
        constructor Create;
        procedure initAllBinaryLayerCircularPool(allbinaryLayerFactoryInterface_: IAllBinaryLayerFactoryInterface; total: Integer); virtual;
  end;

implementation
uses
  CircularIndexUtil;


{AB:CODE}
    

constructor TAllBinaryLayerCircularPool.Create;
begin
    inherited Create;
end;
    

// throws Exception
procedure TAllBinaryLayerCircularPool.initAllBinaryLayerCircularPool(allbinaryLayerFactoryInterface_: IAllBinaryLayerFactoryInterface; total: Integer);
var
  localIndex: Integer;
begin
        Self.circularIndexUtil := TCircularIndexUtil.createInstance(total);
        Self.OBJECT_ARRAY := TJava.NewArray<TObject>(total);
        for localIndex := 0 to total - 1 do begin
            Self.OBJECT_ARRAY[localIndex] := allbinaryLayerFactoryInterface_.getInstance();
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

