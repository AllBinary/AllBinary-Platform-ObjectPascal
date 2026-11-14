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
// package org.allbinary.game.ag.layer.pickup.points
unit PointsLayerCircularStaticPool;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryLayer, AllBinaryLayerCircularPool, AllBinaryLayerFactoryInterface;

type
  {AB:TYPES}
  TPointsLayerCircularStaticPool = class(TAllBinaryLayerCircularPool)
  public
        constructor Create(allbinaryLayerFactoryInterface_: IAllBinaryLayerFactoryInterface; total: Integer);
        procedure visit(sourceLayerInterface: TAllBinaryLayer); virtual;
  end;

implementation
uses
  PointsLayer, ScoreableInterface;


{AB:CODE}
    

constructor TPointsLayerCircularStaticPool.Create(allbinaryLayerFactoryInterface_: IAllBinaryLayerFactoryInterface; total: Integer);
begin
    inherited Create;
        inherited initAllBinaryLayerCircularPool(allbinaryLayerFactoryInterface_, total);
end;
    

// throws Exception
procedure TPointsLayerCircularStaticPool.visit(sourceLayerInterface: TAllBinaryLayer);
var
  pointsLayer_: TPointsLayer;
  scoreableInterface_: IScoreableInterface;
begin
        pointsLayer_ := TPointsLayer(TJava.ToObject(Self.getNextInstance()));
        scoreableInterface_ := (TJava.ToObject(sourceLayerInterface) as IScoreableInterface);
        pointsLayer_.visit(scoreableInterface_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

