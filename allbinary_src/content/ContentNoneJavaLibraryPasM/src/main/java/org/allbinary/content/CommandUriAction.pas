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
// package org.allbinary.content
unit CommandUriAction;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Command, LogUtil;

type
  {AB:TYPES}
  TCommandUriAction = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TCommandUriAction;
    procedure InitFields;
    constructor Create;
        class function getInstance: TCommandUriAction; static;
        procedure add(command_: TCommand; url: string); virtual;
        procedure process(command_: TCommand); virtual;
  end;

implementation

{AB:CODE}

procedure TCommandUriAction.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

constructor TCommandUriAction.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TCommandUriAction.getInstance: TCommandUriAction;
begin
        Exit(TCommandUriAction.instance);
end;
    

procedure TCommandUriAction.add(command_: TCommand; url: string);
begin
end;
    

procedure TCommandUriAction.process(command_: TCommand);
begin
end;

initialization
  {AB:INITIALIZATION}
  TCommandUriAction.instance := TCommandUriAction.Create();
  {AB:END}

end.

