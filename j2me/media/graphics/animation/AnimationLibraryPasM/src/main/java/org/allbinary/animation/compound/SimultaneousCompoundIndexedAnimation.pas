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
// package org.allbinary.animation.compound
unit SimultaneousCompoundIndexedAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Animation, AnimationBehavior, IndexedAnimation;

type
  {AB:TYPES}
  TSimultaneousCompoundIndexedAnimation = class(TIndexedAnimation)
  public
    animationInterfaceArray: TArray<TAnimation>;
    procedure InitFields;
        constructor Create(animationInterfaceArray: TArray<TAnimation>; animationBehavior_: TAnimationBehavior);
        procedure setFrame(frameIndex: Integer); override;
        function getFrame: Integer; override;
        function getSize: Integer; override;
        procedure previousFrame; override;
        procedure setSequence(sequence: TArray<Integer>); override;
        function getSequence: TArray<Integer>; override;
        procedure nextFrame; override;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); override;
        procedure paintThreedXYZ(graphics_: TGraphics; x: Integer; y: Integer; z: Integer); override;
        function getAnimationInterfaceArray: TArray<TAnimation>; virtual;
        procedure setAnimationInterfaceArray(animationInterfaceArray: TArray<TAnimation>); virtual;
  end;

implementation
uses
  PrimitiveIntUtil;


{AB:CODE}

procedure TSimultaneousCompoundIndexedAnimation.InitFields;
begin
  
end;
    

constructor TSimultaneousCompoundIndexedAnimation.Create(animationInterfaceArray: TArray<TAnimation>; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(animationBehavior_);
        InitFields;
        Self.animationInterfaceArray := animationInterfaceArray;
end;
    

procedure TSimultaneousCompoundIndexedAnimation.setFrame(frameIndex: Integer);
var
  indexedAnimation_: TIndexedAnimation;
  index: Integer;
begin
        
        index := System.Length(Self.animationInterfaceArray);
        while (TJava.PreDec(index)) >= (0) do begin
            indexedAnimation_ := TIndexedAnimation(TJava.ToObject(Self.animationInterfaceArray[index]));
            indexedAnimation_.setFrame(frameIndex);
        end;
end;
    

function TSimultaneousCompoundIndexedAnimation.getFrame: Integer;
var
  indexedAnimation_: TIndexedAnimation;
begin
        indexedAnimation_ := TIndexedAnimation(TJava.ToObject(Self.animationInterfaceArray[0]));
        Exit(indexedAnimation_.getFrame());
end;
    

function TSimultaneousCompoundIndexedAnimation.getSize: Integer;
var
  indexedAnimation_: TIndexedAnimation;
begin
        indexedAnimation_ := TIndexedAnimation(TJava.ToObject(Self.animationInterfaceArray[0]));
        Exit(indexedAnimation_.getSize());
end;
    

procedure TSimultaneousCompoundIndexedAnimation.previousFrame;
var
  indexedAnimation_: TIndexedAnimation;
  index: Integer;
begin
        
        index := System.Length(Self.animationInterfaceArray);
        while (TJava.PreDec(index)) >= (0) do begin
            indexedAnimation_ := TIndexedAnimation(TJava.ToObject(Self.animationInterfaceArray[index]));
            indexedAnimation_.previousFrame();
        end;
end;
    

procedure TSimultaneousCompoundIndexedAnimation.setSequence(sequence: TArray<Integer>);
begin
end;
    

function TSimultaneousCompoundIndexedAnimation.getSequence: TArray<Integer>;
begin
        Exit(TPrimitiveIntUtil.getArrayInstance());
end;
    

// throws Exception
procedure TSimultaneousCompoundIndexedAnimation.nextFrame;
var
  index: Integer;
begin
        index := System.Length(Self.animationInterfaceArray);
        while (TJava.PreDec(index)) >= (0) do begin
            Self.animationInterfaceArray[index].nextFrame();
        end;
end;
    

procedure TSimultaneousCompoundIndexedAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
var
  size: Integer;
  index: Integer;
begin
        size := System.Length(Self.animationInterfaceArray);
        for index := 0 to size - 1 do begin
            Self.animationInterfaceArray[index].paintXY(graphics_, x, y);
        end;
end;
    

procedure TSimultaneousCompoundIndexedAnimation.paintThreedXYZ(graphics_: TGraphics; x: Integer; y: Integer; z: Integer);
var
  size: Integer;
  index: Integer;
begin
        size := System.Length(Self.animationInterfaceArray);
        for index := 0 to size - 1 do begin
            Self.animationInterfaceArray[index].paintThreedXYZ(graphics_, x, y, z);
        end;
end;
    

function TSimultaneousCompoundIndexedAnimation.getAnimationInterfaceArray: TArray<TAnimation>;
begin
        Exit(Self.animationInterfaceArray);
end;
    

procedure TSimultaneousCompoundIndexedAnimation.setAnimationInterfaceArray(animationInterfaceArray: TArray<TAnimation>);
begin
        Self.animationInterfaceArray := animationInterfaceArray;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

