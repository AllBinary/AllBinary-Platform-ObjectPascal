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
// package org.allbinary.game.ag.ai.scroller
unit HorizontalScreenPatrolAI;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicAI, GameInput, DisplayInfoSingleton, AllBinaryLayer, AllBinaryLayerManager, PlayerQueue, Sound, TimeDelayHelper, ABHashtable;

type
  {AB:TYPES}
  THorizontalScreenPatrolAI = class(TBasicAI)
  public
    keyDirection: Integer;
    displayInfoSingleton: TDisplayInfoSingleton;
    firingX: Integer;
    firedIndex: Integer;
    MAX_FIRE: Integer;
    timeDelayHelper: TTimeDelayHelper;
    secondaryPlayerQueue: TPlayerQueue;
    sound: TSound;
    class var SOUND_: Integer;
    procedure InitFields;
        constructor Create(hashtable: TABHashtable<TObject, TObject>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
        procedure processAI(allBinaryLayerManager_: TAllBinaryLayerManager); override;
        procedure nextDirection; virtual;
  end;

implementation
uses
  Canvas, AllBinaryGameLayerManager, MyRandomFactory, SmallIntegerSingletonFactory, SecondaryPlayerQueueFactory;


{AB:CODE}

procedure THorizontalScreenPatrolAI.InitFields;
begin
  Self.keyDirection := TCanvas.LEFT;
  Self.displayInfoSingleton := TDisplayInfoSingleton.getInstance();
  Self.firingX := Self.displayInfoSingleton.getLastHalfWidth();
  Self.firedIndex := 0;
  Self.MAX_FIRE := 28;
  Self.timeDelayHelper := TTimeDelayHelper.Create(240);
  Self.secondaryPlayerQueue := TSecondaryPlayerQueueFactory.getInstance();
  
end;
    

constructor THorizontalScreenPatrolAI.Create(hashtable: TABHashtable<TObject, TObject>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
begin
        inherited Create(ownerLayerInterface, gameInput_);
        InitFields;
        Self.sound := TSound(TJava.ToObject(hashtable.get(TJava.Box(THorizontalScreenPatrolAI.SOUND_))));
        if (Self.sound) = (nil) then begin
            raise SysUtils.Exception.Create('No Sound Provided!!');
        end;
end;
    

// throws Exception
procedure THorizontalScreenPatrolAI.processAI(allBinaryLayerManager_: TAllBinaryLayerManager);
var
  layerInterface: TAllBinaryLayer;
  currentOwnerLayerX: Integer;
  y: Integer;
  gameLayerManager: TAllBinaryGameLayerManager;
  FIRE: Integer;
begin
        inherited processKeyAI(Self.keyDirection);
        if Self.timeDelayHelper.isTimeTNT() then begin
            layerInterface := Self.getOwnerLayerInterface();
            currentOwnerLayerX := layerInterface.getXP();
            if (currentOwnerLayerX) < (-layerInterface.getWidth()) then begin
                y := TMyRandomFactory.getInstance().getAbsoluteNextIntAllowZero(50);
                layerInterface.setPosition(((Self.displayInfoSingleton.getLastWidth()) + (layerInterface.getWidth())) + (50), y, layerInterface.getZP());
                Self.firedIndex := 0;
                Self.firingX := (Self.displayInfoSingleton.getLastHalfWidth()) + (TMyRandomFactory.getInstance().getNextInt(Self.displayInfoSingleton.getLastHalfWidth()));
                Self.secondaryPlayerQueue.add(Self.sound);
            end;
            if ((currentOwnerLayerX) < (Self.firingX)) and ((currentOwnerLayerX) > (-layerInterface.getWidth())) then begin
                inherited processKeyAI(TCanvas.KEY_NUM1);
                gameLayerManager := TAllBinaryGameLayerManager(TJava.ToObject(allBinaryLayerManager_));
                FIRE := TJava.SignedRightShift(((gameLayerManager.getGameInfo().getCurrentLevel()) + (12)), 2);
                if (FIRE) > (Self.MAX_FIRE) then begin
                    FIRE := Self.MAX_FIRE;
                end;
                if (Self.firedIndex) > (FIRE) then begin
                    Self.firedIndex := 0;
                    Self.firingX := Low(Integer);
                end;
                Inc(Self.firedIndex);
            end;
        end;
end;
    

procedure THorizontalScreenPatrolAI.nextDirection;
begin
end;

initialization
  {AB:INITIALIZATION}
  THorizontalScreenPatrolAI.SOUND_ := TSmallIntegerSingletonFactory.getInstance().getAt(433);
  {AB:END}

end.

