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
unit DemoGameRunnable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, GameTickTimeDelayHelper, DemoCanvas, GameRunnable;

type
  {AB:TYPES}
  TDemoGameRunnable = class(TGameRunnable)
  public
    logUtil: TLogUtil;
    demoCanvas: TDemoCanvas;
    gameTickTimeDelayHelper: TGameTickTimeDelayHelper;
    procedure InitFields;
        constructor Create(demoCanvas_: TDemoCanvas);
        procedure run; override;
        procedure processLoopSleep; override;
  end;

implementation
uses
  CommonStrings, GameTickTimeDelayHelperFactory;


{AB:CODE}

procedure TDemoGameRunnable.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  Self.gameTickTimeDelayHelper := TGameTickTimeDelayHelperFactory.getInstance();
end;
    

constructor TDemoGameRunnable.Create(demoCanvas_: TDemoCanvas);
begin
    inherited Create;
    InitFields;
        Self.demoCanvas := demoCanvas_;
end;
    

procedure TDemoGameRunnable.run;
var
  commonStrings_: TCommonStrings;
begin
        try
            Self.demoCanvas.getLoopTimeHelperP().setStartTime(Self.gameTickTimeDelayHelper.setStartTime());
            Self.demoCanvas.processGame();
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.RUN, TJava.Box(e));
            end;
        end;
end;
    

// throws Exception
procedure TDemoGameRunnable.processLoopSleep;
begin
        Self.demoCanvas.processLoopSleep();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

