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
unit StartIntermissionProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Processor, LogUtil, CommonStrings, AllBinaryGameCanvas;

type
  {AB:TYPES}
  TStartIntermissionProcessor = class(TProcessor)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    gameCanvas: TAllBinaryGameCanvas;
    WAIT: Int64;
    procedure InitFields;
        constructor Create(gameCanvas: TAllBinaryGameCanvas);
        procedure process; override;
  end;

implementation

{AB:CODE}

procedure TStartIntermissionProcessor.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  Self.WAIT := 5000;
end;
    

constructor TStartIntermissionProcessor.Create(gameCanvas: TAllBinaryGameCanvas);
begin
    inherited Create;
    InitFields;
        Self.gameCanvas := gameCanvas;
end;
    

// throws Exception
procedure TStartIntermissionProcessor.process;
begin
        if Self.gameCanvas.getStartIntermissionInterface().getTimeDelayHelper().isElapsedTNT(Self.WAIT) then begin
            Self.logUtil.putF('Intermission End', TJava.Box(Self), Self.commonStrings.PROCESS);
            Self.gameCanvas.getStartIntermissionInterface().setEnabled(False);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

