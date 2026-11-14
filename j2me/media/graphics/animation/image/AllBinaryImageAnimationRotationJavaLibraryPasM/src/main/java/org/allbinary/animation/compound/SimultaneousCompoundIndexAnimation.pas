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
unit SimultaneousCompoundIndexAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL, Graphics, AnimationBehavior, IndexedAnimation;

type
  {AB:TYPES}
  TSimultaneousCompoundIndexAnimation = class(TIndexedAnimation)
  public
    animationInterfaceArray: TArray<TIndexedAnimation>;
    procedure InitFields;
        constructor Create(animationInterfaceArray: TArray<TIndexedAnimation>; animationBehavior_: TAnimationBehavior);
        procedure setFrame(frameIndex: Integer); override;
        function getFrame: Integer; override;
        function getAnimationSize: Integer; override;
        function getSize: Integer; override;
        procedure previousFrame; override;
        procedure nextFrame; override;
        procedure setSequence(sequence: TArray<Integer>); override;
        function getSequence: TArray<Integer>; override;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); override;
        procedure paintThreedXYZ(graphics_: TGraphics; x: Integer; y: Integer; z: Integer); override;
        procedure set_(gl_: IGL); override;
        function getAnimationInterfaceArray: TArray<TIndexedAnimation>; virtual;
        procedure setAnimationInterfaceArray(animationInterfaceArray: TArray<TIndexedAnimation>); virtual;
  end;

implementation
uses
  PrimitiveIntUtil;


{AB:CODE}

procedure TSimultaneousCompoundIndexAnimation.InitFields;
begin
  
end;
    

constructor TSimultaneousCompoundIndexAnimation.Create(animationInterfaceArray: TArray<TIndexedAnimation>; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(animationBehavior_);
        InitFields;
        Self.animationInterfaceArray := animationInterfaceArray;
end;
    

procedure TSimultaneousCompoundIndexAnimation.setFrame(frameIndex: Integer);
var
  index: Integer;
begin
        index := System.Length(Self.animationInterfaceArray);
        while (TJava.PreDec(index)) >= (0) do begin
            Self.animationInterfaceArray[index].setFrame(frameIndex);
        end;
end;
    

function TSimultaneousCompoundIndexAnimation.getFrame: Integer;
begin
        Exit(Self.animationInterfaceArray[0].getFrame());
end;
    

// throws Exception
function TSimultaneousCompoundIndexAnimation.getAnimationSize: Integer;
begin
        Exit(Self.animationInterfaceArray[0].getAnimationSize());
end;
    

function TSimultaneousCompoundIndexAnimation.getSize: Integer;
begin
        Exit(Self.animationInterfaceArray[0].getSize());
end;
    

procedure TSimultaneousCompoundIndexAnimation.previousFrame;
var
  index: Integer;
begin
        index := System.Length(Self.animationInterfaceArray);
        while (TJava.PreDec(index)) >= (0) do begin
            Self.animationInterfaceArray[index].previousFrame();
        end;
end;
    

// throws Exception
procedure TSimultaneousCompoundIndexAnimation.nextFrame;
var
  index: Integer;
begin
        index := System.Length(Self.animationInterfaceArray);
        while (TJava.PreDec(index)) >= (0) do begin
            Self.animationInterfaceArray[index].nextFrame();
        end;
end;
    

procedure TSimultaneousCompoundIndexAnimation.setSequence(sequence: TArray<Integer>);
begin
end;
    

function TSimultaneousCompoundIndexAnimation.getSequence: TArray<Integer>;
begin
        Exit(TPrimitiveIntUtil.getArrayInstance());
end;
    

procedure TSimultaneousCompoundIndexAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
var
  index: Integer;
begin
        index := System.Length(Self.animationInterfaceArray);
        while (TJava.PreDec(index)) >= (0) do begin
            Self.animationInterfaceArray[index].paintXY(graphics_, x, y);
        end;
end;
    

procedure TSimultaneousCompoundIndexAnimation.paintThreedXYZ(graphics_: TGraphics; x: Integer; y: Integer; z: Integer);
var
  index: Integer;
begin
        index := System.Length(Self.animationInterfaceArray);
        while (TJava.PreDec(index)) >= (0) do begin
            Self.animationInterfaceArray[index].paintThreedXYZ(graphics_, x, y, z);
        end;
end;
    

// throws Exception
procedure TSimultaneousCompoundIndexAnimation.set_(gl_: IGL);
var
  index: Integer;
begin
        index := System.Length(Self.animationInterfaceArray);
        while (TJava.PreDec(index)) >= (0) do begin
            Self.animationInterfaceArray[index].set_(gl_);
        end;
end;
    

function TSimultaneousCompoundIndexAnimation.getAnimationInterfaceArray: TArray<TIndexedAnimation>;
begin
        Exit(Self.animationInterfaceArray);
end;
    

procedure TSimultaneousCompoundIndexAnimation.setAnimationInterfaceArray(animationInterfaceArray: TArray<TIndexedAnimation>);
begin
        Self.animationInterfaceArray := animationInterfaceArray;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

