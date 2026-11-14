// Generated Code Do Not Modify
// package javax.microedition.lcdui
unit NullCanvas;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Command, CommandListener, Graphics, Canvas;

type
  {AB:TYPES}
  TNullCanvas = class(TCanvas)
  public
    class var NULL_CANVAS: TNullCanvas;
        constructor Create;
        procedure setFullScreenMode(mode: Boolean); override;
        procedure sizeChanged(w: Integer; h: Integer); override;
        function getCommandStack: TJavaStack<TObject>; virtual;
        function isCommand(command_: TCommand): Boolean; virtual;
        procedure addCommand(command_: TCommand); override;
        procedure removeCommand(command_: TCommand); override;
        procedure removeAllCommands; virtual;
        procedure setCommandListener(l: ICommandListener); override;
        function getCustomCommandListener: ICommandListener; virtual;
        function isPaused: Boolean; virtual;
        procedure removePauseCommand; virtual;
        procedure pause; virtual;
        procedure unPause; virtual;
        procedure process; virtual;
        procedure paint(graphics_: TGraphics); override;
        procedure destroy; virtual;
        procedure setPaused(isPaused: Boolean); virtual;
        procedure pointerDragged(x: Integer; y: Integer); override;
        procedure pointerPressed(x: Integer; y: Integer); override;
        procedure pointerReleased(x: Integer; y: Integer); override;
  end;

implementation

{AB:CODE}
    

constructor TNullCanvas.Create;
begin
    inherited Create;
end;
    

procedure TNullCanvas.setFullScreenMode(mode: Boolean);
begin
end;
    

procedure TNullCanvas.sizeChanged(w: Integer; h: Integer);
begin
end;
    

function TNullCanvas.getCommandStack: TJavaStack<TObject>;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TNullCanvas.isCommand(command_: TCommand): Boolean;
begin
        raise SysUtils.Exception.Create('');
end;
    

procedure TNullCanvas.addCommand(command_: TCommand);
begin
end;
    

procedure TNullCanvas.removeCommand(command_: TCommand);
begin
end;
    

procedure TNullCanvas.removeAllCommands;
begin
end;
    

procedure TNullCanvas.setCommandListener(l: ICommandListener);
begin
end;
    

function TNullCanvas.getCustomCommandListener: ICommandListener;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TNullCanvas.isPaused: Boolean;
begin
        raise SysUtils.Exception.Create('');
end;
    

procedure TNullCanvas.removePauseCommand;
begin
end;
    

procedure TNullCanvas.pause;
begin
end;
    

procedure TNullCanvas.unPause;
begin
end;
    

// throws Exception
procedure TNullCanvas.process;
begin
end;
    

procedure TNullCanvas.paint(graphics_: TGraphics);
begin
end;
    

procedure TNullCanvas.destroy;
begin
end;
    

procedure TNullCanvas.setPaused(isPaused: Boolean);
begin
        raise SysUtils.Exception.Create('');
end;
    

procedure TNullCanvas.pointerDragged(x: Integer; y: Integer);
begin
end;
    

procedure TNullCanvas.pointerPressed(x: Integer; y: Integer);
begin
end;
    

procedure TNullCanvas.pointerReleased(x: Integer; y: Integer);
begin
end;

initialization
  {AB:INITIALIZATION}
  TNullCanvas.NULL_CANVAS := TNullCanvas.Create();
  {AB:END}

end.

