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
unit GameCanvasRunnableInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommandListener, ItemStateListener, GameStateCompositeInterface, PaintableInterface, RunnableInterface, ABHashtable, Graphics, Item, GameState;

type
  {AB:TYPES}
  IGameCanvasRunnableInterface = interface(IRunnableInterface) ['IGameCanvasRunnableInterface']
        function getTitle: string;
        function isInitialized: Boolean;
        function isPaused: Boolean;
        procedure unPause;
        procedure pause;
        function isHighScoreSubmitted: Boolean;
        procedure setHighScoreSubmitted(highScoreSubmitted: Boolean);
        procedure processGameOver;
        function isGameOver: Boolean;
        procedure initCommands(cmdListener: ICommandListener);
        function getCurrentStateHashtable: TABHashtable<TObject, TObject>;
        function getLoadStateHashtable: TABHashtable<TObject, TObject>;
        procedure setLoadStateHashtable(hashtable: TABHashtable<TObject, TObject>);
        function getType: Integer;
        procedure paint(graphics_: TGraphics); overload;
        procedure paintThreed(graphics_: TGraphics); overload;
        procedure itemStateChanged(item_: TItem); overload;
        function getGameState: TGameState; overload;
        procedure setGameState(gameState_: TGameState); overload;
  end;
  TGameCanvasRunnableInterface = IGameCanvasRunnableInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

