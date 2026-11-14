{
 
  AllBinary Open License Version 1 
  Copyright (c) 2002 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.graphics.displayable.screen
unit CommandForm;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Command, CommandListener, Form, Processor, MenuListener, BasicColor, MyCommandInterface, LogUtil, CommonStrings, ABStack, GameKeyEventSourceInterface;

type
  {AB:TYPES}
  TCommandForm = class(TForm, IMyCommandInterface, IMenuListener, IGameKeyEventSourceInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    repaintProcessor: TProcessor;
    commandStack: TABStack<TObject>;
    class var NULL_COMMAND_FORM: TObject;
    procedure InitFields;
    function JavaObject: TObject;
        class function getNullCommandForm: TCommandForm; static;
        constructor Create(commandListener_: ICommandListener; formTitle: string; backgrounBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
        procedure initCommands(cmdListener: ICommandListener); virtual;
        procedure open; virtual;
        procedure close; virtual;
        procedure update; virtual;
        function getSourceId: Integer; virtual;
        procedure addCommand(command_: TCommand); virtual;
        procedure removeAllCommands; virtual;
  end;

implementation
uses
  ScreenRepaintProcessorFactory, NullCommandListener, BasicColorFactory, NullUtil, StringUtil, StdUtil;


{AB:CODE}

procedure TCommandForm.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.repaintProcessor := TScreenRepaintProcessorFactory.getInstance().create_(Self);
  
end;

function TCommandForm.JavaObject: TObject;
begin
  Result := Self;
end;
    

class function TCommandForm.getNullCommandForm: TCommandForm;
begin
        if (TCommandForm.NULL_COMMAND_FORM) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TCommandForm.NULL_COMMAND_FORM := TCommandForm.Create(TNullCommandListener.NULL_COMMAND_LISTENER, TStringUtil.getInstance().EMPTY_STRING, TBasicColorFactory.getInstance().BLACK, TBasicColorFactory.getInstance().WHITE);
        end;
        Exit(TCommandForm(TJava.ToObject(TCommandForm.NULL_COMMAND_FORM)));
end;
    

constructor TCommandForm.Create(commandListener_: ICommandListener; formTitle: string; backgrounBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
begin
        inherited Create(formTitle);
        InitFields;
        Self.commandStack := TStdUtil.getInstance().createStack();
        try
            Self.repaintProcessor.process();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, Self, Self.commonStrings.CONSTRUCTOR_, e);
            end;
        end;
end;
    

procedure TCommandForm.initCommands(cmdListener: ICommandListener);
begin
end;
    

procedure TCommandForm.open;
begin
        Self.logUtil.putF(Self.commonStrings.START, Self, 'open');
end;
    

// throws Exception
procedure TCommandForm.close;
begin
        Self.logUtil.putF(Self.commonStrings.START, Self, Self.commonStrings.CLOSE);
end;
    

// throws Exception
procedure TCommandForm.update;
begin
        Self.repaintProcessor.process();
end;
    

function TCommandForm.getSourceId: Integer;
begin
        Exit(0);
end;
    

procedure TCommandForm.addCommand(command_: TCommand);
begin
        Self.commandStack.push(command_);
        inherited addCommand(command_);
end;
    

procedure TCommandForm.removeAllCommands;
var
  size: Integer;
  index: Integer;
begin
        size := Self.commandStack.size();
        for index := 0 to size - 1 do begin
            inherited removeCommand(TCommand(TJava.ToObject(Self.commandStack.pop())));
        end;
end;

initialization
  {AB:INITIALIZATION}
  TCommandForm.NULL_COMMAND_FORM := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

