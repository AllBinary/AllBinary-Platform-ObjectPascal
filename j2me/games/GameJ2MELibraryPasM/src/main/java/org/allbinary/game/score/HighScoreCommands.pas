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
// package org.allbinary.game.score
unit HighScoreCommands;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Command;

type
  {AB:TYPES}
  THighScoreCommands = class(TObject)
  public
    DISPLAY: TCommand;
    PERSONAL: TCommand;
    WORLD: TCommand;
    class var instance: THighScoreCommands;
    procedure InitFields;
    constructor Create;
        class function getInstance: THighScoreCommands; static;
  end;

implementation
uses
  StringUtil;


{AB:CODE}

procedure THighScoreCommands.InitFields;
begin
  Self.DISPLAY := TCommand.Create('Scores', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 1);
  Self.PERSONAL := TCommand.Create('Personal', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 1);
  Self.WORLD := TCommand.Create('World', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 1);
end;

constructor THighScoreCommands.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function THighScoreCommands.getInstance: THighScoreCommands;
begin
        Exit(THighScoreCommands.instance);
end;

initialization
  {AB:INITIALIZATION}
  THighScoreCommands.instance := THighScoreCommands.Create();
  {AB:END}

end.

