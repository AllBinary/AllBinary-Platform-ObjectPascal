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
// package org.allbinary.game
unit GameStrings;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TGameStrings = class(TObject)
  public
    PROCESS_TICK: string;
    ON_GAME_INITIALIZED: string;
    UPDATESURFACE: string;
    ON_SET_DISPLAYABLE: string;
    UNPAUSE: string;
    TOGGLE_MENU: string;
    SET_GAME_OVER: string;
    GAME_STATE: string;
    SET_GAME_STATE: string;
    STOP_GAME_CANVAS_RUNNABLE_INTERFACE: string;
    class var instance: TGameStrings;
    procedure InitFields;
    constructor Create;
        class function getInstance: TGameStrings; static;
  end;

implementation

{AB:CODE}

procedure TGameStrings.InitFields;
begin
  Self.PROCESS_TICK := 'processTick';
  Self.ON_GAME_INITIALIZED := 'onGameInitialized';
  Self.UPDATESURFACE := 'updateSurface';
  Self.ON_SET_DISPLAYABLE := 'onSetDisplayable';
  Self.UNPAUSE := 'unPause';
  Self.TOGGLE_MENU := 'toggleMenu';
  Self.SET_GAME_OVER := 'setGameOver';
  Self.GAME_STATE := 'Game State: ';
  Self.SET_GAME_STATE := 'setGameState';
  Self.STOP_GAME_CANVAS_RUNNABLE_INTERFACE := 'stopGameCanvasRunnableInterface';
end;

constructor TGameStrings.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TGameStrings.getInstance: TGameStrings;
begin
        Exit(TGameStrings.instance);
end;

initialization
  {AB:INITIALIZATION}
  TGameStrings.instance := TGameStrings.Create();
  {AB:END}

end.

