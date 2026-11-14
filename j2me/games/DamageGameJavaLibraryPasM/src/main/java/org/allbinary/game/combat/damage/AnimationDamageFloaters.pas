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
// package org.allbinary.game.combat.damage
unit AnimationDamageFloaters;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, IndexedAnimation, AllBinaryLayer, LogUtil, CircularIndexUtil, DamageFloaters;

type
  {AB:TYPES}
  TAnimationDamageFloaters = class(TDamageFloaters)
  public
    logUtil: TLogUtil;
    layerInterface: TAllBinaryLayer;
    animationInterfaceArray: TArray<TIndexedAnimation>;
    circularIndexUtil: TCircularIndexUtil;
    dx: Integer;
    dy: Integer;
    procedure InitFields;
        constructor Create(layerInterface: TAllBinaryLayer; animationInterfaceArray: TArray<TIndexedAnimation>; dx: Integer; dy: Integer);
        procedure add(damage: Integer); override;
        procedure paint(graphics_: TGraphics); override;
  end;

implementation
uses
  CanvasStrings, CommonStrings, ViewPosition, ViewPositionBase;


{AB:CODE}

procedure TAnimationDamageFloaters.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
  
end;
    

constructor TAnimationDamageFloaters.Create(layerInterface: TAllBinaryLayer; animationInterfaceArray: TArray<TIndexedAnimation>; dx: Integer; dy: Integer);
var
  index: Integer;
begin
    inherited Create;
    InitFields;
        Self.animationInterfaceArray := animationInterfaceArray;
        for index := (System.Length(Self.animationInterfaceArray)) - (1) downto 0 do begin
            Self.animationInterfaceArray[index].setFrame((Self.animationInterfaceArray[index].getSize()) - (1));
        end;
        Self.layerInterface := layerInterface;
        Self.circularIndexUtil := TCircularIndexUtil.createInstance(System.Length(Self.animationInterfaceArray));
        Self.dx := dx;
        Self.dy := dy;
end;
    

procedure TAnimationDamageFloaters.add(damage: Integer);
var
  i: Integer;
begin
        i := Self.circularIndexUtil.getIndex();
        Self.animationInterfaceArray[i].setFrame(0);
        Self.circularIndexUtil.next();
end;
    

procedure TAnimationDamageFloaters.paint(graphics_: TGraphics);
var
  viewPosition: TViewPositionBase;
  x: Integer;
  y: Integer;
  animationInterface: TIndexedAnimation;
  delta: Integer;
  index: Integer;
  commonStrings_: TCommonStrings;
  canvasStrings_: TCanvasStrings;
begin
        try
            viewPosition := Self.layerInterface.getViewPosition();
            x := viewPosition.getX();
            y := viewPosition.getY();
            for index := 0 to System.Length(Self.animationInterfaceArray) - 1 do begin
                animationInterface := Self.animationInterfaceArray[index];
                if (animationInterface.getFrame()) < ((animationInterface.getAnimationSize()) - (1)) then begin
                    delta := (animationInterface.getFrame()) * (20);
                    animationInterface.paintXY(graphics_, (x) + (Self.dx), ((y) - (delta)) + (Self.dy));
                    animationInterface.nextFrame();
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            canvasStrings_ := TCanvasStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), canvasStrings_.PAINT, TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

