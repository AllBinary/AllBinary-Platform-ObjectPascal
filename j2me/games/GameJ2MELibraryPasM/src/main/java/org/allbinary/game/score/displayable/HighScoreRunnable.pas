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
// package org.allbinary.game.score.displayable
unit HighScoreRunnable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ARunnable, HighScoresCanvas;

type
  {AB:TYPES}
  THighScoreRunnable = class(TARunnable)
  public
    highScoresCanvas: THighScoresCanvas;
    procedure InitFields;
        constructor Create(highScoresCanvas_: THighScoresCanvas);
        procedure run; override;
  end;

implementation
uses
  J2MEUtil, ABSystemWrapper, LogUtil, StringMaker, CommonStrings;


{AB:CODE}

procedure THighScoreRunnable.InitFields;
begin
  
end;
    

constructor THighScoreRunnable.Create(highScoresCanvas_: THighScoresCanvas);
begin
    inherited Create;
    InitFields;
        Self.highScoresCanvas := highScoresCanvas_;
end;
    

procedure THighScoreRunnable.run;
var
  commonStrings_: TCommonStrings;
  logUtil_: TLogUtil;
  highScoresCanvas_: THighScoresCanvas;
  isHTML: Boolean;
  stringMaker_: TStringMaker;
  systemWrapper: TABSystemWrapper;
  currentTimeMillis: Int64;
begin
        commonStrings_ := TCommonStrings.getInstance();
        logUtil_ := TLogUtil.getInstance();
        highScoresCanvas_ := Self.highScoresCanvas;
        try
            isHTML := TJ2MEUtil.isHTML();
            if not (isHTML) then begin
                while not (highScoresCanvas_.hasPainted) do begin
                end;
                highScoresCanvas_.hasPainted := False;
            end;
            stringMaker_ := TStringMaker.Create();
            systemWrapper := TABSystemWrapper.getInstance();
            currentTimeMillis := systemWrapper.currentTimeMillis();
            logUtil_.putF(stringMaker_.append('HighScoresCanvas - Request repaint to be sure: ').appendlong(currentTimeMillis).toString(), TJava.Box(Self), commonStrings_.RUN);
            highScoresCanvas_.repaintBehavior.onChangeRepaint(highScoresCanvas_);
            if not (isHTML) then begin
                while not (highScoresCanvas_.hasPainted) do begin
                end;
            end;
            stringMaker_.delete_(0, stringMaker_.length());
            logUtil_.putF(stringMaker_.append('HighScoresCanvas - Now that the canvas has completed repaint go ahead and fetch the scores: ').appendlong(currentTimeMillis).toString(), TJava.Box(Self), commonStrings_.RUN);
            highScoresCanvas_.executeUpdate();
        except
            on e: SysUtils.Exception do begin
            logUtil_.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.RUN, TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

