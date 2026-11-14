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
// package org.allbinary.logic.math.permutations
unit ComparableObject;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TComparableObject = class(TInterfacedObject, IComparable<TObject>)
  public
    function JavaObject: TObject;
    constructor Create;
        function compareTo(anyType: TObject): Integer; virtual;
  end;

implementation
uses
  TsUtil;


{AB:CODE}

function TComparableObject.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TComparableObject.Create;
begin
  inherited Create;
end;
    

function TComparableObject.compareTo(anyType: TObject): Integer;
begin
        if (TTsUtil.getInstance().hashCode(TJava.Box(Self))) < (TTsUtil.getInstance().hashCode(TJava.Box(anyType))) then begin
            Exit(-1);
        end else if (TTsUtil.getInstance().hashCode(TJava.Box(Self))) > (TTsUtil.getInstance().hashCode(TJava.Box(anyType))) then begin
            Exit(1);
        end;
        Exit(0);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

