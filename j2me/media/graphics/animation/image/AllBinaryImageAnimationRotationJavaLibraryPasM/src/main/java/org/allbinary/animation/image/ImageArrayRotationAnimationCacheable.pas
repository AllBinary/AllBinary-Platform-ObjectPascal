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
unit ImageArrayRotationAnimationCacheable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AnimationBehavior, CacheableInterface, AdjustedImageArrayRotationAnimation;

type
  {AB:TYPES}
  TImageArrayRotationAnimationCacheable = class(TAdjustedImageArrayRotationAnimation, ICacheableInterface)
  public
    function JavaObject: TObject;
        constructor Create(anyType: TObject; animationBehavior_: TAnimationBehavior);
        function getKey: TObject; virtual;
        function toString: string; override;
  end;

implementation
uses
  ImageArrayRotationAnimationInfo, NullUtil, StringUtil;


{AB:CODE}

function TImageArrayRotationAnimationCacheable.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TImageArrayRotationAnimationCacheable.Create(anyType: TObject; animationBehavior_: TAnimationBehavior);
begin
        inherited Create((TImageArrayRotationAnimationInfo(TJava.ToObject(anyType))).getImageArray(), (TImageArrayRotationAnimationInfo(TJava.ToObject(anyType))).getAngleInfoP(), (TImageArrayRotationAnimationInfo(TJava.ToObject(anyType))).getTotalAngle(), (TImageArrayRotationAnimationInfo(TJava.ToObject(anyType))).getDx(), (TImageArrayRotationAnimationInfo(TJava.ToObject(anyType))).getDy(), animationBehavior_);
end;
    

function TImageArrayRotationAnimationCacheable.getKey: TObject;
begin
        Exit(TJava.Box(TNullUtil.getInstance().NULL_OBJECT));
end;
    

function TImageArrayRotationAnimationCacheable.toString: string;
begin
        Exit(TStringUtil.getInstance().EMPTY_STRING);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

