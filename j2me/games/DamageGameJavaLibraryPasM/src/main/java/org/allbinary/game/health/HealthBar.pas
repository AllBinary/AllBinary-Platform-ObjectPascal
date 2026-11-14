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
// package org.allbinary.game.health
unit HealthBar;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Paintable, AllBinaryLayer, HealthBarAnimation, HealthInterface, Health, HealthListenerInterface;

type
  {AB:TYPES}
  THealthBar = class(TPaintable, IHealthListenerInterface)
  public
    animationInterface: THealthBarAnimation;
    healthInterface: IHealthInterface;
    allbinaryLayer: TAllBinaryLayer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(layerInterface: TAllBinaryLayer; healthInterface_: THealth; animationInterface: THealthBarAnimation; direction: Integer);
        procedure onHealthChange; virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure paintThreed(graphics_: TGraphics); virtual;
  end;

implementation

{AB:CODE}

procedure THealthBar.InitFields;
begin
  
  
  
end;

function THealthBar.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor THealthBar.Create(layerInterface: TAllBinaryLayer; healthInterface_: THealth; animationInterface: THealthBarAnimation; direction: Integer);
begin
    inherited Create;
    InitFields;
        Self.allbinaryLayer := layerInterface;
        Self.animationInterface := animationInterface;
        Self.healthInterface := healthInterface_;
        Self.healthInterface.addListener(Self);
        Self.onHealthChange();
end;
    

procedure THealthBar.onHealthChange;
begin
        Self.animationInterface.onHealthChange(TJava.Divide((Self.healthInterface.getHealth()) * (Self.allbinaryLayer.getWidth()), Self.healthInterface.getMaxHealth()));
end;
    

procedure THealthBar.paint(graphics_: TGraphics);
begin
        Self.animationInterface.paintXY(graphics_, 0, 0);
end;
    

procedure THealthBar.paintThreed(graphics_: TGraphics);
begin
        Self.animationInterface.paintThreedXYZ(graphics_, 0, 0, 0);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

