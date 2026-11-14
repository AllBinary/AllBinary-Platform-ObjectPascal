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
// package org.allbinary.game.input
unit MotionLaptopGameInputMapping;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, InputToGameKeyMapping, PCGameInputMapping;

type
  {AB:TYPES}
  TMotionLaptopGameInputMapping = class(TPCGameInputMapping)
  public
    constructor Create;
        function getDefault: TInputToGameKeyMapping; override;
  end;

implementation
uses
  MotionLaptopDefaultGameInputMapping;


{AB:CODE}

constructor TMotionLaptopGameInputMapping.Create;
begin
  inherited Create;
end;
    

function TMotionLaptopGameInputMapping.getDefault: TInputToGameKeyMapping;
begin
        Exit(TMotionLaptopDefaultGameInputMapping.Create().getInputMapping());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

