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
unit HealthBarAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Animation, BasicColorFactory, AllBinaryLayer;

type
  {AB:TYPES}
  THealthBarAnimation = class(TAnimation)
  public
    basicColorFactory: TBasicColorFactory;
    x2: Integer;
    thickness: Integer;
    location: Integer;
    allbinaryLayer: TAllBinaryLayer;
    procedure InitFields;
        constructor Create(layerInterface: TAllBinaryLayer; location: Integer);
        procedure onHealthChange(newX2: Integer); virtual;
        function getY: Integer; virtual;
  end;

implementation
uses
  BasicHudFactory;


{AB:CODE}

procedure THealthBarAnimation.InitFields;
begin
  Self.basicColorFactory := TBasicColorFactory.getInstance();
  
  
  
  
end;
    

constructor THealthBarAnimation.Create(layerInterface: TAllBinaryLayer; location: Integer);
var
  basicHudFactory_: TBasicHudFactory;
begin
    inherited Create;
    InitFields;
        Self.allbinaryLayer := layerInterface;
        Self.location := location;
        basicHudFactory_ := TBasicHudFactory.getInstance();
        if ((Self.location) <> (basicHudFactory_.TOPLEFT)) and ((Self.location) <> (basicHudFactory_.BOTTOMLEFT)) then begin
            raise SysUtils.Exception.Create('Location Not Valid');
        end;
        if (layerInterface.getWidth()) > (40) then begin
            Self.thickness := 3;
        end else if (layerInterface.getWidth()) > (20) then begin
            Self.thickness := 2;
        end else begin
            Self.thickness := 1;
        end;
end;
    

procedure THealthBarAnimation.onHealthChange(newX2: Integer);
var
  quarter: Integer;
begin
        Self.x2 := newX2;
        quarter := (TJava.SignedRightShift(Self.allbinaryLayer.getWidth(), 2));
        if (Self.x2) > ((quarter) * (3)) then begin
            Self.basicColor := Self.basicColorFactory.GREEN;
            Self.colorP := Self.basicColor.intValue();
        end else if (Self.x2) > ((quarter) * (2)) then begin
            Self.basicColor := Self.basicColorFactory.YELLOW;
            Self.colorP := Self.basicColor.intValue();
        end else if (Self.x2) > (quarter) then begin
            Self.basicColor := Self.basicColorFactory.ORANGE;
            Self.colorP := Self.basicColor.intValue();
        end else begin
            Self.basicColor := Self.basicColorFactory.RED;
            Self.colorP := Self.basicColor.intValue();
        end;
end;
    

function THealthBarAnimation.getY: Integer;
var
  basicHudFactory_: TBasicHudFactory;
begin
        basicHudFactory_ := TBasicHudFactory.getInstance();
        if (Self.location) = (basicHudFactory_.TOPLEFT) then begin
            Exit((Self.allbinaryLayer.getViewPosition().getY()) - (4));
        end else if (Self.location) = (basicHudFactory_.BOTTOMLEFT) then begin
            Exit((Self.allbinaryLayer.getViewPosition().getY2()) + (4));
        end;
        Exit(-1);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

