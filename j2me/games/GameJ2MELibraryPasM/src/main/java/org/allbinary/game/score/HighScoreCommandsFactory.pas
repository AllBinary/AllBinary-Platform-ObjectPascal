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
unit HighScoreCommandsFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, HighScoreCommandsBaseFactory;

type
  {AB:TYPES}
  THighScoreCommandsFactory = class(THighScoreCommandsBaseFactory)
  public
    class var instance: THighScoreCommandsFactory;
        class function getInstance: THighScoreCommandsFactory; static;
        constructor Create;
  end;

implementation
uses
  HighScoreCommands, Command;


{AB:CODE}
    

class function THighScoreCommandsFactory.getInstance: THighScoreCommandsFactory;
begin
        Exit(THighScoreCommandsFactory.instance);
end;
    

constructor THighScoreCommandsFactory.Create;
begin
        inherited Create(TArray<TCommand>.Create(THighScoreCommands.getInstance().PERSONAL, THighScoreCommands.getInstance().WORLD));
end;

initialization
  {AB:INITIALIZATION}
  THighScoreCommandsFactory.instance := THighScoreCommandsFactory.Create();
  {AB:END}

end.

