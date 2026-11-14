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
unit ImageArrayRotationAnimationCacheableInterfaceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CacheableInterface, CacheableInterfaceFactoryInterface;

type
  {AB:TYPES}
  TImageArrayRotationAnimationCacheableInterfaceFactory = class(TInterfacedObject, ICacheableInterfaceFactoryInterface)
  public
    function JavaObject: TObject;
    constructor Create;
        function getInstance(key: TObject): ICacheableInterface; virtual;
  end;

implementation
uses
  ImageArrayRotationAnimationCacheable, AnimationBehavior;


{AB:CODE}

function TImageArrayRotationAnimationCacheableInterfaceFactory.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TImageArrayRotationAnimationCacheableInterfaceFactory.Create;
begin
  inherited Create;
end;
    

// throws Exception
function TImageArrayRotationAnimationCacheableInterfaceFactory.getInstance(key: TObject): ICacheableInterface;
begin
        Exit(TImageArrayRotationAnimationCacheable.Create(TJava.Box(key), TAnimationBehavior.getInstance()));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

