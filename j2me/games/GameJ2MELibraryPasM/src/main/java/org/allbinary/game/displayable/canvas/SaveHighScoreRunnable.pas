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
unit SaveHighScoreRunnable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, HighScoreTextBox, ProgressCanvas;

type
  {AB:TYPES}
  TSaveHighScoreRunnable = class(TInterfacedObject, IRunnable)
  public
    progressCanvas: TProgressCanvas;
    isLast: Boolean;
    textBox: THighScoreTextBox;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(isLast: Boolean; textBox: THighScoreTextBox);
        procedure run; virtual;
  end;

implementation
uses
  ProgressCanvasFactory, LogUtil, CommonStrings;


{AB:CODE}

procedure TSaveHighScoreRunnable.InitFields;
begin
  Self.progressCanvas := TProgressCanvasFactory.getInstance();
  
  
end;

function TSaveHighScoreRunnable.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TSaveHighScoreRunnable.Create(isLast: Boolean; textBox: THighScoreTextBox);
begin
    inherited Create;
    InitFields;
        Self.isLast := isLast;
        Self.textBox := textBox;
end;
    

procedure TSaveHighScoreRunnable.run;
var
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
begin
        logUtil_ := TLogUtil.getInstance();
        try
            if Self.isLast then begin
                Self.textBox.submit();
            end else begin
                Self.textBox.saveHighScore();
            end;
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            logUtil_.put(commonStrings_.EXCEPTION, TJava.Box(Self), 'run', TJava.Box(e));
            Self.progressCanvas.end_();
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

