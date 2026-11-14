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
unit GameKeyMappingFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameKey;

type
  {AB:TYPES}
  TGameKeyMappingFactory = class(TObject)
  public
    intKeyToGameKey: TArray<TGameKey>;
    class var instance: TObject;
    procedure InitFields;
        class function getInstance: TGameKeyMappingFactory; static;
        constructor Create;
        function getGameKey(key: Integer): TGameKey; virtual;
        procedure setGameKey(gameKey_: TGameKey);
  end;

implementation
uses
  InputFactory, GameKeyFactory, NullUtil;


{AB:CODE}

procedure TGameKeyMappingFactory.InitFields;
begin
  Self.intKeyToGameKey := TJava.NewArray<TGameKey>(TInputFactory.getInstance().MAX);
end;
    

class function TGameKeyMappingFactory.getInstance: TGameKeyMappingFactory;
begin
        if (TGameKeyMappingFactory.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TGameKeyMappingFactory.instance := TGameKeyMappingFactory.Create();
        end;
        Exit(TGameKeyMappingFactory(TJava.ToObject(TGameKeyMappingFactory.instance)));
end;
    

constructor TGameKeyMappingFactory.Create;
var
  gameKeyFactory_: TGameKeyFactory;
begin
    inherited Create;
    InitFields;
        gameKeyFactory_ := TGameKeyFactory.getInstance();
        Self.setGameKey(gameKeyFactory_.NONE);
        Self.setGameKey(gameKeyFactory_.UP);
        Self.setGameKey(gameKeyFactory_.DOWN);
        Self.setGameKey(gameKeyFactory_.LEFT);
        Self.setGameKey(gameKeyFactory_.RIGHT);
        Self.setGameKey(gameKeyFactory_.KEY_POUND);
        Self.setGameKey(gameKeyFactory_.KEY_STAR);
        Self.setGameKey(gameKeyFactory_.KEY_NUM0);
        Self.setGameKey(gameKeyFactory_.KEY_NUM1);
        Self.setGameKey(gameKeyFactory_.KEY_NUM2);
        Self.setGameKey(gameKeyFactory_.KEY_NUM3);
        Self.setGameKey(gameKeyFactory_.KEY_NUM4);
        Self.setGameKey(gameKeyFactory_.KEY_NUM5);
        Self.setGameKey(gameKeyFactory_.KEY_NUM6);
        Self.setGameKey(gameKeyFactory_.KEY_NUM7);
        Self.setGameKey(gameKeyFactory_.KEY_NUM8);
        Self.setGameKey(gameKeyFactory_.KEY_NUM9);
        Self.setGameKey(gameKeyFactory_.GAME_A);
        Self.setGameKey(gameKeyFactory_.GAME_B);
        Self.setGameKey(gameKeyFactory_.GAME_C);
        Self.setGameKey(gameKeyFactory_.GAME_D);
        Self.setGameKey(gameKeyFactory_.FIRE);
        Self.setGameKey(gameKeyFactory_.LEVEL_DOWN);
        Self.setGameKey(gameKeyFactory_.LEVEL_UP);
end;
    

function TGameKeyMappingFactory.getGameKey(key: Integer): TGameKey;
begin
        Exit(Self.intKeyToGameKey[key]);
end;
    

procedure TGameKeyMappingFactory.setGameKey(gameKey_: TGameKey);
begin
        Self.intKeyToGameKey[gameKey_.getId()] := gameKey_;
end;

initialization
  {AB:INITIALIZATION}
  TGameKeyMappingFactory.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

