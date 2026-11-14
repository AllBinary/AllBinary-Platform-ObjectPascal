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
// package org.allbinary.game
unit GameTypeFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameType;

type
  {AB:TYPES}
  TGameTypeFactory = class(TObject)
  public
    NULL_GAME_TYPE_ARRAY: TArray<TGameType>;
    NONE: TGameType;
    SINGLE_PLAYER: TGameType;
    MULTI_PLAYER: TGameType;
    BOT: TGameType;
    class var instance: TGameTypeFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TGameTypeFactory; static;
  end;

implementation
uses
  StringUtil;


{AB:CODE}

procedure TGameTypeFactory.InitFields;
begin
  Self.NULL_GAME_TYPE_ARRAY := nil;
  Self.NONE := TGameType.Create(TStringUtil.getInstance().NULL_STRING);
  Self.SINGLE_PLAYER := TGameType.Create('Single Player');
  Self.MULTI_PLAYER := TGameType.Create('Multi Player');
  Self.BOT := TGameType.Create('Artificial Player');
end;

constructor TGameTypeFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TGameTypeFactory.getInstance: TGameTypeFactory;
begin
        Exit(TGameTypeFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TGameTypeFactory.instance := TGameTypeFactory.Create();
  {AB:END}

end.

