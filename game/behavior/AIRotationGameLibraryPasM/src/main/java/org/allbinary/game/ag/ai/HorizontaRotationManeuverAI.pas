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
// package org.allbinary.game.ag.ai
unit HorizontaRotationManeuverAI;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ArtificialIntelligenceTransitionInterface, IndexedAnimation, BasicAI, GameInput, BasicVelocityProperties, VelocityInterface, AllBinaryLayer, AllBinaryLayerManager, CircularIndexUtil;

type
  {AB:TYPES}
  THorizontaRotationManeuverAI = class(TBasicAI, IArtificialIntelligenceTransitionInterface)
  public
    circularIndexUtil: TCircularIndexUtil;
    currentSpeedDivisor: Integer;
    rotationAnimationInterface: TIndexedAnimation;
    baseVelocityInterface: TBasicVelocityProperties;
    velocityInterface: IVelocityInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
        procedure transition; virtual;
        procedure processAI(allBinaryLayerManager_: TAllBinaryLayerManager); virtual;
        procedure reverse; virtual;
        procedure accelerate;
        procedure drop;
        function getId: Integer; virtual;
  end;

implementation
uses
  Canvas, ArtificialIntelligence, RotationAnimationInterface, RotationAnimationInterfaceCompositeInterface, VelocityInterfaceCompositeInterface, DisplayInfoSingleton, AngleIncrementInfo;


{AB:CODE}

procedure THorizontaRotationManeuverAI.InitFields;
begin
  Self.circularIndexUtil := TCircularIndexUtil.createInstanceAt(10, High(Integer));
  Self.currentSpeedDivisor := 5;
  
  
  
end;

