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
// package org.allbinary.game.configuration.persistance
unit GameDifficultyFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TGameDifficultyFactory = class(TObject)
  public
    level: Integer;
    class var instance: TGameDifficultyFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TGameDifficultyFactory; static;
        procedure setLevel(level: Integer); virtual;
        function getLevel: Integer; virtual;
  end;

implementation

{AB:CODE}

procedure TGameDifficultyFactory.InitFields;
begin
  Self.level := 0;
end;

constructor TGameDifficultyFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TGameDifficultyFactory.getInstance: TGameDifficultyFactory;
begin
        Exit(TGameDifficultyFactory.instance);
end;
    

procedure TGameDifficultyFactory.setLevel(level: Integer);
begin
        Self.level := level;
end;
    

function TGameDifficultyFactory.getLevel: Integer;
begin
        Exit(Self.level);
end;

initialization
  {AB:INITIALIZATION}
  TGameDifficultyFactory.instance := TGameDifficultyFactory.Create();
  {AB:END}

end.

