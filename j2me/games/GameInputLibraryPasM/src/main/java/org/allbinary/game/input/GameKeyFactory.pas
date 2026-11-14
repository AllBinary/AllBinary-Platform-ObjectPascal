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
unit GameKeyFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameKey;

type
  {AB:TYPES}
  TGameKeyFactory = class(TObject)
  public
    NONE: TGameKey;
    UP: TGameKey;
    DOWN: TGameKey;
    LEFT: TGameKey;
    RIGHT: TGameKey;
    KEY_POUND: TGameKey;
    KEY_STAR: TGameKey;
    KEY_NUM0: TGameKey;
    KEY_NUM1: TGameKey;
    KEY_NUM2: TGameKey;
    KEY_NUM3: TGameKey;
    KEY_NUM4: TGameKey;
    KEY_NUM5: TGameKey;
    KEY_NUM6: TGameKey;
    KEY_NUM7: TGameKey;
    KEY_NUM8: TGameKey;
    KEY_NUM9: TGameKey;
    GAME_A: TGameKey;
    GAME_B: TGameKey;
    GAME_C: TGameKey;
    GAME_D: TGameKey;
    FIRE: TGameKey;
    LEVEL_DOWN: TGameKey;
    LEVEL_UP: TGameKey;
    class var instance: TObject;
    procedure InitFields;
    constructor Create;
        class function getInstance: TGameKeyFactory; static;
  end;

implementation
uses
  InputFactory, Canvas, NullUtil, CommonPhoneStrings;


{AB:CODE}

procedure TGameKeyFactory.InitFields;
begin
  Self.NONE := TGameKey.Create((TInputFactory.getInstance().MAX) - (1), 'None');
  Self.UP := TGameKey.Create(TCanvas.UP, TCommonPhoneStrings.getInstance().UP);
  Self.DOWN := TGameKey.Create(TCanvas.DOWN, TCommonPhoneStrings.getInstance().DOWN);
  Self.LEFT := TGameKey.Create(TCanvas.LEFT, TCommonPhoneStrings.getInstance().LEFT);
  Self.RIGHT := TGameKey.Create(TCanvas.RIGHT, TCommonPhoneStrings.getInstance().RIGHT);
  Self.KEY_POUND := TGameKey.Create(TCanvas.KEY_POUND, 'POUND');
  Self.KEY_STAR := TGameKey.Create(TCanvas.KEY_STAR, 'STAR');
  Self.KEY_NUM0 := TGameKey.Create(TCanvas.KEY_NUM0, TCommonPhoneStrings.getInstance().ZERO);
  Self.KEY_NUM1 := TGameKey.Create(TCanvas.KEY_NUM1, TCommonPhoneStrings.getInstance().ONE);
  Self.KEY_NUM2 := TGameKey.Create(TCanvas.KEY_NUM2, TCommonPhoneStrings.getInstance().TWO);
  Self.KEY_NUM3 := TGameKey.Create(TCanvas.KEY_NUM3, TCommonPhoneStrings.getInstance().THREE);
  Self.KEY_NUM4 := TGameKey.Create(TCanvas.KEY_NUM4, TCommonPhoneStrings.getInstance().FOUR);
  Self.KEY_NUM5 := TGameKey.Create(TCanvas.KEY_NUM5, TCommonPhoneStrings.getInstance().FIVE);
  Self.KEY_NUM6 := TGameKey.Create(TCanvas.KEY_NUM6, TCommonPhoneStrings.getInstance().SIX);
  Self.KEY_NUM7 := TGameKey.Create(TCanvas.KEY_NUM7, TCommonPhoneStrings.getInstance().SEVEN);
  Self.KEY_NUM8 := TGameKey.Create(TCanvas.KEY_NUM8, TCommonPhoneStrings.getInstance().EIGHT);
  Self.KEY_NUM9 := TGameKey.Create(TCanvas.KEY_NUM9, TCommonPhoneStrings.getInstance().NINE);
  Self.GAME_A := TGameKey.Create(TCanvas.GAME_A, 'Game A');
  Self.GAME_B := TGameKey.Create(TCanvas.GAME_B, 'Game B');
  Self.GAME_C := TGameKey.Create(TCanvas.GAME_C, 'Game C');
  Self.GAME_D := TGameKey.Create(TCanvas.GAME_D, 'Game D');
  Self.FIRE := TGameKey.Create(TCanvas.FIRE, TCommonPhoneStrings.getInstance().FIRE);
  Self.LEVEL_DOWN := TGameKey.Create((TCanvas.KEY_NUM9) + (1), 'Cheat Level Up');
  Self.LEVEL_UP := TGameKey.Create((TCanvas.KEY_NUM9) + (2), 'Cheat Level Down');
end;

constructor TGameKeyFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TGameKeyFactory.getInstance: TGameKeyFactory;
begin
        if (TGameKeyFactory.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TGameKeyFactory.instance := TGameKeyFactory.Create();
        end;
        Exit(TGameKeyFactory(TJava.ToObject(TGameKeyFactory.instance)));
end;

initialization
  {AB:INITIALIZATION}
  TGameKeyFactory.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

