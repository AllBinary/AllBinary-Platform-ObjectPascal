{
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
unit NullGameCanvasRunnable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommandListener, Graphics, Item, GameState, GameStateFactory, ABHashtable, GameCanvasRunnableInterface, GameStateCompositeInterface, ItemStateListener, PaintableInterface, RunnableInterface;

type
  {AB:TYPES}
  TNullGameCanvasRunnable = class(TInterfacedObject, IGameCanvasRunnableInterface, IGameStateCompositeInterface, IItemStateListener, IPaintableInterface, IRunnable, IRunnableInterface)
  public
    gameStateFactory: TGameStateFactory;
    class var NULL_GAME_CANVAS_RUNNABLE: TNullGameCanvasRunnable;
    procedure InitFields;
    function JavaObject: TObject;
    constructor Create;
        function getTitle: string; virtual;
        function isInitialized: Boolean; virtual;
        function isPaused: Boolean; virtual;
        procedure unPause; virtual;
        procedure pause; virtual;
        function isHighScoreSubmitted: Boolean; virtual;
        procedure setHighScoreSubmitted(highScoreSubmitted: Boolean); virtual;
        procedure processGameOver; virtual;
        function isGameOver: Boolean; virtual;
        procedure initCommands(cmdListener: ICommandListener); virtual;
        function getCurrentStateHashtable: TABHashtable<TObject, TObject>; virtual;
        function getLoadStateHashtable: TABHashtable<TObject, TObject>; virtual;
        procedure setLoadStateHashtable(hashtable: TABHashtable<TObject, TObject>); virtual;
        function getType: Integer; virtual;
        procedure setGameState(gameState_: TGameState); virtual;
        function getGameState: TGameState; virtual;
        procedure itemStateChanged(item_: TItem); virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure paintThreed(graphics_: TGraphics); virtual;
        function isRunning: Boolean; virtual;
        procedure setRunning(isRunning: Boolean); virtual;
        procedure setThread(thread: TThread); virtual;
        procedure run; virtual;
  end;

implementation
uses
  StdUtil, StringUtil;


{AB:CODE}

procedure TNullGameCanvasRunnable.InitFields;
begin
  Self.gameStateFactory := TGameStateFactory.getInstance();
end;

function TNullGameCanvasRunnable.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TNullGameCanvasRunnable.Create;
begin
  inherited Create;
  InitFields;
end;
    

function TNullGameCanvasRunnable.getTitle: string;
begin
        Exit(TStringUtil.getInstance().EMPTY_STRING);
end;
    

function TNullGameCanvasRunnable.isInitialized: Boolean;
begin
        Exit(False);
end;
    

function TNullGameCanvasRunnable.isPaused: Boolean;
begin
        Exit(False);
end;
    

procedure TNullGameCanvasRunnable.unPause;
begin
end;
    

procedure TNullGameCanvasRunnable.pause;
begin
end;
    

function TNullGameCanvasRunnable.isHighScoreSubmitted: Boolean;
begin
        Exit(False);
end;
    

// throws Exception
procedure TNullGameCanvasRunnable.setHighScoreSubmitted(highScoreSubmitted: Boolean);
begin
end;
    

// throws Exception
procedure TNullGameCanvasRunnable.processGameOver;
begin
end;
    

function TNullGameCanvasRunnable.isGameOver: Boolean;
begin
        Exit(False);
end;
    

procedure TNullGameCanvasRunnable.initCommands(cmdListener: ICommandListener);
begin
end;
    

// throws Exception
function TNullGameCanvasRunnable.getCurrentStateHashtable: TABHashtable<TObject, TObject>;
begin
        Exit(TStdUtil.getInstance().NULL_TABLE);
end;
    

// throws Exception
function TNullGameCanvasRunnable.getLoadStateHashtable: TABHashtable<TObject, TObject>;
begin
        Exit(TStdUtil.getInstance().NULL_TABLE);
end;
    

// throws Exception
procedure TNullGameCanvasRunnable.setLoadStateHashtable(hashtable: TABHashtable<TObject, TObject>);
begin
end;
    

function TNullGameCanvasRunnable.getType: Integer;
begin
        Exit(-1);
end;
    

// throws Exception
procedure TNullGameCanvasRunnable.setGameState(gameState_: TGameState);
begin
end;
    

function TNullGameCanvasRunnable.getGameState: TGameState;
begin
        Exit(Self.gameStateFactory.NO_GAME_STATE);
end;
    

procedure TNullGameCanvasRunnable.itemStateChanged(item_: TItem);
begin
end;
    

procedure TNullGameCanvasRunnable.paint(graphics_: TGraphics);
begin
end;
    

procedure TNullGameCanvasRunnable.paintThreed(graphics_: TGraphics);
begin
end;
    

function TNullGameCanvasRunnable.isRunning: Boolean;
begin
        Exit(False);
end;
    

procedure TNullGameCanvasRunnable.setRunning(isRunning: Boolean);
begin
end;
    

// throws Exception
procedure TNullGameCanvasRunnable.setThread(thread: TThread);
begin
end;
    

procedure TNullGameCanvasRunnable.run;
begin
end;

initialization
  {AB:INITIALIZATION}
  TNullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE := TNullGameCanvasRunnable.Create();
  {AB:END}

end.

