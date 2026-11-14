{

  AllBinary Open License Version 1
  Copyright (c) 2026 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
}
// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
unit InitGameProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Processor, AllBinaryGameCanvas;

type
  {AB:TYPES}
  TInitGameProcessor = class(TProcessor)
  public
    gameCanvas: TAllBinaryGameCanvas;
    procedure InitFields;
        constructor Create(gameCanvas: TAllBinaryGameCanvas);
        procedure process; override;
  end;

implementation
uses
  ProgressCanvasFactory, LogUtil, CommonStrings;


{AB:CODE}

procedure TInitGameProcessor.InitFields;
begin
  
end;
    

constructor TInitGameProcessor.Create(gameCanvas: TAllBinaryGameCanvas);
begin
    inherited Create;
    InitFields;
        Self.gameCanvas := gameCanvas;
end;
    

// throws Exception
procedure TInitGameProcessor.process;
begin
        if TProgressCanvasFactory.getInstance().isInGame() then begin
            Self.gameCanvas.setProcessGameProcessorInit();
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

