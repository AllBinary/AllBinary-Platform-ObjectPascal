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
// package org.allbinary.game.input
unit InputProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Canvas, GameInputStrings;

type
  {AB:TYPES}
  TInputProcessor = class(TObject)
  public
    gameInputStrings: TGameInputStrings;
    procedure InitFields;
    constructor Create;
        procedure keyPressedByDevice(keyCode: Integer; deviceId: Integer); virtual;
        procedure keyReleasedByDevice(canvas_: TCanvas; keyCode: Integer; deviceId: Integer); virtual;
  end;

implementation

{AB:CODE}

procedure TInputProcessor.InitFields;
begin
  Self.gameInputStrings := TGameInputStrings.getInstance();
end;

constructor TInputProcessor.Create;
begin
  inherited Create;
  InitFields;
end;
    

procedure TInputProcessor.keyPressedByDevice(keyCode: Integer; deviceId: Integer);
begin
end;
    

procedure TInputProcessor.keyReleasedByDevice(canvas_: TCanvas; keyCode: Integer; deviceId: Integer);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

