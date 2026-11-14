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
unit IndexedAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings, AnimationBehavior, Animation, IndexedAnimationInterface, AnimationInterface, LocationPaintableInterface, SequenceInterface, SequentialAnimationInterface;

type
  {AB:TYPES}
  TIndexedAnimation = class(TAnimation, IIndexedAnimationInterface, IAnimationInterface, ILocationPaintableInterface, ISequenceInterface, ISequentialAnimationInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    animationBehaviorP: TAnimationBehavior;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(animationBehavior_: TAnimationBehavior);
        function getAnimationBehavior: TAnimationBehavior; virtual;
        procedure reset; virtual;
        procedure setFrame(index: Integer); virtual;
        function getFrame: Integer; virtual;
        function getAnimationSize: Integer; virtual;
        function getSize: Integer; virtual;
        procedure previousFrame; virtual;
        function isLastFrame: Boolean; virtual;
        procedure setSequence(sequence: TArray<Integer>); virtual;
        function getSequence: TArray<Integer>; virtual;
        procedure setState(indexedAnimation_: TIndexedAnimation); virtual;
        function getWidth: Integer; virtual;
        function getHeight: Integer; virtual;
  end;

implementation
uses
  PrimitiveIntUtil;


{AB:CODE}

procedure TIndexedAnimation.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
end;

function TIndexedAnimation.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TIndexedAnimation.Create(animationBehavior_: TAnimationBehavior);
begin
    inherited Create;
    InitFields;
        Self.animationBehaviorP := animationBehavior_;
end;
    

function TIndexedAnimation.getAnimationBehavior: TAnimationBehavior;
begin
        Exit(Self.animationBehaviorP);
end;
    

procedure TIndexedAnimation.reset;
begin
        Self.animationBehaviorP.reset();
        Self.setFrame(0);
end;
    

procedure TIndexedAnimation.setFrame(index: Integer);
begin
end;
    

function TIndexedAnimation.getFrame: Integer;
begin
        Exit(0);
end;
    

// throws Exception
function TIndexedAnimation.getAnimationSize: Integer;
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

function TIndexedAnimation.getSize: Integer;
begin
        Exit(0);
end;
    

procedure TIndexedAnimation.previousFrame;
begin
end;
    

function TIndexedAnimation.isLastFrame: Boolean;
begin
        if (Self.getFrame()) = ((Self.getSize()) - (1)) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

procedure TIndexedAnimation.setSequence(sequence: TArray<Integer>);
begin
end;
    

function TIndexedAnimation.getSequence: TArray<Integer>;
begin
        Exit(TPrimitiveIntUtil.getArrayInstance());
end;
    

procedure TIndexedAnimation.setState(indexedAnimation_: TIndexedAnimation);
begin
        Self.setFrame(indexedAnimation_.getFrame());
        Self.setDx(indexedAnimation_.getDx());
        Self.setDy(indexedAnimation_.getDy());
end;
    

function TIndexedAnimation.getWidth: Integer;
begin
        Exit(0);
end;
    

function TIndexedAnimation.getHeight: Integer;
begin
        Exit(0);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

