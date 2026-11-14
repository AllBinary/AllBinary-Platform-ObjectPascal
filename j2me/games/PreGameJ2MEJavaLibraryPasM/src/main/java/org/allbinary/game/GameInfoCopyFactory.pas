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
unit GameInfoCopyFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameInfo;

type
  {AB:TYPES}
  TGameInfoCopyFactory = class(TObject)
  public
    constructor Create;
        class function getInstanceMaxLevel(gameInfo_: TGameInfo; maxLevel: Integer): TGameInfo; static;
        class function getInstance(gameInfo_: TGameInfo): TGameInfo; static;
  end;

implementation

{AB:CODE}

constructor TGameInfoCopyFactory.Create;
begin
  inherited Create;
end;
    

class function TGameInfoCopyFactory.getInstanceMaxLevel(gameInfo_: TGameInfo; maxLevel: Integer): TGameInfo;
begin
        Exit(TGameInfo.Create(gameInfo_.getGameType(), gameInfo_.getGameMode(), gameInfo_.getPlayerType(), maxLevel, gameInfo_.getCurrentLevel()));
end;
    

class function TGameInfoCopyFactory.getInstance(gameInfo_: TGameInfo): TGameInfo;
begin
        Exit(TGameInfo.Create(gameInfo_.getGameType(), gameInfo_.getGameMode(), gameInfo_.getPlayerType(), gameInfo_.getHighestLevel(), gameInfo_.getCurrentLevel()));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

