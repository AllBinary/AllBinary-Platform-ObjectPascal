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
// package org.allbinary.input.motion.button
unit FullTouchButton;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Animation, CellPosition, Rectangle, TouchButtonInput, TouchButtonResource, TouchButton;

type
  {AB:TYPES}
  TFullTouchButton = class(TTouchButton)
  public
        class function createButton(touchButtonInput_: TTouchButtonInput; touchButtonResource_: TTouchButtonResource; rawRectangle: TRectangle; cellPosition_: TCellPosition; xBorder: Integer; yBorder: Integer): TFullTouchButton; static;
        constructor Create(touchButtonInput_: TTouchButtonInput; animationInterface: TAnimation; hintAnimationInterface: TAnimation; rawRectangle: TRectangle; cellPosition_: TCellPosition; xBorder: Integer; yBorder: Integer);
        procedure updateRectangle; override;
  end;

implementation
uses
  FeaturedAnimationInterfaceFactoryInterfaceFactory, GPoint, PointFactory;


{AB:CODE}
    

// throws Exception
class function TFullTouchButton.createButton(touchButtonInput_: TTouchButtonInput; touchButtonResource_: TTouchButtonResource; rawRectangle: TRectangle; cellPosition_: TCellPosition; xBorder: Integer; yBorder: Integer): TFullTouchButton;
begin
        Exit(TFullTouchButton.Create(touchButtonInput_, TFeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(touchButtonResource_.RESOURCE).getInstance(0), TFeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(touchButtonResource_.HINT).getInstance(0), rawRectangle, cellPosition_, xBorder, yBorder));
end;
    

constructor TFullTouchButton.Create(touchButtonInput_: TTouchButtonInput; animationInterface: TAnimation; hintAnimationInterface: TAnimation; rawRectangle: TRectangle; cellPosition_: TCellPosition; xBorder: Integer; yBorder: Integer);
begin
        inherited Create(touchButtonInput_, animationInterface, hintAnimationInterface, rawRectangle, cellPosition_, xBorder, yBorder);
end;
    

procedure TFullTouchButton.updateRectangle;
var
  pointFactory_: TPointFactory;
  x: Integer;
  y: Integer;
  point: TGPoint;
begin
        try
            pointFactory_ := TPointFactory.getInstance();
            x := (Self.rawRectangle.getWidth()) * (Self.cellPositionP.getColumn());
            y := (Self.rawRectangle.getHeight()) * (Self.cellPositionP.getRow());
            Self.rectangleP := TRectangle.Create(pointFactory_.createXY(x, y), (Self.rawRectangle.getWidth()) + (((2) * (Self.xBorder))), (Self.rawRectangle.getHeight()) + (((2) * (Self.yBorder))));
            point := Self.rectangleP.getPoint();
            Self.animationX := (point.getX()) + (Self.xBorder);
            Self.animationY := (point.getY()) + (Self.yBorder);
            Self.hintAnimationY := TJava.SignedRightShift((Self.animationY) - (Self.rectangleP.getHeight()), 1);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'updateRectangle', TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

