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
// package org.allbinary.game.ag.life
unit HealthIncludingLifeBar;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Health, HealthBarAnimation, HealthInterface, HealthListenerInterface, Paintable, AllBinaryLayer, Life;

type
  {AB:TYPES}
  THealthIncludingLifeBar = class(TPaintable, IHealthListenerInterface)
  public
    animationInterface: THealthBarAnimation;
    life: TLife;
    healthInterface: IHealthInterface;
    allbinaryLayer: TAllBinaryLayer;
    procedure InitFields;
    function JavaObject: TObject;
        class function createHealthIncludingLifeBar(layerInterface: TAllBinaryLayer; life_: TLife; healthInterface_: THealth; location: Integer; direction: Integer): THealthIncludingLifeBar; static;
        constructor Create(layerInterface: TAllBinaryLayer; life_: TLife; healthInterface_: THealth; animationInterface: THealthBarAnimation; direction: Integer);
        procedure onHealthChange; virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure paintThreed(graphics_: TGraphics); virtual;
  end;

implementation
uses
  HealthBarTwodAnimation;


{AB:CODE}

procedure THealthIncludingLifeBar.InitFields;
begin
  
  
  
  
end;

function THealthIncludingLifeBar.JavaObject: TObject;
begin
  Result := Self;
end;
    

// throws Exception
class function THealthIncludingLifeBar.createHealthIncludingLifeBar(layerInterface: TAllBinaryLayer; life_: TLife; healthInterface_: THealth; location: Integer; direction: Integer): THealthIncludingLifeBar;
begin
        Exit(THealthIncludingLifeBar.Create(layerInterface, life_, healthInterface_, THealthBarTwodAnimation.Create(layerInterface, location), direction));
end;
    

constructor THealthIncludingLifeBar.Create(layerInterface: TAllBinaryLayer; life_: TLife; healthInterface_: THealth; animationInterface: THealthBarAnimation; direction: Integer);
begin
    inherited Create;
    InitFields;
        Self.allbinaryLayer := layerInterface;
        Self.animationInterface := animationInterface;
        Self.life := life_;
        Self.healthInterface := healthInterface_;
        Self.healthInterface.addListener(Self);
        Self.onHealthChange();
end;
    

procedure THealthIncludingLifeBar.onHealthChange;
begin
        Self.animationInterface.onHealthChange(TJava.Divide(((((Self.healthInterface.getHealth()) + (((Self.healthInterface.getMaxHealth()) * (Self.life.get()))))) * (Self.allbinaryLayer.getWidth())), ((Self.healthInterface.getMaxHealth()) + (((Self.healthInterface.getMaxHealth()) * (Self.life.getStartLives()))))));
end;
    

procedure THealthIncludingLifeBar.paint(graphics_: TGraphics);
begin
        Self.animationInterface.paintXY(graphics_, 0, 0);
end;
    

procedure THealthIncludingLifeBar.paintThreed(graphics_: TGraphics);
begin
        Self.animationInterface.paintThreedXYZ(graphics_, 0, 0, 0);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

