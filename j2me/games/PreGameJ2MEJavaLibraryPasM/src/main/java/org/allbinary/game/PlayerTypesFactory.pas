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
unit PlayerTypesFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PlayerType;

type
  {AB:TYPES}
  TPlayerTypesFactory = class(TObject)
  public
    PLAYER_TYPE_ONE: TPlayerType;
    PLAYER_TYPE_TWO: TPlayerType;
    PLAYER_TYPE_THREE: TPlayerType;
    class var SINGLETON: TPlayerTypesFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TPlayerTypesFactory; static;
  end;

implementation

{AB:CODE}

procedure TPlayerTypesFactory.InitFields;
begin
  Self.PLAYER_TYPE_ONE := TPlayerType.Create('Player Type One', 0);
  Self.PLAYER_TYPE_TWO := TPlayerType.Create('Player Type Two', 1);
  Self.PLAYER_TYPE_THREE := TPlayerType.Create('Player Type Three', 2);
end;

constructor TPlayerTypesFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TPlayerTypesFactory.getInstance: TPlayerTypesFactory;
begin
        Exit(TPlayerTypesFactory.SINGLETON);
end;

initialization
  {AB:INITIALIZATION}
  TPlayerTypesFactory.SINGLETON := TPlayerTypesFactory.Create();
  {AB:END}

end.

