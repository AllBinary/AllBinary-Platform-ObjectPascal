{
 
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.logic
unit VectorUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TVectorUtil = class(TObject)
  public
    class var instance: TVectorUtil;
    constructor Create;
        class function getInstance: TVectorUtil; static;
        function getSize(anyType: TObject): Integer; virtual;
        function elementAt(anyType: TObject; index: Integer): TObject; virtual;
  end;

implementation

{AB:CODE}

constructor TVectorUtil.Create;
begin
  inherited Create;
end;
    

class function TVectorUtil.getInstance: TVectorUtil;
begin
        Exit(TVectorUtil.instance);
end;
    

function TVectorUtil.getSize(anyType: TObject): Integer;
var
  vector_: TJavaVector<TObject>;
begin
        vector_ := TJavaVector<TObject>(TJava.ToObject(anyType));
        Exit(vector_.size());
end;
    

function TVectorUtil.elementAt(anyType: TObject; index: Integer): TObject;
var
  vector_: TJavaVector<TObject>;
begin
        vector_ := TJavaVector<TObject>(TJava.ToObject(anyType));
        Exit(TJava.Box(vector_.elementAt(index)));
end;

initialization
  {AB:INITIALIZATION}
  TVectorUtil.instance := TVectorUtil.Create();
  {AB:END}

end.

