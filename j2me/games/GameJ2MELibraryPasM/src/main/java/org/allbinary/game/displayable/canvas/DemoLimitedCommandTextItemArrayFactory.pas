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
unit DemoLimitedCommandTextItemArrayFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommandTextItemArrayFactory;

type
  {AB:TYPES}
  TDemoLimitedCommandTextItemArrayFactory = class(TObject)
  public
    commandTextItemArrayFactory: TCommandTextItemArrayFactory;
    class var instance: TDemoLimitedCommandTextItemArrayFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TDemoLimitedCommandTextItemArrayFactory; static;
        function getCommandTextItemArrayFactory: TCommandTextItemArrayFactory; virtual;
  end;

implementation
uses
  LimitCommandsVisitor;


{AB:CODE}

procedure TDemoLimitedCommandTextItemArrayFactory.InitFields;
begin
  Self.commandTextItemArrayFactory := TCommandTextItemArrayFactory.Create(TLimitCommandsVisitor.Create());
end;

constructor TDemoLimitedCommandTextItemArrayFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TDemoLimitedCommandTextItemArrayFactory.getInstance: TDemoLimitedCommandTextItemArrayFactory;
begin
        Exit(TDemoLimitedCommandTextItemArrayFactory.instance);
end;
    

function TDemoLimitedCommandTextItemArrayFactory.getCommandTextItemArrayFactory: TCommandTextItemArrayFactory;
begin
        Exit(Self.commandTextItemArrayFactory);
end;

initialization
  {AB:INITIALIZATION}
  TDemoLimitedCommandTextItemArrayFactory.instance := TDemoLimitedCommandTextItemArrayFactory.Create();
  {AB:END}

end.

