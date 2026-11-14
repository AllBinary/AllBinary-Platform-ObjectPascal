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
unit GameFrameRunnable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameTickDisplayInfoSingleton, LogUtil, GameTickTimeDelayHelper, AllBinaryGameCanvas, GameRunnable;

type
  {AB:TYPES}
  TGameFrameRunnable = class(TGameRunnable)
  public
    logUtil: TLogUtil;
    gameTickDisplayInfoSingleton: TGameTickDisplayInfoSingleton;
    allBinaryGameCanvas: TAllBinaryGameCanvas;
    gameTickTimeDelayHelper: TGameTickTimeDelayHelper;
    procedure InitFields;
        constructor Create(allBinaryGameCanvas_: TAllBinaryGameCanvas);
        procedure run; override;
  end;

implementation
uses
  CommonStrings, GameTickTimeDelayHelperFactory;


{AB:CODE}

procedure TGameFrameRunnable.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.gameTickDisplayInfoSingleton := TGameTickDisplayInfoSingleton.getInstance();
  
  Self.gameTickTimeDelayHelper := TGameTickTimeDelayHelperFactory.getInstance();
end;
    

constructor TGameFrameRunnable.Create(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
    inherited Create;
    InitFields;
        Self.allBinaryGameCanvas := allBinaryGameCanvas_;
end;
    

procedure TGameFrameRunnable.run;
var
  allBinaryGameCanvas_: TAllBinaryGameCanvas;
  commonStrings_: TCommonStrings;
begin
        try
            allBinaryGameCanvas_ := Self.allBinaryGameCanvas;
            allBinaryGameCanvas_.getLoopTimeHelperP().setStartTime(Self.gameTickTimeDelayHelper.setStartTime());
            Self.gameTickDisplayInfoSingleton.update();
            allBinaryGameCanvas_.processGame();
            if (not (allBinaryGameCanvas_.isRunning())) or (allBinaryGameCanvas_.isPaused()) then begin
                allBinaryGameCanvas_.notifyDonePainting();
            end;
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.RUN, TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

