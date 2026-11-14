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
unit HighScoreCommandsBaseFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Command, LogUtil;

type
  {AB:TYPES}
  THighScoreCommandsBaseFactory = class(TObject)
  public
    logUtil: TLogUtil;
    HIGH_SCORE_COMMANDS: TArray<TCommand>;
    procedure InitFields;
        constructor Create(HIGH_SCORE_COMMANDS: TArray<TCommand>);
        function isHighScoreCommand(command_: TCommand): Boolean; virtual;
        function getIndex(command_: TCommand): Integer; virtual;
  end;

implementation
uses
  J2MEUtil;


{AB:CODE}

procedure THighScoreCommandsBaseFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor THighScoreCommandsBaseFactory.Create(HIGH_SCORE_COMMANDS: TArray<TCommand>);
begin
    inherited Create;
    InitFields;
        Self.HIGH_SCORE_COMMANDS := HIGH_SCORE_COMMANDS;
end;
    

function THighScoreCommandsBaseFactory.isHighScoreCommand(command_: TCommand): Boolean;
var
  index: Integer;
begin
        for index := (System.Length(Self.HIGH_SCORE_COMMANDS)) - (1) downto 0 do begin
            if (command_) = (Self.HIGH_SCORE_COMMANDS[index]) then begin
                Exit(True);
            end;
        end;
        Exit(False);
end;
    

// throws Exception
function THighScoreCommandsBaseFactory.getIndex(command_: TCommand): Integer;
var
  index: Integer;
begin
        for index := (System.Length(Self.HIGH_SCORE_COMMANDS)) - (1) downto 0 do begin
            if (command_) = (Self.HIGH_SCORE_COMMANDS[index]) then begin
                Exit(index);
            end;
        end;
        raise SysUtils.Exception.Create('No Such Command');
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

