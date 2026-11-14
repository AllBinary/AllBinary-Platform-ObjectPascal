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
// package org.allbinary.graphics.displayable.screen
unit WebCommandProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Canvas, Command, CommandListener, LogUtil, BasicArrayList, AboutCommandProcessor;

type
  {AB:TYPES}
  TWebCommandProcessor = class(TObject)
  public
    logUtil: TLogUtil;
    aboutCommandProcessor: TAboutCommandProcessor;
    list: TBasicArrayList;
    class var instance: TWebCommandProcessor;
    procedure InitFields;
    constructor Create;
        class function getInstance: TWebCommandProcessor; static;
        procedure process(midletCommandListener: ICommandListener; command_: TCommand; canvas_: TCanvas); virtual;
  end;

implementation
uses
  CommonStrings, BasicArrayListD;


{AB:CODE}

procedure TWebCommandProcessor.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.aboutCommandProcessor := TAboutCommandProcessor.getInstance();
  Self.list := TBasicArrayListD.Create();
end;

constructor TWebCommandProcessor.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TWebCommandProcessor.getInstance: TWebCommandProcessor;
begin
        Exit(TWebCommandProcessor.instance);
end;
    

procedure TWebCommandProcessor.process(midletCommandListener: ICommandListener; command_: TCommand; canvas_: TCanvas);
var
  commonStrings_: TCommonStrings;
begin
        try
            if (TDesktop.isDesktopSupported()) and (TDesktop.getDesktop().isSupported(TDesktop.Action.BROWSE)) then begin
                TDesktop.getDesktop().browse(TURI.Create(TJava.UnboxString(TJava.ToObject(Self.list.removeAt(0)))));
            end;
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.PROCESS, TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TWebCommandProcessor.instance := TWebCommandProcessor.Create();
  {AB:END}

end.

