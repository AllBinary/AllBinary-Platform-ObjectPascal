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
// package org.allbinary.logic.math.vector
unit AxisMathVectorUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, NoDecimalTrigTable;

type
  {AB:TYPES}
  TAxisMathVectorUtil = class(TObject)
  public
    noDecimalTrigTable: TNoDecimalTrigTable;
    class var instance: TAxisMathVectorUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TAxisMathVectorUtil; static;
        function calculateX(magnitude: Int64; angle: Integer): Int64; virtual;
        function calculateY(magnitude: Int64; angle: Integer): Int64; virtual;
        function calculateZ(magnitude: Int64; otherAngle: Integer): Int64; virtual;
  end;

implementation

{AB:CODE}

procedure TAxisMathVectorUtil.InitFields;
begin
  Self.noDecimalTrigTable := TNoDecimalTrigTable.getInstance();
end;

constructor TAxisMathVectorUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TAxisMathVectorUtil.getInstance: TAxisMathVectorUtil;
begin
        Exit(TAxisMathVectorUtil.instance);
end;
    

function TAxisMathVectorUtil.calculateX(magnitude: Int64; angle: Integer): Int64;
begin
        Exit(((magnitude) * (Self.noDecimalTrigTable.cos(angle))) div (10));
end;
    

function TAxisMathVectorUtil.calculateY(magnitude: Int64; angle: Integer): Int64;
begin
        Exit(((magnitude) * (Self.noDecimalTrigTable.sin(angle))) div (10));
end;
    

function TAxisMathVectorUtil.calculateZ(magnitude: Int64; otherAngle: Integer): Int64;
begin
        Exit(((magnitude) * (Self.noDecimalTrigTable.sin(otherAngle))) div (10));
end;

initialization
  {AB:INITIALIZATION}
  TAxisMathVectorUtil.instance := TAxisMathVectorUtil.Create();
  {AB:END}

end.

