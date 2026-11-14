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
// package org.allbinary.game.midlet
unit DemoGameMidletStateFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DemoGameMidletState;

type
  {AB:TYPES}
  TDemoGameMidletStateFactory = class(TObject)
  public
    NONE: TDemoGameMidletState;
    START_DEMO: TDemoGameMidletState;
    START_GAME: TDemoGameMidletState;
    START_INPUT_MAPPING: TDemoGameMidletState;
    class var STATE: TDemoGameMidletStateFactory;
    procedure InitFields;
        constructor Create;
        class function getInstance: TDemoGameMidletStateFactory; static;
  end;

implementation

{AB:CODE}

procedure TDemoGameMidletStateFactory.InitFields;
begin
  Self.NONE := TDemoGameMidletState.Create();
  Self.START_DEMO := TDemoGameMidletState.Create();
  Self.START_GAME := TDemoGameMidletState.Create();
  Self.START_INPUT_MAPPING := TDemoGameMidletState.Create();
end;
    

constructor TDemoGameMidletStateFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

class function TDemoGameMidletStateFactory.getInstance: TDemoGameMidletStateFactory;
begin
        Exit(TDemoGameMidletStateFactory.STATE);
end;

initialization
  {AB:INITIALIZATION}
  TDemoGameMidletStateFactory.STATE := TDemoGameMidletStateFactory.Create();
  {AB:END}

end.

