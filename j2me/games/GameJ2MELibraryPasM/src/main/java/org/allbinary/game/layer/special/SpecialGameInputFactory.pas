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
// package org.allbinary.game.layer.special
unit SpecialGameInputFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, SpecialGameInput;

type
  {AB:TYPES}
  TSpecialGameInputFactory = class(TObject)
  public
    class var NO_SPECIAL_GAME_INPUT: TSpecialGameInput;
    constructor Create;
  end;

implementation

{AB:CODE}

constructor TSpecialGameInputFactory.Create;
begin
  inherited Create;
end;

initialization
  {AB:INITIALIZATION}
  TSpecialGameInputFactory.NO_SPECIAL_GAME_INPUT := TSpecialGameInput.Create();
  {AB:END}

end.

