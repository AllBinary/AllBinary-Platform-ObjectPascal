{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
  
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
  
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
  
  Created By: Travis Berthelot 
   
}
// Generated Code Do Not Modify
// package org.allbinary.game.displayable
unit RepaintRunnable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Canvas, ARunnable;

type
  {AB:TYPES}
  TRepaintRunnable = class(TARunnable)
  public
    canvas: TCanvas;
    procedure InitFields;
        constructor Create(canvas_: TCanvas);
        procedure run; override;
  end;

implementation
uses
  DisplayInfoSingleton, LogUtil, CommonStrings;


{AB:CODE}

procedure TRepaintRunnable.InitFields;
begin
  
end;
    

constructor TRepaintRunnable.Create(canvas_: TCanvas);
begin
    inherited Create;
    InitFields;
        Self.canvas := canvas_;
end;
    

procedure TRepaintRunnable.run;
var
  commonStrings_: TCommonStrings;
  logUtil_: TLogUtil;
begin
        try
            Self.canvas.repaint();
            TDisplayInfoSingleton.getInstance().process();
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            logUtil_ := TLogUtil.getInstance();
            logUtil_.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.RUN, TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

