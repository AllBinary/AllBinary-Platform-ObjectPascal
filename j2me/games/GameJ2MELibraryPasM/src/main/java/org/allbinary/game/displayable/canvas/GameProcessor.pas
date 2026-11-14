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
unit GameProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Processor, AllBinaryGameCanvas;

type
  {AB:TYPES}
  TGameProcessor = class(TProcessor)
  public
    gameCanvas: TAllBinaryGameCanvas;
    procedure InitFields;
        constructor Create(gameCanvas: TAllBinaryGameCanvas);
        procedure process; override;
  end;

implementation

{AB:CODE}

procedure TGameProcessor.InitFields;
begin
  
end;
    

constructor TGameProcessor.Create(gameCanvas: TAllBinaryGameCanvas);
begin
    inherited Create;
    InitFields;
        Self.gameCanvas := gameCanvas;
end;
    

// throws Exception
procedure TGameProcessor.process;
begin
        Self.gameCanvas.processPlayingGame();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

