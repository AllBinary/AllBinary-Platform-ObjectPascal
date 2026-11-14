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
// package org.allbinary.util
unit HashtableUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, EnumerationUtil, ABHashtable, BasicArrayList;

type
  {AB:TYPES}
  THashtableUtil = class(TObject)
  public
    enumerationUtil: TEnumerationUtil;
    class var instance: THashtableUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: THashtableUtil; static;
        procedure putAll(fromHashtable: TABHashtable<TObject, TObject>; hashtable: TABHashtable<TObject, TObject>); virtual;
        function getKeysAsArray(hashtable: TABHashtable<TObject, TObject>): TArray<TObject>; virtual;
        function getKeysAsList(hashtable: TABHashtable<TObject, TObject>): TBasicArrayList; virtual;
  end;

implementation
uses
  BasicArrayListS, JsType;


{AB:CODE}

procedure THashtableUtil.InitFields;
begin
  Self.enumerationUtil := TEnumerationUtil.getInstance();
end;

constructor THashtableUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function THashtableUtil.getInstance: THashtableUtil;
begin
        Exit(THashtableUtil.instance);
end;
    

procedure THashtableUtil.putAll(fromHashtable: TABHashtable<TObject, TObject>; hashtable: TABHashtable<TObject, TObject>);
var
  enumeration: TObject;
  keyCanBeNull: TObject;
  valueCanBeNull: TObject;
begin
        enumeration := fromHashtable.keys();
        
        
        while Self.enumerationUtil.hasMoreElements(enumeration) do begin
            keyCanBeNull := TJava.Box(Self.enumerationUtil.nextElement(enumeration));
            valueCanBeNull := TJava.Box(hashtable.get(TJava.Box(keyCanBeNull)));
            if (valueCanBeNull) = (nil) then begin
            end else begin
                hashtable.put(TJava.Box(keyCanBeNull), TJava.Box(valueCanBeNull));
            end;
        end;
end;
    

function THashtableUtil.getKeysAsArray(hashtable: TABHashtable<TObject, TObject>): TArray<TObject>;
var
  objectArray: TArray<TObject>;
  index: Integer;
  enumeration: TObject;
begin
        objectArray := TJava.NewArray<TObject>(hashtable.size());
        index := 0;
        enumeration := hashtable.keys();
        while Self.enumerationUtil.hasMoreElements(enumeration) do begin
            objectArray[TJava.PostInc(index)] := Self.enumerationUtil.nextElement(enumeration);
        end;
        Exit(objectArray);
end;
    

function THashtableUtil.getKeysAsList(hashtable: TABHashtable<TObject, TObject>): TBasicArrayList;
var
  list: TBasicArrayList;
  enumeration: TObject;
begin
        list := TBasicArrayListS.Create(hashtable.size());
        enumeration := hashtable.keys();
        while Self.enumerationUtil.hasMoreElements(enumeration) do begin
            list.add(TJava.Box(Self.enumerationUtil.nextElement(enumeration)));
        end;
        Exit(list);
end;

initialization
  {AB:INITIALIZATION}
  THashtableUtil.instance := THashtableUtil.Create();
  {AB:END}

end.

