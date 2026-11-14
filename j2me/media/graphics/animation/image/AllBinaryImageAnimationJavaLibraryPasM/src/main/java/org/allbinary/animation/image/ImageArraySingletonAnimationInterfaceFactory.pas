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
unit ImageArraySingletonAnimationInterfaceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, SingletonAnimationInterfaceFactory;

type
  {AB:TYPES}
  TImageArraySingletonAnimationInterfaceFactory = class(TSingletonAnimationInterfaceFactory)
  public
        constructor Create(imageArray: TArray<TImage>);
  end;

implementation
uses
  ImageArrayAnimation, Animation, AnimationBehavior, IndexedAnimation, IndexedAnimationToImageArrayUtil;


{AB:CODE}
    

constructor TImageArraySingletonAnimationInterfaceFactory.Create(imageArray: TArray<TImage>);
begin
        inherited Create(TImageArrayAnimation.Create(imageArray, TAnimationBehavior.getInstance()));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

