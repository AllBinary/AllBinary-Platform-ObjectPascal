{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
unit BaseGameBehavior;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbeClientInformationInterface, DemoGameBehavior, AllBinaryGameCanvas;

type
  {AB:TYPES}
  TBaseGameBehavior = class(TDemoGameBehavior)
  public
    class var instanceC: TBaseGameBehavior;
    constructor Create;
        class function getInstance: TDemoGameBehavior; static;
        procedure init; override;
        procedure pause(allBinaryGameCanvas_: TAllBinaryGameCanvas); override;
        procedure unPause(allBinaryGameCanvas_: TAllBinaryGameCanvas); override;
        procedure updateTouch(allBinaryGameCanvas_: TAllBinaryGameCanvas); override;
        procedure updateScreenButtonPaintable(allBinaryGameCanvas_: TAllBinaryGameCanvas); override;
        procedure setGameState(allBinaryGameCanvas_: TAllBinaryGameCanvas); override;
        procedure removeAllGameKeyInputListeners(allBinaryGameCanvas_: TAllBinaryGameCanvas); override;
        procedure updateEndGameProcessor(allBinaryGameCanvas_: TAllBinaryGameCanvas); override;
        procedure buildGame(allBinaryGameCanvas_: TAllBinaryGameCanvas); override;
        procedure run(allBinaryGameCanvas_: TAllBinaryGameCanvas); override;
        procedure setHighScore(abeClientInformation: IAbeClientInformationInterface; allBinaryGameCanvas_: TAllBinaryGameCanvas; name: string; score: Int64; autoSubmit: Boolean; isLast: Boolean); override;
  end;

implementation
uses
  GameAdStateFactory, GameAdState, Features, CurrentDisplayableFactory, OpenGLFeatureFactory;


{AB:CODE}

constructor TBaseGameBehavior.Create;
begin
  inherited Create;
end;
    

class function TBaseGameBehavior.getInstance: TDemoGameBehavior;
begin
        Exit(TBaseGameBehavior.instanceC);
end;
    

// throws Exception
procedure TBaseGameBehavior.init;
var
  gameAdState_: TGameAdState;
begin
        gameAdState_ := TGameAdStateFactory.getInstance().getCurrentInstance();
        gameAdState_.playingAdState();
end;
    

procedure TBaseGameBehavior.pause(allBinaryGameCanvas_: TAllBinaryGameCanvas);
var
  features_: TFeatures;
  currentDisplayableFactory_: TCurrentDisplayableFactory;
begin
        features_ := TFeatures.getInstance();
        if features_.isDefault(TOpenGLFeatureFactory.getInstance().OPENGL_AS_GAME_THREAD) then begin
            currentDisplayableFactory_ := TCurrentDisplayableFactory.getInstance();
            currentDisplayableFactory_.setRunnable(allBinaryGameCanvas_.gamePauseRunnable);
        end;
end;
    

procedure TBaseGameBehavior.unPause(allBinaryGameCanvas_: TAllBinaryGameCanvas);
var
  currentDisplayableFactory_: TCurrentDisplayableFactory;
begin
        if TFeatures.getInstance().isDefault(TOpenGLFeatureFactory.getInstance().OPENGL_AS_GAME_THREAD) then begin
            currentDisplayableFactory_ := TCurrentDisplayableFactory.getInstance();
            currentDisplayableFactory_.setRunnable(allBinaryGameCanvas_.gameRunnable);
            currentDisplayableFactory_.setDisplayable(allBinaryGameCanvas_);
        end;
end;
    

// throws Exception
procedure TBaseGameBehavior.updateTouch(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
        allBinaryGameCanvas_.updateTouch2();
end;
    

// throws Exception
procedure TBaseGameBehavior.updateScreenButtonPaintable(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
        allBinaryGameCanvas_.updateScreenButtonPaintable2();
end;
    

// throws Exception
procedure TBaseGameBehavior.setGameState(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
        allBinaryGameCanvas_.updateGameState();
end;
    

procedure TBaseGameBehavior.removeAllGameKeyInputListeners(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
        allBinaryGameCanvas_.removeAllGameKeyInputListeners2();
end;
    

// throws Exception
procedure TBaseGameBehavior.updateEndGameProcessor(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
        allBinaryGameCanvas_.updateEndGameProcessor2();
end;
    

// throws Exception
procedure TBaseGameBehavior.buildGame(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
        allBinaryGameCanvas_.buildGame2();
end;
    

// throws Exception
procedure TBaseGameBehavior.run(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
        allBinaryGameCanvas_.run2();
end;
    

// throws Exception
procedure TBaseGameBehavior.setHighScore(abeClientInformation: IAbeClientInformationInterface; allBinaryGameCanvas_: TAllBinaryGameCanvas; name: string; score: Int64; autoSubmit: Boolean; isLast: Boolean);
begin
        allBinaryGameCanvas_.setHighScore2(abeClientInformation, name, score, autoSubmit, isLast);
end;

initialization
  {AB:INITIALIZATION}
  TBaseGameBehavior.instanceC := TBaseGameBehavior.Create();
  {AB:END}

end.

