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
// package org.allbinary.game.input.mapping
unit GameInputMapping;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameKey;

type
  {AB:TYPES}
  TGameInputMapping = class(TObject)
  public
    name: string;
    gameKey: TGameKey;
    procedure InitFields;
        constructor Create(name: string; gameKey_: TGameKey);
        procedure setGameKey(gameKey_: TGameKey);
        function getGameKey: TGameKey; virtual;
        procedure setName(name: string);
        function getName: string; virtual;
  end;

implementation
uses
  StringUtil;


{AB:CODE}

procedure TGameInputMapping.InitFields;
begin
  Self.name := TStringUtil.getInstance().EMPTY_STRING;
  Self.gameKey := TGameKey.NULL_GAME_KEY;
end;
    

constructor TGameInputMapping.Create(name: string; gameKey_: TGameKey);
begin
    inherited Create;
    InitFields;
        Self.setName(name);
        Self.setGameKey(gameKey_);
end;
    

procedure TGameInputMapping.setGameKey(gameKey_: TGameKey);
begin
        Self.gameKey := gameKey_;
end;
    

function TGameInputMapping.getGameKey: TGameKey;
begin
        Exit(Self.gameKey);
end;
    

procedure TGameInputMapping.setName(name: string);
begin
        Self.name := name;
end;
    

function TGameInputMapping.getName: string;
begin
        Exit(Self.name);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

