{

  AllBinary Open License Version 1
  Copyright (c) 2022 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
  
}
// Generated Code Do Not Modify
// package org.allbinary.graphics.displayable.screen
unit AboutCommandProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Canvas, Command, CommandListener;

type
  {AB:TYPES}
  TAboutCommandProcessor = class(TObject)
  public
    class var instance: TAboutCommandProcessor;
    constructor Create;
        class function getInstance: TAboutCommandProcessor; static;
        procedure process(midletCommandListener: ICommandListener; command_: TCommand; canvas_: TCanvas); virtual;
  end;

implementation

{AB:CODE}

constructor TAboutCommandProcessor.Create;
begin
  inherited Create;
end;
    

class function TAboutCommandProcessor.getInstance: TAboutCommandProcessor;
begin
        Exit(TAboutCommandProcessor.instance);
end;
    

procedure TAboutCommandProcessor.process(midletCommandListener: ICommandListener; command_: TCommand; canvas_: TCanvas);
begin
        midletCommandListener.commandAction(command_, canvas_);
end;

initialization
  {AB:INITIALIZATION}
  TAboutCommandProcessor.instance := TAboutCommandProcessor.Create();
  {AB:END}

end.

