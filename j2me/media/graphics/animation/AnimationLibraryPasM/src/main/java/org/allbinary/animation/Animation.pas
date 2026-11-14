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
// package org.allbinary.animation
unit Animation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL, Graphics, BasicColor, BasicColorSetUtil, OpenGLSurfaceChangedInterface, AnimationInterface, LocationPaintableInterface;

type
  {AB:TYPES}
  TAnimation = class(TInterfacedObject, IAnimationInterface, IOpenGLSurfaceChangedInterface, ILocationPaintableInterface)
  public
    basicSetColorUtil: TBasicColorSetUtil;
    basicColor: TBasicColor;
    colorP: Integer;
    changeBasicColorP: TBasicColor;
    changeColorP: Integer;
    alphaP: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure setAlpha(alpha: Integer); virtual;
        procedure nextFrame; virtual;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); virtual;
        procedure paintThreedXYZ(graphics_: TGraphics; x: Integer; y: Integer; z: Integer); virtual;
        function isThreed: Boolean; virtual;
        function getBasicColorP: TBasicColor; virtual;
        procedure setBasicColorP(basicColor_: TBasicColor); virtual;
        procedure setBackgroundBasicColorP(basicColor_: TBasicColor); virtual;
        function getChangeBasicColor: TBasicColor; virtual;
        procedure changeBasicColor(basicColor_: TBasicColor); virtual;
        function getChangeColor: Integer; virtual;
        function getColor: Integer; virtual;
        procedure setScale(scaleX: Single; scaleY: Single); virtual;
        procedure setMaxScale(maxScaleX: Single; maxScaleY: Single); virtual;
        procedure set_(gl_: IGL); virtual;
        procedure setDx(dx: Integer); virtual;
        function getDx: Integer; virtual;
        procedure setDy(dy: Integer); virtual;
        function getDy: Integer; virtual;
  end;

implementation
uses
  BasicColorFactory;


{AB:CODE}

procedure TAnimation.InitFields;
begin
  Self.basicSetColorUtil := TBasicColorSetUtil.getInstance();
  Self.basicColor := TBasicColorFactory.getInstance().WHITE;
  
  Self.changeBasicColorP := TBasicColorFactory.getInstance().NULL_COLOR;
  
  
end;

function TAnimation.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAnimation.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TAnimation.setAlpha(alpha: Integer);
begin
        Self.alphaP := alpha;
end;
    

// throws Exception
procedure TAnimation.nextFrame;
begin
end;
    

procedure TAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        Self.basicSetColorUtil.setBasicColorP3(graphics_, Self.getBasicColorP(), Self.getColor());
end;
    

procedure TAnimation.paintThreedXYZ(graphics_: TGraphics; x: Integer; y: Integer; z: Integer);
begin
end;
    

function TAnimation.isThreed: Boolean;
begin
        Exit(False);
end;
    

function TAnimation.getBasicColorP: TBasicColor;
begin
        Exit(Self.basicColor);
end;
    

procedure TAnimation.setBasicColorP(basicColor_: TBasicColor);
begin
        Self.basicColor := basicColor_;
        Self.colorP := Self.basicColor.intValue();
end;
    

procedure TAnimation.setBackgroundBasicColorP(basicColor_: TBasicColor);
begin
end;
    

function TAnimation.getChangeBasicColor: TBasicColor;
begin
        Exit(Self.changeBasicColorP);
end;
    

procedure TAnimation.changeBasicColor(basicColor_: TBasicColor);
begin
        Self.changeBasicColorP := basicColor_;
        Self.changeColorP := Self.changeBasicColorP.intValue();
end;
    

function TAnimation.getChangeColor: Integer;
begin
        Exit(Self.changeColorP);
end;
    

function TAnimation.getColor: Integer;
begin
        Exit(Self.colorP);
end;
    

procedure TAnimation.setScale(scaleX: Single; scaleY: Single);
begin
end;
    

procedure TAnimation.setMaxScale(maxScaleX: Single; maxScaleY: Single);
begin
end;
    

// throws Exception
procedure TAnimation.set_(gl_: IGL);
begin
end;
    

procedure TAnimation.setDx(dx: Integer);
begin
end;
    

function TAnimation.getDx: Integer;
begin
        Exit(0);
end;
    

procedure TAnimation.setDy(dy: Integer);
begin
end;
    

function TAnimation.getDy: Integer;
begin
        Exit(0);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

