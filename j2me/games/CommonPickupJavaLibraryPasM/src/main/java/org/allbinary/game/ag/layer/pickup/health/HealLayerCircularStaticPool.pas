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
// package org.allbinary.game.ag.layer.pickup.health
unit HealLayerCircularStaticPool;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryLayer, AllBinaryLayerCircularPool, AllBinaryLayerFactoryInterface;

type
  {AB:TYPES}
  THealLayerCircularStaticPool = class(TAllBinaryLayerCircularPool)
  public
        constructor Create(allbinaryLayerFactoryInterface_: IAllBinaryLayerFactoryInterface; total: Integer);
        procedure visit(sourceLayerInterface: TAllBinaryLayer); virtual;
  end;

implementation
uses
  HealLayer, HealthInterface, HealthInterfaceCompositeInterface;


{AB:CODE}
    

constructor THealLayerCircularStaticPool.Create(allbinaryLayerFactoryInterface_: IAllBinaryLayerFactoryInterface; total: Integer);
begin
    inherited Create;
        inherited initAllBinaryLayerCircularPool(allbinaryLayerFactoryInterface_, total);
end;
    

// throws Exception
procedure THealLayerCircularStaticPool.visit(sourceLayerInterface: TAllBinaryLayer);
var
  healLayer_: THealLayer;
  healthInterfaceCompositeInterface_: IHealthInterfaceCompositeInterface;
  healthInterface_: IHealthInterface;
begin
        healLayer_ := THealLayer(TJava.ToObject(Self.getNextInstance()));
        healthInterfaceCompositeInterface_ := (TJava.ToObject(sourceLayerInterface) as IHealthInterfaceCompositeInterface);
        healthInterface_ := healthInterfaceCompositeInterface_.getHealthInterface();
        healLayer_.visit(healthInterface_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

