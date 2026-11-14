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
// package org.allbinary.game.ag.layer.pickup.life
unit LifeLayerCircularStaticPool;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryLayer, AllBinaryLayerCircularPool, AllBinaryLayerFactoryInterface;

type
  {AB:TYPES}
  TLifeLayerCircularStaticPool = class(TAllBinaryLayerCircularPool)
  public
        constructor Create(allbinaryLayerFactoryInterface_: IAllBinaryLayerFactoryInterface; total: Integer);
        procedure visit(sourceLayerInterface: TAllBinaryLayer); virtual;
  end;

implementation
uses
  LifeLayer, Life, LifeInterfaceCompositeInterface;


{AB:CODE}
    

constructor TLifeLayerCircularStaticPool.Create(allbinaryLayerFactoryInterface_: IAllBinaryLayerFactoryInterface; total: Integer);
begin
    inherited Create;
        inherited initAllBinaryLayerCircularPool(allbinaryLayerFactoryInterface_, total);
end;
    

// throws Exception
procedure TLifeLayerCircularStaticPool.visit(sourceLayerInterface: TAllBinaryLayer);
var
  lifeLayer_: TLifeLayer;
  lifeInterfaceCompositeInterface_: ILifeInterfaceCompositeInterface;
  lifeInterface: TLife;
begin
        lifeLayer_ := TLifeLayer(TJava.ToObject(Self.getNextInstance()));
        lifeInterfaceCompositeInterface_ := (TJava.ToObject(sourceLayerInterface) as ILifeInterfaceCompositeInterface);
        lifeInterface := lifeInterfaceCompositeInterface_.getLifeInterface();
        lifeLayer_.visit(lifeInterface);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

