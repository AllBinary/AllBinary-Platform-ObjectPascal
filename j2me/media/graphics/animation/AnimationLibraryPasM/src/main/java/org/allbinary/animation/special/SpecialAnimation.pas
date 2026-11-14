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
// package org.allbinary.animation.special
unit SpecialAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AnimationBehavior, IndexedAnimation, SpecialAnimationInterface, AnimationInterface, IndexedAnimationInterface, LocationPaintableInterface, SequenceInterface, SequentialAnimationInterface;

type
  {AB:TYPES}
  TSpecialAnimation = class(TIndexedAnimation, ISpecialAnimationInterface, IAnimationInterface, IIndexedAnimationInterface, ILocationPaintableInterface, ISequenceInterface, ISequentialAnimationInterface)
  public
    class var NULL_SPECIAL_ANIMATION: TSpecialAnimation;
    function JavaObject: TObject;
        class function getInstance: TSpecialAnimation; static;
        constructor Create(animationBehavior_: TAnimationBehavior);
        procedure nextFrame; virtual;
        procedure setLastFrame; virtual;
        function isComplete: Boolean; virtual;
        procedure open; virtual;
        procedure close; virtual;
        procedure process; virtual;
  end;

implementation
uses
  IndexedAnimationBehavior;


{AB:CODE}

function TSpecialAnimation.JavaObject: TObject;
begin
  Result := Self;
end;
    

class function TSpecialAnimation.getInstance: TSpecialAnimation;
begin
        Exit(TSpecialAnimation.NULL_SPECIAL_ANIMATION);
end;
    

constructor TSpecialAnimation.Create(animationBehavior_: TAnimationBehavior);
begin
        inherited Create(animationBehavior_);
end;
    

procedure TSpecialAnimation.nextFrame;
var
  indexedAnimationBehavior_: TIndexedAnimationBehavior;
begin
        indexedAnimationBehavior_ := (TIndexedAnimationBehavior(TJava.ToObject(Self.animationBehaviorP)));
        Inc(indexedAnimationBehavior_.loopIndex);
end;
    

procedure TSpecialAnimation.setLastFrame;
begin
end;
    

function TSpecialAnimation.isComplete: Boolean;
begin
        Exit(False);
end;
    

procedure TSpecialAnimation.open;
begin
end;
    

procedure TSpecialAnimation.close;
begin
end;
    

procedure TSpecialAnimation.process;
begin
end;

initialization
  {AB:INITIALIZATION}
  TSpecialAnimation.NULL_SPECIAL_ANIMATION := TSpecialAnimation.Create(TIndexedAnimationBehavior.Create(1, 250));
  {AB:END}

end.

