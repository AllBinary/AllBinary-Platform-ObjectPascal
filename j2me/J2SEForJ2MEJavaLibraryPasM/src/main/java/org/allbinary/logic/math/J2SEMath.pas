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
// package org.allbinary.logic.math
unit J2SEMath;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TJ2SEMath = class(TObject)
  public
    class var instance: TJ2SEMath;
    constructor Create;
        class function getInstance: TJ2SEMath; static;
        function round(value: Single): Integer; virtual;
        function abs(value: Single): Single; virtual;
        function absdouble(value: Double): Double; virtual;
  end;

implementation

{AB:CODE}

constructor TJ2SEMath.Create;
begin
  inherited Create;
end;
    

class function TJ2SEMath.getInstance: TJ2SEMath;
begin
        Exit(TJ2SEMath.instance);
end;
    

function TJ2SEMath.round(value: Single): Integer;
begin
        Exit(Round(value));
end;
    

function TJ2SEMath.abs(value: Single): Single;
begin
        Exit(TJava.IfThen<Variant>(((value) < (0.0)), -value, value));
end;
    

function TJ2SEMath.absdouble(value: Double): Double;
begin
        Exit(TJava.IfThen<Variant>(((value) < (0.0)), -value, value));
end;

initialization
  {AB:INITIALIZATION}
  TJ2SEMath.instance := TJ2SEMath.Create();
  {AB:END}

end.

