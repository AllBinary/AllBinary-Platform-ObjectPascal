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
unit MotionJ2MEDefaultGameInputMapping;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PersistentInputMapping;

type
  {AB:TYPES}
  TMotionJ2MEDefaultGameInputMapping = class(TPersistentInputMapping)
  public
        constructor Create;
  end;

implementation
uses
  GameKeyFactory, GamePersistanceStrings, InputToGameKeyMapping, BasicTouchInputFactory, TouchMotionGestureFactory;


{AB:CODE}
    

constructor TMotionJ2MEDefaultGameInputMapping.Create;
var
  inputToGameKeyMapping_: TInputToGameKeyMapping;
  gameKeyFactory_: TGameKeyFactory;
  basicTouchInputFactory_: TBasicTouchInputFactory;
begin
        inherited Create(TGamePersistanceStrings.getInstance().DEFAULT_INPUT_MAPPING_RECORD_ID);
        inputToGameKeyMapping_ := Self.getInputMapping();
        gameKeyFactory_ := TGameKeyFactory.getInstance();
        inputToGameKeyMapping_.add(gameKeyFactory_.UP, gameKeyFactory_.KEY_NUM2);
        inputToGameKeyMapping_.add(gameKeyFactory_.LEFT, gameKeyFactory_.KEY_NUM4);
        inputToGameKeyMapping_.add(gameKeyFactory_.RIGHT, gameKeyFactory_.KEY_NUM6);
        inputToGameKeyMapping_.add(gameKeyFactory_.DOWN, gameKeyFactory_.KEY_NUM8);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM1, gameKeyFactory_.GAME_A);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM3, gameKeyFactory_.GAME_B);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM7, gameKeyFactory_.GAME_C);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM9, gameKeyFactory_.GAME_D);
        inputToGameKeyMapping_.add(gameKeyFactory_.LEVEL_DOWN, gameKeyFactory_.LEVEL_DOWN);
        inputToGameKeyMapping_.add(gameKeyFactory_.LEVEL_UP, gameKeyFactory_.LEVEL_UP);
        inputToGameKeyMapping_.add(gameKeyFactory_.UP, gameKeyFactory_.UP);
        inputToGameKeyMapping_.add(gameKeyFactory_.DOWN, gameKeyFactory_.DOWN);
        inputToGameKeyMapping_.add(gameKeyFactory_.LEFT, gameKeyFactory_.LEFT);
        inputToGameKeyMapping_.add(gameKeyFactory_.RIGHT, gameKeyFactory_.RIGHT);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_POUND, gameKeyFactory_.KEY_POUND);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_STAR, gameKeyFactory_.KEY_STAR);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM1, gameKeyFactory_.KEY_NUM1);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM3, gameKeyFactory_.KEY_NUM3);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM5, gameKeyFactory_.KEY_NUM5);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM7, gameKeyFactory_.KEY_NUM7);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM9, gameKeyFactory_.KEY_NUM9);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM0, gameKeyFactory_.KEY_NUM0);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM1, gameKeyFactory_.FIRE);
        inputToGameKeyMapping_.add(gameKeyFactory_.UP, TTouchMotionGestureFactory.getInstance().UP);
        inputToGameKeyMapping_.add(gameKeyFactory_.DOWN, TTouchMotionGestureFactory.getInstance().DOWN);
        inputToGameKeyMapping_.add(gameKeyFactory_.LEFT, TTouchMotionGestureFactory.getInstance().LEFT);
        inputToGameKeyMapping_.add(gameKeyFactory_.RIGHT, TTouchMotionGestureFactory.getInstance().RIGHT);
        basicTouchInputFactory_ := TBasicTouchInputFactory.getInstance();
        inputToGameKeyMapping_.add(gameKeyFactory_.UP, basicTouchInputFactory_.UP);
        inputToGameKeyMapping_.add(gameKeyFactory_.LEFT, basicTouchInputFactory_.LEFT);
        inputToGameKeyMapping_.add(gameKeyFactory_.RIGHT, basicTouchInputFactory_.RIGHT);
        inputToGameKeyMapping_.add(gameKeyFactory_.DOWN, basicTouchInputFactory_.DOWN);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM0, basicTouchInputFactory_.SPECIAL_BUTTON_FIVE);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM7, basicTouchInputFactory_.SPECIAL_BUTTON_FOUR);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM9, basicTouchInputFactory_.SPECIAL_BUTTON_THREE);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM1, basicTouchInputFactory_.SPECIAL_BUTTON_TWO);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM3, basicTouchInputFactory_.SPECIAL_BUTTON_ONE);
        inputToGameKeyMapping_.add(gameKeyFactory_.KEY_NUM2, basicTouchInputFactory_.SPECIAL_BUTTON_SIX);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

