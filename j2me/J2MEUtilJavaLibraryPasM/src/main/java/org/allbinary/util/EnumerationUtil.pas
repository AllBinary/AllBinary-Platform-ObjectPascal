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
unit EnumerationUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  // ArkTs does not have this.  So this is for the ArkTs build.
  TEnumerationUtil = class(TObject)
  public
    class var instance: TEnumerationUtil;
    constructor Create;
        class function getInstance: TEnumerationUtil; static;
        function hasMoreElements(enumeration: TObject): Boolean; virtual;
        function nextElement(enumeration: TObject): TObject; virtual;
        function getAsArray(enumeration: TObject): TArray<TObject>; virtual;
  end;

implementation
uses
  BasicArrayListD, BasicArrayList, JsType, JsMethod;


{AB:CODE}

constructor TEnumerationUtil.Create;
begin
  inherited Create;
end;
    

class function TEnumerationUtil.getInstance: TEnumerationUtil;
begin
        Exit(TEnumerationUtil.instance);
end;
    

function TEnumerationUtil.hasMoreElements(enumeration: TObject): Boolean;
begin
        Exit(TJava.EnumerationHasMoreElements(enumeration));
end;
    

function TEnumerationUtil.nextElement(enumeration: TObject): TObject;
begin
        Exit(TJava.Box(TJava.EnumerationNextElement(enumeration)));
end;
    

function TEnumerationUtil.getAsArray(enumeration: TObject): TArray<TObject>;
var
  basicArrayList_: TBasicArrayList;
begin
        basicArrayList_ := TBasicArrayListD.Create();
        while Self.hasMoreElements(enumeration) do begin
            basicArrayList_.add(TJava.Box(Self.nextElement(enumeration)));
        end;
        Exit(basicArrayList_.toArray());
end;

initialization
  {AB:INITIALIZATION}
  TEnumerationUtil.instance := TEnumerationUtil.Create();
  {AB:END}

end.

