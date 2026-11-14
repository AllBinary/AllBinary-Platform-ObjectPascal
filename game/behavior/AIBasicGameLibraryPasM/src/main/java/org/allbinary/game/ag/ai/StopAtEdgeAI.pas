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
unit StopAtEdgeAI;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicAI, GameInput, AllBinaryLayer, AllBinaryLayerManager;

type
  {AB:TYPES}
  TStopAtEdgeAI = class(TBasicAI)
  public
        constructor Create(ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
        procedure processAI(allBinaryLayerManager_: TAllBinaryLayerManager); override;
  end;

implementation
uses
  BasicVelocityProperties, VelocityInterfaceCompositeInterface, DisplayInfoSingleton;


{AB:CODE}
    

constructor TStopAtEdgeAI.Create(ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
begin
        inherited Create(ownerLayerInterface, gameInput_);
end;
    

// throws Exception
procedure TStopAtEdgeAI.processAI(allBinaryLayerManager_: TAllBinaryLayerManager);
var
  ownerLayerInterface: TAllBinaryLayer;
  velocityInterfaceCompositeInterface_: IVelocityInterfaceCompositeInterface;
  velocityProperties: TBasicVelocityProperties;
  x: Integer;
  y: Integer;
  x2: Integer;
  y2: Integer;
  width: Integer;
  height: Integer;
  displayInfo: TDisplayInfoSingleton;
begin
        ownerLayerInterface := Self.getOwnerLayerInterface();
        velocityInterfaceCompositeInterface_ := ((TJava.ToObject(ownerLayerInterface) as IVelocityInterfaceCompositeInterface));
        velocityProperties := velocityInterfaceCompositeInterface_.getVelocityProperties();
        x := ownerLayerInterface.getXP();
        y := ownerLayerInterface.getYP();
        x2 := ownerLayerInterface.getX2();
        y2 := ownerLayerInterface.getY2();
        width := ownerLayerInterface.getWidth();
        height := ownerLayerInterface.getHeight();
        displayInfo := TDisplayInfoSingleton.getInstance();
        if ((x2) + (velocityProperties.getVelocityXBasicDecimalP().getScaled())) > (displayInfo.getLastWidth()) then begin
            ownerLayerInterface.setPosition((displayInfo.getLastWidth()) - (width), y, ownerLayerInterface.getZP());
            velocityProperties.getVelocityYBasicDecimalP().setint(0);
        end;
        if ((y2) + (velocityProperties.getVelocityYBasicDecimalP().getScaled())) > (displayInfo.getLastHeight()) then begin
            ownerLayerInterface.setPosition(x, (displayInfo.getLastHeight()) - (height), ownerLayerInterface.getZP());
            velocityProperties.getVelocityXBasicDecimalP().setint(0);
        end;
        if ((x) + (velocityProperties.getVelocityXBasicDecimalP().getScaled())) < (0) then begin
            ownerLayerInterface.setPosition(0, y, ownerLayerInterface.getZP());
            velocityProperties.getVelocityYBasicDecimalP().setint(0);
        end;
        if ((y) + (velocityProperties.getVelocityYBasicDecimalP().getScaled())) < (0) then begin
            ownerLayerInterface.setPosition(x, 0, ownerLayerInterface.getZP());
            velocityProperties.getVelocityXBasicDecimalP().setint(0);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

