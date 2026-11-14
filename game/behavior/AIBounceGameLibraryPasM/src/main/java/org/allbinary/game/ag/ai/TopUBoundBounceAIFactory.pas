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
unit TopUBoundBounceAIFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ArtificialIntelligenceInterface, ArtificialIntelligenceInterfaceFactoryInterface, GameInput, AllBinaryLayer, ABHashtable;

type
  {AB:TYPES}
  TTopUBoundBounceAIFactory = class(TInterfacedObject, IArtificialIntelligenceInterfaceFactoryInterface)
  public
    function JavaObject: TObject;
    constructor Create;
        function getInstance(hashtable: TABHashtable<TObject, TObject>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput): IArtificialIntelligenceInterface; virtual;
  end;

implementation
uses
  BoundBounceAI, ReverseVelocityBoundsVisitor, TopULayerBounds, VelocityInterface, VelocityInterfaceCompositeInterface, GPoint, PointFactory, Rectangle, DisplayInfoSingleton;


{AB:CODE}

function TTopUBoundBounceAIFactory.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TTopUBoundBounceAIFactory.Create;
begin
  inherited Create;
end;
    

// throws Exception
function TTopUBoundBounceAIFactory.getInstance(hashtable: TABHashtable<TObject, TObject>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput): IArtificialIntelligenceInterface;
var
  velocityInterfaceCompositeInterface_: IVelocityInterfaceCompositeInterface;
  velocityInterface_: IVelocityInterface;
  maxDistancePerTick: Integer;
  halfWidth: Integer;
  halfHeight: Integer;
  point: TGPoint;
  displayInfo: TDisplayInfoSingleton;
  rectangle_: TRectangle;
begin
        velocityInterfaceCompositeInterface_ := (TJava.ToObject(ownerLayerInterface) as IVelocityInterfaceCompositeInterface);
        velocityInterface_ := (TJava.ToObject(velocityInterfaceCompositeInterface_.getVelocityProperties()) as IVelocityInterface);
        maxDistancePerTick := (TJava.SignedRightShift(velocityInterface_.getMaxForwardVelocity(), velocityInterface_.getVelocityXBasicDecimalP().getScaledFactor()));
        halfWidth := (((ownerLayerInterface.getWidth()) * (2)) + (maxDistancePerTick)) + (1);
        halfHeight := (((ownerLayerInterface.getHeight()) * (2)) + (maxDistancePerTick)) + (1);
        point := TPointFactory.getInstance().createXY(halfWidth, (halfHeight) + (60));
        displayInfo := TDisplayInfoSingleton.getInstance();
        rectangle_ := TRectangle.Create(point, (((displayInfo.getLastWidth()) - (halfWidth)) - (point.getX())), (((displayInfo.getLastHeight()) - (halfHeight)) - (point.getY())));
        Exit(TBoundBounceAI.Create(ownerLayerInterface, gameInput_, TTopULayerBounds.Create(rectangle_), TReverseVelocityBoundsVisitor.Create(ownerLayerInterface)));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

