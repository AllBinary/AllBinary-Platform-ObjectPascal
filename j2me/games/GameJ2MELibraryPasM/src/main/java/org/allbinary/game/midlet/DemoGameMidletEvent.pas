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
unit DemoGameMidletEvent;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, DemoGameMidletState;

type
  {AB:TYPES}
  TDemoGameMidletEvent = class(TAllBinaryEventObject)
  public
    demoGameMidletState: TDemoGameMidletState;
    procedure InitFields;
        constructor Create(anyType: TObject; demoGameMidletState_: TDemoGameMidletState);
        procedure init(anyType: TObject); virtual;
        procedure setDemoGameMidletState(demoGameMidletState_: TDemoGameMidletState); virtual;
        function getDemoGameMidletState: TDemoGameMidletState; virtual;
  end;

implementation

{AB:CODE}

procedure TDemoGameMidletEvent.InitFields;
begin
  
end;
    

constructor TDemoGameMidletEvent.Create(anyType: TObject; demoGameMidletState_: TDemoGameMidletState);
begin
        inherited Create(anyType);
        InitFields;
        Self.demoGameMidletState := demoGameMidletState_;
end;
    

procedure TDemoGameMidletEvent.init(anyType: TObject);
begin
        Self.setSource(TJava.Box(anyType));
end;
    

procedure TDemoGameMidletEvent.setDemoGameMidletState(demoGameMidletState_: TDemoGameMidletState);
begin
        Self.demoGameMidletState := demoGameMidletState_;
end;
    

function TDemoGameMidletEvent.getDemoGameMidletState: TDemoGameMidletState;
begin
        Exit(Self.demoGameMidletState);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

