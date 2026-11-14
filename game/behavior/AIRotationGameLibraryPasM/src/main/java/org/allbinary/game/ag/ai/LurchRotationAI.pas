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
unit LurchRotationAI;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, IndexedAnimation, LurchAI, GameInput, AllBinaryLayer;

type
  {AB:TYPES}
  TLurchRotationAI = class(TLurchAI)
  public
    rotationAnimationInterface: TIndexedAnimation;
    procedure InitFields;
        constructor Create(ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
        procedure reverse; override;
        procedure update;
  end;

implementation
uses
  RotationAnimationInterface, RotationAnimationInterfaceCompositeInterface, AngleIncrementInfo;


{AB:CODE}

procedure TLurchRotationAI.InitFields;
begin
  
end;
    

constructor TLurchRotationAI.Create(ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
var
  rotationAnimationInterfaceCompositeInterface_: IRotationAnimationInterfaceCompositeInterface;
begin
        inherited Create(ownerLayerInterface, gameInput_);
        InitFields;
        rotationAnimationInterfaceCompositeInterface_ := (TJava.ToObject(Self.getOwnerLayerInterface()) as IRotationAnimationInterfaceCompositeInterface);
        Self.rotationAnimationInterface := rotationAnimationInterfaceCompositeInterface_.getRotationAnimationInterface();
        Self.update();
end;
    

procedure TLurchRotationAI.reverse;
begin
        inherited reverse();
        Self.update();
end;
    

procedure TLurchRotationAI.update;
var
  rotationAnimationInterface_: IRotationAnimationInterface;
  angleIncrementInfo_: TAngleIncrementInfo;
  rotationAnimationInterfaceCompositeInterface_: IRotationAnimationInterfaceCompositeInterface;
begin
        if (Self.currentRelativeAngle) = (0) then begin
            rotationAnimationInterface_ := (TJava.ToObject(Self.rotationAnimationInterface) as IRotationAnimationInterface);
            angleIncrementInfo_ := rotationAnimationInterface_.getAngleInfoP().getAngleIncrementInfo();
            rotationAnimationInterfaceCompositeInterface_ := (TJava.ToObject(Self.getOwnerLayerInterface()) as IRotationAnimationInterfaceCompositeInterface);
            rotationAnimationInterfaceCompositeInterface_.setFrame(angleIncrementInfo_.RIGHT_FRAME.intValue());
        end else if (Self.currentRelativeAngle) = (180) then begin
            rotationAnimationInterface_ := (TJava.ToObject(Self.rotationAnimationInterface) as IRotationAnimationInterface);
            angleIncrementInfo_ := rotationAnimationInterface_.getAngleInfoP().getAngleIncrementInfo();
            rotationAnimationInterfaceCompositeInterface_ := (TJava.ToObject(Self.getOwnerLayerInterface()) as IRotationAnimationInterfaceCompositeInterface);
            rotationAnimationInterfaceCompositeInterface_.setFrame(angleIncrementInfo_.LEFT_FRAME.intValue());
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