function THorizontaRotationManeuverAI.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor THorizontaRotationManeuverAI.Create(ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
var
  rotationAnimationInterfaceCompositeInterface_: IRotationAnimationInterfaceCompositeInterface;
  velocityInterfaceCompositeInterface_: IVelocityInterfaceCompositeInterface;
  rotationAnimationInterface_: IRotationAnimationInterface;
  angleIncrementInfo_: TAngleIncrementInfo;
begin
        inherited Create(ownerLayerInterface, gameInput_);
        InitFields;
        rotationAnimationInterfaceCompositeInterface_ := (TJava.ToObject(Self.getOwnerLayerInterface()) as IRotationAnimationInterfaceCompositeInterface);
        Self.rotationAnimationInterface := rotationAnimationInterfaceCompositeInterface_.getRotationAnimationInterface();
        velocityInterfaceCompositeInterface_ := (TJava.ToObject(Self.getOwnerLayerInterface()) as IVelocityInterfaceCompositeInterface);
        Self.baseVelocityInterface := velocityInterfaceCompositeInterface_.getVelocityProperties();
        Self.velocityInterface := (TJava.ToObject(Self.baseVelocityInterface) as IVelocityInterface);
        rotationAnimationInterface_ := (TJava.ToObject(Self.rotationAnimationInterface) as IRotationAnimationInterface);
        angleIncrementInfo_ := rotationAnimationInterface_.getAngleInfoP().getAngleIncrementInfo();
        rotationAnimationInterfaceCompositeInterface_.setFrame(angleIncrementInfo_.RIGHT_FRAME.intValue());
end;
    

procedure THorizontaRotationManeuverAI.transition;
var
  rotationAnimationInterface_: IRotationAnimationInterface;
  angleIncrementInfo_: TAngleIncrementInfo;
  rotationAnimationInterfaceCompositeInterface_: IRotationAnimationInterfaceCompositeInterface;
  allbinaryLayer_: TAllBinaryLayer;
begin
        rotationAnimationInterface_ := (TJava.ToObject(Self.rotationAnimationInterface) as IRotationAnimationInterface);
        angleIncrementInfo_ := rotationAnimationInterface_.getAngleInfoP().getAngleIncrementInfo();
        rotationAnimationInterfaceCompositeInterface_ := (TJava.ToObject(Self.getOwnerLayerInterface()) as IRotationAnimationInterfaceCompositeInterface);
        rotationAnimationInterfaceCompositeInterface_.setFrame(angleIncrementInfo_.RIGHT_FRAME.intValue());
        allbinaryLayer_ := Self.getOwnerLayerInterface();
        allbinaryLayer_.setPosition(allbinaryLayer_.getXP(), 1, allbinaryLayer_.getZP());
end;
    

// throws Exception
procedure THorizontaRotationManeuverAI.processAI(allBinaryLayerManager_: TAllBinaryLayerManager);
var
  rotationAnimationInterface_: IRotationAnimationInterface;
  angleIncrementInfo_: TAngleIncrementInfo;
  frame: Integer;
  ownerLayerInterface: TAllBinaryLayer;
  displayInfo: TDisplayInfoSingleton;
  index: Integer;
begin
        rotationAnimationInterface_ := ((TJava.ToObject(Self.rotationAnimationInterface) as IRotationAnimationInterface));
        angleIncrementInfo_ := rotationAnimationInterface_.getAngleInfoP().getAngleIncrementInfo();
        frame := Self.rotationAnimationInterface.getFrame();
        ownerLayerInterface := Self.getOwnerLayerInterface();
        if (((ownerLayerInterface.getXP()) - (ownerLayerInterface.getWidth())) <= (0)) and ((frame) = (angleIncrementInfo_.LEFT_FRAME.intValue())) then begin
            Self.reverse();
            Self.drop();
        end;
        displayInfo := TDisplayInfoSingleton.getInstance();
        if (((ownerLayerInterface.getX2()) + (ownerLayerInterface.getWidth())) > (displayInfo.getLastWidth())) and ((frame) = (angleIncrementInfo_.RIGHT_FRAME.intValue())) then begin
            Self.reverse();
            Self.accelerate();
            Self.drop();
        end;
        index := Self.circularIndexUtil.getIndex();
        if (((index) mod (Self.currentSpeedDivisor)) = (0)) and (((index) mod (2)) = (0)) then begin
            inherited processKeyAI(TCanvas.UP);
            Self.velocityInterface.limitMaxXYVelocity(TJava.Divide(Self.velocityInterface.getMaxForwardVelocity(), Self.currentSpeedDivisor));
        end;
        Self.circularIndexUtil.next();
        if (frame) = (angleIncrementInfo_.LEFT_FRAME.intValue()) then begin
            inherited processKeyAI(TCanvas.KEY_NUM0);
        end else if (frame) = (angleIncrementInfo_.RIGHT_FRAME.intValue()) then begin
            inherited processKeyAI(TCanvas.KEY_POUND);
        end;
end;
    

procedure THorizontaRotationManeuverAI.reverse;
var
  rotationAnimationInterface_: IRotationAnimationInterface;
  angleIncrementInfo_: TAngleIncrementInfo;
  frame: Integer;
  rotationAnimationInterfaceCompositeInterface_: IRotationAnimationInterfaceCompositeInterface;
begin
        rotationAnimationInterface_ := (TJava.ToObject(Self.rotationAnimationInterface) as IRotationAnimationInterface);
        angleIncrementInfo_ := rotationAnimationInterface_.getAngleInfoP().getAngleIncrementInfo();
        frame := Self.rotationAnimationInterface.getFrame();
        if (frame) = (angleIncrementInfo_.LEFT_FRAME.intValue()) then begin
            rotationAnimationInterfaceCompositeInterface_ := (TJava.ToObject(Self.getOwnerLayerInterface()) as IRotationAnimationInterfaceCompositeInterface);
            rotationAnimationInterfaceCompositeInterface_.setFrame(angleIncrementInfo_.RIGHT_FRAME.intValue());
            Self.baseVelocityInterface.zero();
        end else if (frame) = (angleIncrementInfo_.RIGHT_FRAME.intValue()) then begin
            rotationAnimationInterfaceCompositeInterface_ := (TJava.ToObject(Self.getOwnerLayerInterface()) as IRotationAnimationInterfaceCompositeInterface);
            rotationAnimationInterfaceCompositeInterface_.setFrame(angleIncrementInfo_.LEFT_FRAME.intValue());
            Self.baseVelocityInterface.zero();
        end;
end;
    

procedure THorizontaRotationManeuverAI.accelerate;
begin
        if (Self.currentSpeedDivisor) > (1) then begin
            Dec(Self.currentSpeedDivisor);
        end;
end;
    

procedure THorizontaRotationManeuverAI.drop;
var
  displayInfo: TDisplayInfoSingleton;
  ownerLayerInterface: TAllBinaryLayer;
  y: Integer;
begin
        displayInfo := TDisplayInfoSingleton.getInstance();
        ownerLayerInterface := Self.getOwnerLayerInterface();
        y := ownerLayerInterface.getYP();
        if ((ownerLayerInterface.getY2()) + (ownerLayerInterface.getHeight())) > (displayInfo.getLastHeight()) then begin
            y := 0;
        end else begin
            y := (y) + ((ownerLayerInterface.getHeight()) + (1));
        end;
        ownerLayerInterface.setPosition(ownerLayerInterface.getXP(), y, ownerLayerInterface.getZP());
end;
    

function THorizontaRotationManeuverAI.getId: Integer;
begin
        Exit(TArtificialIntelligence.AI_ID);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

