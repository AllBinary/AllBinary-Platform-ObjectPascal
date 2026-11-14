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
// package org.allbinary.game.combat.damage
unit DamageFloaters;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Paintable;

type
  {AB:TYPES}
  TDamageFloaters = class(TPaintable)
  public
    class var SINGLETON: TDamageFloaters;
    constructor Create;
        class function getInstance: TDamageFloaters; static;
        procedure add(damage: Integer); virtual;
  end;

implementation

{AB:CODE}

constructor TDamageFloaters.Create;
begin
  inherited Create;
end;
    

class function TDamageFloaters.getInstance: TDamageFloaters;
begin
        Exit(TDamageFloaters.SINGLETON);
end;
    

procedure TDamageFloaters.add(damage: Integer);
begin
end;

initialization
  {AB:INITIALIZATION}
  TDamageFloaters.SINGLETON := TDamageFloaters.Create();
  {AB:END}

end.

