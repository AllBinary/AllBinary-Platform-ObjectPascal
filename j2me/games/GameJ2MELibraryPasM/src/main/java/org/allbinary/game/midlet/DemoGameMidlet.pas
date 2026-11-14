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
// package org.allbinary.game.midlet
unit DemoGameMidlet;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameCanvasRunnableInterface, AllBinaryGameLayerManager, ClientInformationFactory, GameMidlet;

type
  {AB:TYPES}
  TDemoGameMidlet = class(TGameMidlet)
  public
        constructor Create(clientInformationFactory_: TClientInformationFactory);
        function isContinue: Boolean; virtual;
        function getHighestLevel: Integer; virtual;
        function createDemoGameCanvasRunnableInterface: IGameCanvasRunnableInterface; virtual;
        function createGameCanvasRunnable(allBinaryGameLayerManager_: TAllBinaryGameLayerManager): IGameCanvasRunnableInterface; virtual;
        function createGameCanvasRunnableInterface: IGameCanvasRunnableInterface; virtual;
        procedure demoSetup; virtual;
        procedure postDemoSetup; virtual;
        procedure setDemo; override;
        procedure createGame; override;
        function isReady: Boolean; virtual;
  end;

implementation
uses
  DemoRunnable, CreateGameRunnable, ProgressCanvas, ProgressCanvasFactory, StdUtil, PrimaryThreadPool, NullGameCanvasRunnable, ABHashtable;


{AB:CODE}
    

constructor TDemoGameMidlet.Create(clientInformationFactory_: TClientInformationFactory);
begin
        inherited Create(clientInformationFactory_);
end;
    

// throws Exception
function TDemoGameMidlet.isContinue: Boolean;
var
  hashtable: TABHashtable<TObject, TObject>;
begin
        hashtable := Self.getStartStateHashtable();
        if ((hashtable) <> (nil)) and ((hashtable.size()) > (0)) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TDemoGameMidlet.getHighestLevel: Integer;
begin
        Exit(1);
end;
    

// throws Exception
function TDemoGameMidlet.createDemoGameCanvasRunnableInterface: IGameCanvasRunnableInterface;
begin
        Self.logUtil.putF(Self.commonStrings.NOT_IMPLEMENTED, TJava.Box(Self), Self.commonStrings.CREATE_);
        Exit(TNullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE);
end;
    

// throws Exception
function TDemoGameMidlet.createGameCanvasRunnable(allBinaryGameLayerManager_: TAllBinaryGameLayerManager): IGameCanvasRunnableInterface;
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

// throws Exception
function TDemoGameMidlet.createGameCanvasRunnableInterface: IGameCanvasRunnableInterface;
begin
        Exit(Self.createGameCanvasRunnable(Self.createGameLayerManager()));
end;
    

procedure TDemoGameMidlet.demoSetup;
begin
end;
    

procedure TDemoGameMidlet.postDemoSetup;
begin
end;
    

// throws Exception
procedure TDemoGameMidlet.setDemo;
var
  progressCanvas_: TProgressCanvas;
begin
    TJava.MonitorEnter(Self);
    try
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'setDemo');
        progressCanvas_ := TProgressCanvasFactory.getInstance();
        progressCanvas_.start();
        TPrimaryThreadPool.getInstance().runTask(TDemoRunnable.Create(Self));
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
procedure TDemoGameMidlet.createGame;
var
  CREATE_GAME: string;
  progressCanvas_: TProgressCanvas;
  hashtable: TABHashtable<TObject, TObject>;
begin
    TJava.MonitorEnter(Self);
    try
        CREATE_GAME := 'createGame';
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), CREATE_GAME);
        progressCanvas_ := TProgressCanvasFactory.getInstance();
        progressCanvas_.start();
        hashtable := Self.getStartStateHashtable();
        Self.setStartStateHashtable(TStdUtil.getInstance().NULL_TABLE);
        TPrimaryThreadPool.getInstance().runTask(TCreateGameRunnable.Create(Self, hashtable));
        Self.logUtil.putF(Self.commonStrings.END_, TJava.Box(Self), CREATE_GAME);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TDemoGameMidlet.isReady: Boolean;
begin
        Exit(True);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

