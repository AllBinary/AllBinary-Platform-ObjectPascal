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
unit BoundBounceAI;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, BoundsVisitorInterface, LayerBounds, BasicAI, GameInput, AllBinaryLayer, AllBinaryLayerManager;

type
  {AB:TYPES}
  TBoundBounceAI = class(TBasicAI)
  public
    currentRelativeAngle: Integer;
    layerBounds: TLayerBounds;
    boundsVisitorInterface: IBoundsVisitorInterface;
    procedure InitFields;
        constructor Create(ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput; layerBounds_: TLayerBounds; boundsVisitorInterface_: IBoundsVisitorInterface);
        procedure paint(graphics_: TGraphics); virtual;
        procedure processAI(allBinaryLayerManager_: TAllBinaryLayerManager); override;
  end;

implementation
uses
  Rectangle;


{AB:CODE}

procedure TBoundBounceAI.InitFields;
begin
  Self.currentRelativeAngle := 0;
  
  
end;
    

constructor TBoundBounceAI.Create(ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput; layerBounds_: TLayerBounds; boundsVisitorInterface_: IBoundsVisitorInterface);
begin
        inherited Create(ownerLayerInterface, gameInput_);
        InitFields;
        Self.layerBounds := layerBounds_;
        Self.boundsVisitorInterface := boundsVisitorInterface_;
end;
    

procedure TBoundBounceAI.paint(graphics_: TGraphics);
var
  rectange: TRectangle;
begin
        rectange := Self.layerBounds.getRectangleP();
        graphics_.drawRect(rectange.getPoint().getX(), rectange.getPoint().getY(), rectange.getWidth(), rectange.getHeight());
end;
    

// throws Exception
procedure TBoundBounceAI.processAI(allBinaryLayerManager_: TAllBinaryLayerManager);
begin
        Self.layerBounds.visit(Self.boundsVisitorInterface);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

