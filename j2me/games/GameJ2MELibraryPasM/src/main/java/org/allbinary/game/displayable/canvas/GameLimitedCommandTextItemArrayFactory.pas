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
// package org.allbinary.game.displayable.canvas
unit GameLimitedCommandTextItemArrayFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommandTextItemArrayFactory;

type
  {AB:TYPES}
  TGameLimitedCommandTextItemArrayFactory = class(TObject)
  public
    commandTextItemArrayFactory: TCommandTextItemArrayFactory;
    class var instance: TGameLimitedCommandTextItemArrayFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TGameLimitedCommandTextItemArrayFactory; static;
        function getCommandTextItemArrayFactory: TCommandTextItemArrayFactory; virtual;
  end;

implementation
uses
  LimitCommandsVisitor;


{AB:CODE}

procedure TGameLimitedCommandTextItemArrayFactory.InitFields;
begin
  Self.commandTextItemArrayFactory := TCommandTextItemArrayFactory.Create(TLimitCommandsVisitor.Create());
end;

constructor TGameLimitedCommandTextItemArrayFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TGameLimitedCommandTextItemArrayFactory.getInstance: TGameLimitedCommandTextItemArrayFactory;
begin
        Exit(TGameLimitedCommandTextItemArrayFactory.instance);
end;
    

function TGameLimitedCommandTextItemArrayFactory.getCommandTextItemArrayFactory: TCommandTextItemArrayFactory;
begin
        Exit(Self.commandTextItemArrayFactory);
end;

initialization
  {AB:INITIALIZATION}
  TGameLimitedCommandTextItemArrayFactory.instance := TGameLimitedCommandTextItemArrayFactory.Create();
  {AB:END}

end.

