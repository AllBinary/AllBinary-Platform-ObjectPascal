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
// package org.allbinary.logic
unit NullUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  // ActualPlatform
  TNullUtil = class(TObject)
  public
    NULL_OBJECT: TObject;
    NULL_CLASS: TClass;
    NULL_OBJECT_ARRAY: TArray<TObject>;
    NULL_CHAR_ARRAY: TArray<WideChar>;
    NULL_BYTE_ARRAY: TArray<ShortInt>;
    NULL_SHORT_ARRAY_ARRAY: TArray<TArray<SmallInt>>;
    NULL_INT_ARRAY: TArray<Integer>;
    NULL_INT_ARRAY_ARRAY: TArray<TArray<Integer>>;
    NULL_INT_ARRAY_ARRAY_ARRAY: TArray<TArray<TArray<Integer>>>;
    NULL_FLOAT_ARRAY: TArray<Single>;
    class var instance: TNullUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TNullUtil; static;
  end;

implementation
uses
  JsType;


{AB:CODE}

procedure TNullUtil.InitFields;
begin
  Self.NULL_OBJECT := TJava.Box(TObject.Create());
  Self.NULL_CLASS := TJava.ToObject(Self.NULL_OBJECT).ClassType;
  Self.NULL_OBJECT_ARRAY := TJava.NewArray<TObject>(0);
  Self.NULL_CHAR_ARRAY := TJava.NewArray<WideChar>(0);
  Self.NULL_BYTE_ARRAY := TJava.NewArray<ShortInt>(0);
  Self.NULL_SHORT_ARRAY_ARRAY := TJava.NewArray2<SmallInt>(0, 0);
  Self.NULL_INT_ARRAY := TJava.NewArray<Integer>(0);
  Self.NULL_INT_ARRAY_ARRAY := TJava.NewArray2<Integer>(0, 0);
  Self.NULL_INT_ARRAY_ARRAY_ARRAY := TJava.NewArray3<Integer>(0, 0, 0);
  Self.NULL_FLOAT_ARRAY := TJava.NewArray<Single>(0);
end;

constructor TNullUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TNullUtil.getInstance: TNullUtil;
begin
        Exit(TNullUtil.instance);
end;

initialization
  {AB:INITIALIZATION}
  TNullUtil.instance := TNullUtil.Create();
  {AB:END}

end.

