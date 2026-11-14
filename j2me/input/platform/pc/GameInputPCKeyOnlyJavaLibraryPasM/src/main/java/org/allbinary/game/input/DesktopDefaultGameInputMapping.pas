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
unit DesktopDefaultGameInputMapping;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PersistentInputMapping;

type
  {AB:TYPES}
  TDesktopDefaultGameInputMapping = class(TPersistentInputMapping)
  public
        constructor Create;
  end;

implementation
uses
  PCKeyFactory, GameKeyFactory, GamePersistanceStrings, InputToGameKeyMapping;


{AB:CODE}
    

constructor TDesktopDefaultGameInputMapping.Create;
var
  inputToGameKeyMapping_: TInputToGameKeyMapping;
  pcKeyFactory_: TPCKeyFactory;
  gameKeyFactory_: TGameKeyFactory;
begin
        inherited Create(TGamePersistanceStrings.getInstance().DEFAULT_INPUT_MAPPING_RECORD_ID);
        inputToGameKeyMapping_ := Self.getInputMapping();
        pcKeyFactory_ := TPCKeyFactory.getInstance();
        gameKeyFactory_ := TGameKeyFactory.getInstance();
        inputToGameKeyMapping_.add(gameKeyFactory_.FIRE, pcKeyFactory_.ENTER);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM1, pcKeyFactory_.FOUR);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM1, pcKeyFactory_._P);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM1, pcKeyFactory_.p);
        inputToGameKeyMapping_.add(gameKeyFactory_.UP, pcKeyFactory_.DPAD_UP);
        inputToGameKeyMapping_.add(gameKeyFactory_.DOWN, pcKeyFactory_.DPAD_DOWN);
        inputToGameKeyMapping_.add(gameKeyFactory_.LEFT, pcKeyFactory_.DPAD_LEFT);
        inputToGameKeyMapping_.add(gameKeyFactory_.RIGHT, pcKeyFactory_.DPAD_RIGHT);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM1, pcKeyFactory_.FIVE);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM7, pcKeyFactory_._Y);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM9, pcKeyFactory_._I);
        inputToGameKeyMapping_.add(gameKeyFactory_.UP, pcKeyFactory_._U);
        inputToGameKeyMapping_.add(gameKeyFactory_.LEFT, pcKeyFactory_._H);
        inputToGameKeyMapping_.add(gameKeyFactory_.RIGHT, pcKeyFactory_._J);
        inputToGameKeyMapping_.add(gameKeyFactory_.DOWN, pcKeyFactory_._N);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM5, pcKeyFactory_._M);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM7, pcKeyFactory_.y);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM9, pcKeyFactory_.i);
        inputToGameKeyMapping_.add(gameKeyFactory_.UP, pcKeyFactory_.u);
        inputToGameKeyMapping_.add(gameKeyFactory_.LEFT, pcKeyFactory_.h);
        inputToGameKeyMapping_.add(gameKeyFactory_.RIGHT, pcKeyFactory_.j);
        inputToGameKeyMapping_.add(gameKeyFactory_.DOWN, pcKeyFactory_.n);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM5, pcKeyFactory_.m);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM7, pcKeyFactory_._Q);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM9, pcKeyFactory_._E);
        inputToGameKeyMapping_.add(gameKeyFactory_.UP, pcKeyFactory_._W);
        inputToGameKeyMapping_.add(gameKeyFactory_.LEFT, pcKeyFactory_._A);
        inputToGameKeyMapping_.add(gameKeyFactory_.RIGHT, pcKeyFactory_._D);
        inputToGameKeyMapping_.add(gameKeyFactory_.DOWN, pcKeyFactory_._S);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM5, pcKeyFactory_._X);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM7, pcKeyFactory_.q);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM9, pcKeyFactory_.e);
        inputToGameKeyMapping_.add(gameKeyFactory_.UP, pcKeyFactory_.w);
        inputToGameKeyMapping_.add(gameKeyFactory_.LEFT, pcKeyFactory_.a);
        inputToGameKeyMapping_.add(gameKeyFactory_.RIGHT, pcKeyFactory_.d);
        inputToGameKeyMapping_.add(gameKeyFactory_.DOWN, pcKeyFactory_.s);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM5, pcKeyFactory_.x);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM3, pcKeyFactory_.THREE);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM0, pcKeyFactory_.ZERO);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM0, pcKeyFactory_.ONE);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM0, pcKeyFactory_.SPACE);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_POUND, pcKeyFactory_.DEL);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_POUND, pcKeyFactory_.TWO);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_STAR, pcKeyFactory_.ESCAPE);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_STAR, pcKeyFactory_.STAR);
        inputToGameKeyMapping_.add(gameKeyFactory_.LEVEL_DOWN, pcKeyFactory_.COMMA);
        inputToGameKeyMapping_.add(gameKeyFactory_.LEVEL_UP, pcKeyFactory_.PERIOD);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

