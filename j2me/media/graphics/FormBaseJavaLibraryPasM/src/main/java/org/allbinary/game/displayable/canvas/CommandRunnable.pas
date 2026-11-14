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
unit CommandRunnable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Command, LogUtil, CommonStrings, CommandFormInputProcessor;

type
  {AB:TYPES}
  TCommandRunnable = class(TInterfacedObject, IRunnable)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    commandFormInputProcessor: TCommandFormInputProcessor;
    command: TCommand;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(commandFormInputProcessor_: TCommandFormInputProcessor; command_: TCommand);
        procedure run; virtual;
  end;

implementation
uses
  CommandListener, MyCanvas;


{AB:CODE}

procedure TCommandRunnable.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
end;

function TCommandRunnable.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCommandRunnable.Create(commandFormInputProcessor_: TCommandFormInputProcessor; command_: TCommand);
begin
    inherited Create;
    InitFields;
        Self.commandFormInputProcessor := commandFormInputProcessor_;
        Self.command := command_;
end;
    

procedure TCommandRunnable.run;
var
  canvas: TMyCanvas;
  commandListener_: ICommandListener;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START_RUNNABLE, TJava.Box(Self), Self.commonStrings.RUN);
            canvas := Self.commandFormInputProcessor.getCanvas();
            commandListener_ := canvas.getCustomCommandListener();
            commandListener_.commandAction(Self.command, canvas);
            Self.logUtil.putF(Self.commonStrings.END_RUNNABLE, TJava.Box(Self), Self.commonStrings.RUN);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.RUN, TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

