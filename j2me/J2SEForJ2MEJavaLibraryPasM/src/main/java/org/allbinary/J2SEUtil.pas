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
// package org.allbinary
unit J2SEUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  // J2SEForJ2ME
  TJ2SEUtil = class(TObject)
  public
    class var instance: TJ2SEUtil;
    constructor Create;
        class function getInstance: TJ2SEUtil; static;
        function getHashMapAsArray(hashMap_: TJavaHashMap<TObject, TObject>): TArray<TObject>; virtual;
        function getMapAsArray(map: IMap<TObject, TObject>): TArray<TObject>; virtual;
        function getSetAsArray(set_: ISet<string>): TArray<TObject>; virtual;
  end;

implementation

{AB:CODE}

constructor TJ2SEUtil.Create;
begin
  inherited Create;
end;
    

class function TJ2SEUtil.getInstance: TJ2SEUtil;
begin
        Exit(TJ2SEUtil.instance);
end;
    

function TJ2SEUtil.getHashMapAsArray(hashMap_: TJavaHashMap<TObject, TObject>): TArray<TObject>;
var
  objectArray: TArray<TObject>;
begin
        objectArray := hashMap_.keySet().toArray();
        Exit(objectArray);
end;
    

function TJ2SEUtil.getMapAsArray(map: IMap<TObject, TObject>): TArray<TObject>;
var
  objectArray: TArray<TObject>;
begin
        objectArray := map.keySet().toArray();
        Exit(objectArray);
end;
    

function TJ2SEUtil.getSetAsArray(set_: ISet<string>): TArray<TObject>;
var
  objectArray: TArray<TObject>;
begin
        objectArray := set_.toArray();
        Exit(objectArray);
end;

initialization
  {AB:INITIALIZATION}
  TJ2SEUtil.instance := TJ2SEUtil.Create();
  {AB:END}

end.

