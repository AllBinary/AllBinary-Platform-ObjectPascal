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
unit ImageArrayRotationAnimationPool;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayListResetablePool, CacheableInterface, CacheableInterfaceFactoryInterface, PoolInterface;

type
  {AB:TYPES}
  TImageArrayRotationAnimationPool = class(TBasicArrayListResetablePool)
  public
    class var IMAGE_ROTATION_ANIMATION_POOL: IPoolInterface;
        constructor Create(cacheableInterfaceFactoryInterface_: ICacheableInterfaceFactoryInterface);
        class function getInstance: IPoolInterface; static;
        function remove(key: TObject): ICacheableInterface; override;
  end;

implementation
uses
  ImageArrayRotationAnimationCacheableInterfaceFactory, ImageArrayRotationAnimationInfo, ImageArrayRotationAnimationCacheable;


{AB:CODE}
    

constructor TImageArrayRotationAnimationPool.Create(cacheableInterfaceFactoryInterface_: ICacheableInterfaceFactoryInterface);
begin
        inherited Create(cacheableInterfaceFactoryInterface_);
end;
    

class function TImageArrayRotationAnimationPool.getInstance: IPoolInterface;
begin
        Exit(TImageArrayRotationAnimationPool.IMAGE_ROTATION_ANIMATION_POOL);
end;
    

// throws Exception
function TImageArrayRotationAnimationPool.remove(key: TObject): ICacheableInterface;
var
  cacheableInterface_: ICacheableInterface;
  allBinaryImageRotationAnimationInfo: TImageArrayRotationAnimationInfo;
  imageArrayRotationAnimationCacheable_: TImageArrayRotationAnimationCacheable;
begin
        cacheableInterface_ := inherited remove(key);
        allBinaryImageRotationAnimationInfo := TImageArrayRotationAnimationInfo(TJava.ToObject(key));
        imageArrayRotationAnimationCacheable_ := (TImageArrayRotationAnimationCacheable(TJava.ToObject(cacheableInterface_)));
        imageArrayRotationAnimationCacheable_.setImageArray(allBinaryImageRotationAnimationInfo.getImageArray());
        Exit(cacheableInterface_);
end;

initialization
  {AB:INITIALIZATION}
  TImageArrayRotationAnimationPool.IMAGE_ROTATION_ANIMATION_POOL := TImageArrayRotationAnimationPool.Create(TImageArrayRotationAnimationCacheableInterfaceFactory.Create());
  {AB:END}

end.

