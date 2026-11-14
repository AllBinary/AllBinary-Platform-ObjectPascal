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
unit MotionJ2MEGameInputMapping;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, InputToGameKeyMapping, J2MEGameInputMapping;

type
  {AB:TYPES}
  TMotionJ2MEGameInputMapping = class(TJ2MEGameInputMapping)
  public
    constructor Create;
        function getDefault: TInputToGameKeyMapping; override;
  end;

implementation
uses
  MotionJ2MEDefaultGameInputMapping;


{AB:CODE}

constructor TMotionJ2MEGameInputMapping.Create;
begin
  inherited Create;
end;
    

function TMotionJ2MEGameInputMapping.getDefault: TInputToGameKeyMapping;
begin
        Exit(TMotionJ2MEDefaultGameInputMapping.Create().getInputMapping());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

