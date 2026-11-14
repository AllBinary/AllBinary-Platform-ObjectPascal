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
// package org.allbinary.animation.image.sprite
unit SpriteIndexedAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Image, Sprite, AnimationBehavior, IndexedAnimation, BasicColor, ColorCompositeInterface, BasicColorCompositeSetterInterface;

type
  {AB:TYPES}
  TSpriteIndexedAnimation = class(TIndexedAnimation, IColorCompositeInterface, IBasicColorCompositeSetterInterface)
  public
    sprite: TSprite;
    image: TImage;
    basicColorArray: TArray<TBasicColor>;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(sprite_: TSprite; image_: TImage; basicColorArray: TArray<TBasicColor>; animationBehavior_: TAnimationBehavior);
        function getAnimationSize: Integer; virtual;
        procedure setBasicColorP(basicColor_: TBasicColor); virtual;
        function getBasicColorP: TBasicColor; virtual;
        procedure paintFrame(graphics_: TGraphics; frame: Integer; x: Integer; y: Integer); virtual;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure nextFrame; virtual;
        procedure previousFrame; virtual;
        function getSize: Integer; virtual;
        procedure setFrame(frame: Integer); virtual;
        function getFrame: Integer; virtual;
        function isLastFrame: Boolean; virtual;
        function getLastFrame: Integer; virtual;
        procedure setSequence(sequence: TArray<Integer>); virtual;
        function getSequence: TArray<Integer>; virtual;
        procedure close; virtual;
        procedure finalize; virtual;
  end;

implementation
uses
  BasicColorFactory, PrimitiveIntUtil, StringMaker, CommonLabels;


{AB:CODE}

procedure TSpriteIndexedAnimation.InitFields;
begin
  
  
  
end;

function TSpriteIndexedAnimation.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TSpriteIndexedAnimation.Create(sprite_: TSprite; image_: TImage; basicColorArray: TArray<TBasicColor>; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(animationBehavior_);
        InitFields;
        Self.sprite := sprite_;
        Self.image := image_;
        Self.basicColorArray := basicColorArray;
        if ((System.Length(Self.basicColorArray)) <> (0)) and ((Self.getSize()) <> (System.Length(Self.basicColorArray))) then begin
            raise SysUtils.Exception.Create(TStringMaker.Create().append(TCommonLabels.getInstance().TOTAL_LABEL).appendint(Self.getSize()).append('!=').appendint(System.Length(Self.basicColorArray)).toString());
        end;
end;
    

// throws Exception
function TSpriteIndexedAnimation.getAnimationSize: Integer;
begin
        Exit(Self.getSize());
end;
    

procedure TSpriteIndexedAnimation.setBasicColorP(basicColor_: TBasicColor);
var
  index: Integer;
begin
        for index := 0 to System.Length(Self.basicColorArray) - 1 do begin
            if (basicColor_) = (Self.basicColorArray[index]) then begin
                Self.setFrame(index);
                Break;
            end;
        end;
end;
    

function TSpriteIndexedAnimation.getBasicColorP: TBasicColor;
begin
        if (System.Length(Self.basicColorArray)) < (Self.getFrame()) then begin
            Exit(Self.basicColorArray[Self.getFrame()]);
        end else begin
            Exit(TBasicColorFactory.getInstance().WHITE);
        end;
end;
    

procedure TSpriteIndexedAnimation.paintFrame(graphics_: TGraphics; frame: Integer; x: Integer; y: Integer);
begin
        Self.setFrame(frame);
        Self.sprite.setPosition(x, y);
        Self.sprite.paint(graphics_);
end;
    

procedure TSpriteIndexedAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        Self.sprite.setPosition(x, y);
        Self.sprite.paint(graphics_);
end;
    

procedure TSpriteIndexedAnimation.paint(graphics_: TGraphics);
begin
        Self.sprite.paint(graphics_);
end;
    

procedure TSpriteIndexedAnimation.nextFrame;
begin
        Self.sprite.nextFrame();
end;
    

procedure TSpriteIndexedAnimation.previousFrame;
begin
        Self.sprite.prevFrame();
end;
    

function TSpriteIndexedAnimation.getSize: Integer;
begin
        Exit(Self.sprite.getRawFrameCount());
end;
    

procedure TSpriteIndexedAnimation.setFrame(frame: Integer);
begin
        Self.sprite.setFrame(frame);
end;
    

function TSpriteIndexedAnimation.getFrame: Integer;
begin
        Exit(Self.sprite.getFrame());
end;
    

function TSpriteIndexedAnimation.isLastFrame: Boolean;
begin
        if (Self.sprite.getFrame()) = ((Self.getSize()) - (1)) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TSpriteIndexedAnimation.getLastFrame: Integer;
begin
        Exit(Self.getSize());
end;
    

procedure TSpriteIndexedAnimation.setSequence(sequence: TArray<Integer>);
begin
end;
    

function TSpriteIndexedAnimation.getSequence: TArray<Integer>;
begin
        Exit(TPrimitiveIntUtil.getArrayInstance());
end;
    

// throws Exception
procedure TSpriteIndexedAnimation.close;
begin
end;
    

// throws Throwable
procedure TSpriteIndexedAnimation.finalize;
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

