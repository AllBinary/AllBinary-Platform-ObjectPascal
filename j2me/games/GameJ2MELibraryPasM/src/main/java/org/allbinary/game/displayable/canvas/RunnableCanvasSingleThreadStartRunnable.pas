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
unit RunnableCanvasSingleThreadStartRunnable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, RunnableCanvas, LogUtil, GameRunnable;

type
  {AB:TYPES}
  TRunnableCanvasSingleThreadStartRunnable = class(TGameRunnable)
  public
    logUtil: TLogUtil;
    runnableCanvas: TRunnableCanvas;
    procedure InitFields;
        constructor Create(demoCanvas: TRunnableCanvas);
        procedure run; override;
        procedure processLoopSleep; override;
  end;

implementation
uses
  CommonStrings;


{AB:CODE}

procedure TRunnableCanvasSingleThreadStartRunnable.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor TRunnableCanvasSingleThreadStartRunnable.Create(demoCanvas: TRunnableCanvas);
begin
    inherited Create;
    InitFields;
        Self.runnableCanvas := demoCanvas;
end;
    

procedure TRunnableCanvasSingleThreadStartRunnable.run;
var
  commonStrings_: TCommonStrings;
begin
        try
            Self.runnableCanvas.run();
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.RUN, TJava.Box(e));
            end;
        end;
end;
    

// throws Exception
procedure TRunnableCanvasSingleThreadStartRunnable.processLoopSleep;
begin
        Self.runnableCanvas.processLoopSleep();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

