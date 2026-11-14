{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.graphics.displayable.screen
unit DisplayPointScalar;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GPoint;

type
  {AB:TYPES}
  TDisplayPointScalar = class(TObject)
  public
    class var instance: TDisplayPointScalar;
        class function getInstance: TDisplayPointScalar; static;
        constructor Create;
        function processX(value: Integer): Integer; virtual;
        function processY(value: Integer): Integer; virtual;
        function process(point: TGPoint): TGPoint; virtual;
  end;

implementation

{AB:CODE}
    

class function TDisplayPointScalar.getInstance: TDisplayPointScalar;
begin
        Exit(TDisplayPointScalar.instance);
end;
    

constructor TDisplayPointScalar.Create;
begin
    inherited Create;
end;
    

function TDisplayPointScalar.processX(value: Integer): Integer;
begin
        Exit(value);
end;
    

function TDisplayPointScalar.processY(value: Integer): Integer;
begin
        Exit(value);
end;
    

function TDisplayPointScalar.process(point: TGPoint): TGPoint;
begin
        Exit(point);
end;

initialization
  {AB:INITIALIZATION}
  TDisplayPointScalar.instance := TDisplayPointScalar.Create();
  {AB:END}

end.

