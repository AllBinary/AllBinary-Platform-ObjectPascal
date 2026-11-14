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
// package org.allbinary.animation.image
unit ImageSegmentAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Image, AnimationBehavior, CircularIndexUtil, ImageAnimation;

type
  {AB:TYPES}
  TImageSegmentAnimation = class(TImageAnimation)
  public
    startX: Integer;
    startY: Integer;
    drawWidth: Integer;
    drawHeight: Integer;
    circularIndexUtil: TCircularIndexUtil;
    sequenceArray: TArray<Integer>;
    procedure InitFields;
        constructor Create(image_: TImage; sequenceArray: TArray<Integer>; animationBehavior_: TAnimationBehavior);
        procedure nextFrame; override;
        procedure previousFrame; override;
        procedure setFrame(index: Integer); override;
        function getFrame: Integer; override;
        function getSize: Integer; override;
        procedure setSequence(sequenceArray: TArray<Integer>); override;
        function getSequence: TArray<Integer>; override;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); override;
        function getStartX: Integer; virtual;
        procedure setStartX(startX: Integer); virtual;
        function getStartY: Integer; virtual;
        procedure setStartY(startY: Integer); virtual;
        function getDrawWidth: Integer; virtual;
        procedure setDrawWidth(drawWidth: Integer); virtual;
        function getDrawHeight: Integer; virtual;
        procedure setDrawHeight(drawHeight: Integer); virtual;
  end;

implementation

{AB:CODE}

procedure TImageSegmentAnimation.InitFields;
begin
  
  
  
  
  
  
end;
    

constructor TImageSegmentAnimation.Create(image_: TImage; sequenceArray: TArray<Integer>; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(image_, animationBehavior_);
        InitFields;
        Self.startX := 0;
        Self.startY := 0;
        Self.drawWidth := Self.getImage().getWidth();
        Self.drawHeight := Self.getImage().getHeight();
        Self.circularIndexUtil := TCircularIndexUtil.createInstance(Self.drawHeight);
        Self.sequenceArray := sequenceArray;
end;
    

procedure TImageSegmentAnimation.nextFrame;
begin
        Self.circularIndexUtil.next();
end;
    

procedure TImageSegmentAnimation.previousFrame;
begin
        Self.circularIndexUtil.previous();
end;
    

procedure TImageSegmentAnimation.setFrame(index: Integer);
begin
        Self.circularIndexUtil.setIndex(index);
end;
    

function TImageSegmentAnimation.getFrame: Integer;
begin
        Exit(Self.circularIndexUtil.getIndex());
end;
    

function TImageSegmentAnimation.getSize: Integer;
begin
        Exit(Self.circularIndexUtil.getSize());
end;
    

procedure TImageSegmentAnimation.setSequence(sequenceArray: TArray<Integer>);
begin
        Self.sequenceArray := sequenceArray;
end;
    

function TImageSegmentAnimation.getSequence: TArray<Integer>;
begin
        Exit(Self.sequenceArray);
end;
    

procedure TImageSegmentAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
end;
    

function TImageSegmentAnimation.getStartX: Integer;
begin
        Exit(Self.startX);
end;
    

procedure TImageSegmentAnimation.setStartX(startX: Integer);
begin
        Self.startX := startX;
end;
    

function TImageSegmentAnimation.getStartY: Integer;
begin
        Exit(Self.startY);
end;
    

procedure TImageSegmentAnimation.setStartY(startY: Integer);
begin
        Self.startY := startY;
end;
    

function TImageSegmentAnimation.getDrawWidth: Integer;
begin
        Exit(Self.drawWidth);
end;
    

procedure TImageSegmentAnimation.setDrawWidth(drawWidth: Integer);
begin
        Self.drawWidth := drawWidth;
end;
    

function TImageSegmentAnimation.getDrawHeight: Integer;
begin
        Exit(Self.drawHeight);
end;
    

procedure TImageSegmentAnimation.setDrawHeight(drawHeight: Integer);
begin
        Self.drawHeight := drawHeight;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

