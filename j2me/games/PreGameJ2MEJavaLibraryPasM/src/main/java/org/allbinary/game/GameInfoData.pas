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
unit GameInfoData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TGameInfoData = class(TObject)
  public
    GAME_TYPE: string;
    GAME_MODE: string;
    PLAYER_TYPE: string;
    HIGHEST_LEVEL: string;
    CURRENT_LEVEL: string;
    SOFTWARE_INFORMATION: string;
    class var instance: TGameInfoData;
    procedure InitFields;
        class function getInstance: TGameInfoData; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TGameInfoData.InitFields;
begin
  Self.GAME_TYPE := 'GAME_TYPE';
  Self.GAME_MODE := 'GAME_MODE';
  Self.PLAYER_TYPE := 'PLAYER_TYPE';
  Self.HIGHEST_LEVEL := 'HIGHEST_LEVEL';
  Self.CURRENT_LEVEL := 'CURRENT_LEVEL';
  Self.SOFTWARE_INFORMATION := 'SOFTWARE_INFORMATION';
end;
    

class function TGameInfoData.getInstance: TGameInfoData;
begin
        Exit(TGameInfoData.instance);
end;
    

constructor TGameInfoData.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TGameInfoData.instance := TGameInfoData.Create();
  {AB:END}

end.

