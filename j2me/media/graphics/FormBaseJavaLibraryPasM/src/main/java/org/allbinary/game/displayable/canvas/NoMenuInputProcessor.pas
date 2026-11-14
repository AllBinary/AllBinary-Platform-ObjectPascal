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
unit NoMenuInputProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameKeyEvent, MotionGestureEvent, BasicMenuInputProcessor;

type
  {AB:TYPES}
  TNoMenuInputProcessor = class(TBasicMenuInputProcessor)
  public
    class var SINGLETON: TNoMenuInputProcessor;
        class function getInstance: TNoMenuInputProcessor; static;
        constructor Create;
        procedure onDownGameKeyEvent(gameKeyEvent_: TGameKeyEvent); override;
        procedure onUpGameKeyEvent(gameKeyEvent_: TGameKeyEvent); override;
        procedure onMotionGestureEvent(motionGestureEvent_: TMotionGestureEvent); override;
  end;

implementation
uses
  NullCanvas, BasicArrayListUtil;


{AB:CODE}
    

class function TNoMenuInputProcessor.getInstance: TNoMenuInputProcessor;
begin
        Exit(TNoMenuInputProcessor.SINGLETON);
end;
    

constructor TNoMenuInputProcessor.Create;
begin
        inherited Create(TBasicArrayListUtil.getInstance().getImmutableInstance(), -1, TNullCanvas.NULL_CANVAS);
end;
    

procedure TNoMenuInputProcessor.onDownGameKeyEvent(gameKeyEvent_: TGameKeyEvent);
begin
    TJava.MonitorEnter(Self);
    try
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TNoMenuInputProcessor.onUpGameKeyEvent(gameKeyEvent_: TGameKeyEvent);
begin
    TJava.MonitorEnter(Self);
    try
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TNoMenuInputProcessor.onMotionGestureEvent(motionGestureEvent_: TMotionGestureEvent);
begin
end;

initialization
  {AB:INITIALIZATION}
  TNoMenuInputProcessor.SINGLETON := TNoMenuInputProcessor.Create();
  {AB:END}

end.

