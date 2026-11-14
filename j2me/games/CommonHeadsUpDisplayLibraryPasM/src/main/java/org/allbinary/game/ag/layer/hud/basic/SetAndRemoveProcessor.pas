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
// package org.allbinary.game.ag.layer.hud.basic
unit SetAndRemoveProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Processor, PlayerGameNotificationHud;

type
  {AB:TYPES}
  TSetAndRemoveProcessor = class(TProcessor)
  public
    updateMeasurementProcessor: TPlayerGameNotificationHud;
    procedure InitFields;
        constructor Create(updateMeasurementProcessor: TPlayerGameNotificationHud);
        procedure process; override;
  end;

implementation

{AB:CODE}

procedure TSetAndRemoveProcessor.InitFields;
begin
  
end;
    

constructor TSetAndRemoveProcessor.Create(updateMeasurementProcessor: TPlayerGameNotificationHud);
begin
    inherited Create;
    InitFields;
        Self.updateMeasurementProcessor := updateMeasurementProcessor;
end;
    

// throws Exception
procedure TSetAndRemoveProcessor.process;
begin
        Self.updateMeasurementProcessor.setAndRemoveProcess();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

