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
// package org.allbinary.game.layer.pickup
unit IconLayer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Animation, AllBinaryLayer;

type
  {AB:TYPES}
  TIconLayer = class(TAllBinaryLayer)
  public
    animationInterface: TAnimation;
    class var NULL_ICON_LAYER: TIconLayer;
    procedure InitFields;
        constructor Create(animationInterface: TAnimation; width: Integer; height: Integer);
        procedure paint(graphics_: TGraphics); override;
        procedure paintThreed(graphics_: TGraphics); override;
        function getAnimationInterface: TAnimation; virtual;
  end;

implementation
uses
  NullAnimationFactory, PointFactory, Rectangle, StringUtil, ViewPosition;


{AB:CODE}

procedure TIconLayer.InitFields;
begin
  
end;
    

constructor TIconLayer.Create(animationInterface: TAnimation; width: Integer; height: Integer);
begin
        inherited Create(TStringUtil.getInstance().EMPTY_STRING, TRectangle.Create(TPointFactory.getInstance().ZERO_ZERO, width, height), TViewPosition.getInstanceD());
        InitFields;
        Self.animationInterface := animationInterface;
end;
    

procedure TIconLayer.paint(graphics_: TGraphics);
begin
        Self.animationInterface.paintXY(graphics_, Self.x, Self.y);
end;
    

procedure TIconLayer.paintThreed(graphics_: TGraphics);
begin
        Self.animationInterface.paintThreedXYZ(graphics_, Self.x, Self.y, Self.z);
end;
    

function TIconLayer.getAnimationInterface: TAnimation;
begin
        Exit(Self.animationInterface);
end;

initialization
  {AB:INITIALIZATION}
  TIconLayer.NULL_ICON_LAYER := TIconLayer.Create(TNullAnimationFactory.getFactoryInstance().getInstance(0), 0, 0);
  {AB:END}

end.

