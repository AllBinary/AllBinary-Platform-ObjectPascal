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
unit NullGameCanvas;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommandListener, Graphics, AllBinaryGameLayerManager, AllBinaryGameCanvas;

type
  {AB:TYPES}
  TNullGameCanvas = class(TAllBinaryGameCanvas)
  public
    runningNull: Boolean;
    class var instance: TObject;
    class var NO_GAME: string;
    class var TYPE_: Integer;
    procedure InitFields;
        class function createNull: TNullGameCanvas; static;
        class function getInstance: TNullGameCanvas; static;
        class function createCanvas(gameLayerManager: TAllBinaryGameLayerManager): TNullGameCanvas; static;
        constructor Create(gameLayerManager: TAllBinaryGameLayerManager);
        function isGameOver: Boolean; override;
        procedure setRunning(running: Boolean); override;
        function isRunning: Boolean; override;
        procedure pause; override;
        procedure unPause; override;
        procedure initCommands(cmdListener: ICommandListener); override;
        procedure buildGameInit(isProgress: Boolean); override;
        procedure draw(graphics_: TGraphics); override;
        procedure run; override;
        function getType: Integer; override;
  end;

implementation
uses
  NullCommandListener, BasicBuildGameInitializerFactory, NoHighScoresFactory, NullUtil, LogUtil, CommonStrings;


{AB:CODE}

procedure TNullGameCanvas.InitFields;
begin
  Self.runningNull := True;
end;
    

class function TNullGameCanvas.createNull: TNullGameCanvas;
begin
        try
            Exit(TNullGameCanvas.Create(TAllBinaryGameLayerManager.getNullInstance()));
        except
            on e: SysUtils.Exception do begin
            TLogUtil.getInstance().put(TCommonStrings.getInstance().EXCEPTION, TJava.Box('NullGameCanvas'), TCommonStrings.getInstance().GET_INSTANCE, TJava.Box(e));
            raise SysUtils.Exception.Create('');
            end;
        end;
end;
    

class function TNullGameCanvas.getInstance: TNullGameCanvas;
begin
        if (TNullGameCanvas.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TNullGameCanvas.instance := TNullGameCanvas.createNull();
        end;
        Exit(TNullGameCanvas(TJava.ToObject(TNullGameCanvas.instance)));
end;
    

// throws Exception
class function TNullGameCanvas.createCanvas(gameLayerManager: TAllBinaryGameLayerManager): TNullGameCanvas;
var
  nullGameCanvas_: TNullGameCanvas;
begin
        nullGameCanvas_ := TNullGameCanvas.Create(gameLayerManager);
        nullGameCanvas_.setInitialized(True);
        nullGameCanvas_.setTitle(TNullGameCanvas.NO_GAME);
        Exit(nullGameCanvas_);
end;
    

constructor TNullGameCanvas.Create(gameLayerManager: TAllBinaryGameLayerManager);
begin
        inherited Create(TNullCommandListener.NULL_COMMAND_LISTENER, gameLayerManager, TNoHighScoresFactory.getInstance(), TBasicBuildGameInitializerFactory.NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY, False);
        InitFields;
        inherited setWait(1200);
end;
    

function TNullGameCanvas.isGameOver: Boolean;
begin
    TJava.MonitorEnter(Self);
    try
        Exit(False);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TNullGameCanvas.setRunning(running: Boolean);
begin
        Self.runningNull := running;
end;
    

function TNullGameCanvas.isRunning: Boolean;
begin
    TJava.MonitorEnter(Self);
    try
        Exit(Self.runningNull);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TNullGameCanvas.pause;
begin
    TJava.MonitorEnter(Self);
    try
        Self.setPaused(True);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TNullGameCanvas.unPause;
begin
    TJava.MonitorEnter(Self);
    try
        Self.setPaused(False);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TNullGameCanvas.initCommands(cmdListener: ICommandListener);
begin
        Self.removeAllCommands();
        Self.setCommandListener(cmdListener);
end;
    

// throws Exception
procedure TNullGameCanvas.buildGameInit(isProgress: Boolean);
begin
end;
    

procedure TNullGameCanvas.draw(graphics_: TGraphics);
begin
end;
    

procedure TNullGameCanvas.run;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START_RUNNABLE, TJava.Box(Self), Self.commonStrings.RUN);
            Self.logUtil.putF(Self.commonStrings.END_RUNNABLE, TJava.Box(Self), Self.commonStrings.RUN);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.RUN, TJava.Box(e));
            end;
        end;
end;
    

function TNullGameCanvas.getType: Integer;
begin
        Exit(TNullGameCanvas.TYPE_);
end;

initialization
  {AB:INITIALIZATION}
  TNullGameCanvas.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  TNullGameCanvas.NO_GAME := 'No Background Game';
  TNullGameCanvas.TYPE_ := 1;
  {AB:END}

end.

