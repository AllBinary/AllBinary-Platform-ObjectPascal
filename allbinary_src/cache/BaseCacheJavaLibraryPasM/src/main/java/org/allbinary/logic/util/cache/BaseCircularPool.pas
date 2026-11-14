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
unit BaseCircularPool;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CircularIndexUtil, AllBinaryObjectFactoryInterface;

type
  {AB:TYPES}
  TBaseCircularPool = class(TObject)
  public
    circularIndexUtil: TCircularIndexUtil;
    OBJECT_ARRAY: TArray<TObject>;
    procedure InitFields;
    constructor Create;
        function getNextInstance: TObject; virtual;
        procedure init(allBinaryObjectFactoryInterface_: IAllBinaryObjectFactoryInterface); virtual;
        function getInstance(index: Integer): TObject; virtual;
  end;

implementation
uses
  JsType, NullUtil, JsMethod, JsProperty;


{AB:CODE}

procedure TBaseCircularPool.InitFields;
begin
  Self.circularIndexUtil := TCircularIndexUtil.NULL_CIRCULAR_INDEX_UTIL;
  Self.OBJECT_ARRAY := TNullUtil.getInstance().NULL_OBJECT_ARRAY;
end;

constructor TBaseCircularPool.Create;
begin
  inherited Create;
  InitFields;
end;
    

// throws Exception
function TBaseCircularPool.getNextInstance: TObject;
var
  anyType: TObject;
begin
    TJava.MonitorEnter(Self);
    try
        anyType := TJava.Box(Self.OBJECT_ARRAY[Self.circularIndexUtil.getIndex()]);
        Self.circularIndexUtil.next();
        Exit(TJava.Box(anyType));
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TBaseCircularPool.init(allBinaryObjectFactoryInterface_: IAllBinaryObjectFactoryInterface);
var
  size: Integer;
  index: Integer;
begin
        Self.circularIndexUtil.setIndex(0);
        size := Self.circularIndexUtil.getSize();
        for index := 0 to size - 1 do begin
            Self.OBJECT_ARRAY[index] := allBinaryObjectFactoryInterface_.getInstance();
        end;
end;
    

// throws Exception
function TBaseCircularPool.getInstance(index: Integer): TObject;
begin
        Exit(TJava.Box(Self.OBJECT_ARRAY[index]));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

