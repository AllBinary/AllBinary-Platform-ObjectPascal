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
// package org.allbinary.graphics.displayable.command
unit MyCommandsFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Command;

type
  {AB:TYPES}
  TMyCommandsFactory = class(TObject)
  public
    NO_COMMAND: TCommand;
    GAUGE_CHANGE: TCommand;
    SET_DISPLAYABLE: TCommand;
    PAUSE_COMMAND: TCommand;
    RESUME_COMMAND: TCommand;
    class var instance: TMyCommandsFactory;
    procedure InitFields;
        class function getInstance: TMyCommandsFactory; static;
        constructor Create;
  end;

implementation
uses
  StringUtil;


{AB:CODE}

procedure TMyCommandsFactory.InitFields;
begin
  Self.NO_COMMAND := TCommand.Create(TStringUtil.getInstance().EMPTY_STRING, TStringUtil.getInstance().EMPTY_STRING, -1, -1);
  Self.GAUGE_CHANGE := TCommand.Create('GAUGE_CHANGE', TStringUtil.getInstance().EMPTY_STRING, TCommand.ITEM, 1);
  Self.SET_DISPLAYABLE := TCommand.Create('Display', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 2);
  Self.PAUSE_COMMAND := TCommand.Create('Pause', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 0);
  Self.RESUME_COMMAND := TCommand.Create('Resume', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 0);
end;
    

class function TMyCommandsFactory.getInstance: TMyCommandsFactory;
begin
        Exit(TMyCommandsFactory.instance);
end;
    

constructor TMyCommandsFactory.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TMyCommandsFactory.instance := TMyCommandsFactory.Create();
  {AB:END}

end.

