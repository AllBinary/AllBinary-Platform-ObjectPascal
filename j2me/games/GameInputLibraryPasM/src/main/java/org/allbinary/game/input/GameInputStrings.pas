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
// package org.allbinary.game.input
unit GameInputStrings;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TGameInputStrings = class(TObject)
  public
    PROCESS_INPUT: string;
    KEY_PRESSED: string;
    KEY_RELEASED: string;
    KEY_REPEATED: string;
    ON_PRESS_GAME_KEY: string;
    ON_DOWN_GAME_KEY: string;
    ON_UP_GAME_KEY: string;
    NO_KEY: string;
    ADD_KEY_EVENT: string;
    REMOVE_KEY_EVENT: string;
    STRAFE_LEFT: string;
    STRAFE_RIGHT: string;
    PROCESS_MOTION_INPUT: string;
    UDPATE_CURRENT_TOUCH_INPUT_FACTORY: string;
    ENABLE_PLAYER_GAME_INPUTS: string;
    ENABLE_PLAYER_GAME_INPUT: string;
    class var instance: TGameInputStrings;
    procedure InitFields;
    constructor Create;
        class function getInstance: TGameInputStrings; static;
  end;

implementation

{AB:CODE}

procedure TGameInputStrings.InitFields;
begin
  Self.PROCESS_INPUT := 'processInput';
  Self.KEY_PRESSED := 'keyPressed';
  Self.KEY_RELEASED := 'keyReleased';
  Self.KEY_REPEATED := 'keyRepeated';
  Self.ON_PRESS_GAME_KEY := 'onPressGameKeyEvent';
  Self.ON_DOWN_GAME_KEY := 'onDownGameKeyEvent';
  Self.ON_UP_GAME_KEY := 'onUpGameKeyEvent';
  Self.NO_KEY := 'Key Code Not Mapped For Game: ';
  Self.ADD_KEY_EVENT := 'addGameKeyEvent';
  Self.REMOVE_KEY_EVENT := 'removeGameKeyEvent';
  Self.STRAFE_LEFT := 'strafeLeft';
  Self.STRAFE_RIGHT := 'strafeRight';
  Self.PROCESS_MOTION_INPUT := 'processMotionInput';
  Self.UDPATE_CURRENT_TOUCH_INPUT_FACTORY := 'updateCurrentTouchInputFactory';
  Self.ENABLE_PLAYER_GAME_INPUTS := 'Enabling PlayerGameInputs: ';
  Self.ENABLE_PLAYER_GAME_INPUT := 'Enabling PlayerGameInput: ';
end;

constructor TGameInputStrings.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TGameInputStrings.getInstance: TGameInputStrings;
begin
        Exit(TGameInputStrings.instance);
end;

initialization
  {AB:INITIALIZATION}
  TGameInputStrings.instance := TGameInputStrings.Create();
  {AB:END}

end.

