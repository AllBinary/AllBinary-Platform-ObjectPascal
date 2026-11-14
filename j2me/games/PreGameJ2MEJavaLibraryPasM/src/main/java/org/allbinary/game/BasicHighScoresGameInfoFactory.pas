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
unit BasicHighScoresGameInfoFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameInfo;

type
  {AB:TYPES}
  TBasicHighScoresGameInfoFactory = class(TObject)
  public
    MULTI_PLAYER_SERVER: TGameInfo;
    SINGLE_PLAYER_SERVER: TGameInfo;
    class var SINGLETON: TBasicHighScoresGameInfoFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TBasicHighScoresGameInfoFactory; static;
  end;

implementation
uses
  GameTypeFactory, GameMode, PlayerTypesFactory;


{AB:CODE}

procedure TBasicHighScoresGameInfoFactory.InitFields;
begin
  Self.MULTI_PLAYER_SERVER := TGameInfo.Create(TGameTypeFactory.getInstance().MULTI_PLAYER, TGameMode.SERVER, TPlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 0, 0);
  Self.SINGLE_PLAYER_SERVER := TGameInfo.Create(TGameTypeFactory.getInstance().SINGLE_PLAYER, TGameMode.SERVER, TPlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 0, 0);
end;

constructor TBasicHighScoresGameInfoFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TBasicHighScoresGameInfoFactory.getInstance: TBasicHighScoresGameInfoFactory;
begin
        Exit(TBasicHighScoresGameInfoFactory.SINGLETON);
end;

initialization
  {AB:INITIALIZATION}
  TBasicHighScoresGameInfoFactory.SINGLETON := TBasicHighScoresGameInfoFactory.Create();
  {AB:END}

end.

