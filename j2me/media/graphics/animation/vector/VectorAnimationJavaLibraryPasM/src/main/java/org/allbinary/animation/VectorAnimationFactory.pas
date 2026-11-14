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
unit VectorAnimationFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicColor, VectorAnimation, VectorAnimationFactoryInterface;

type
  {AB:TYPES}
  TVectorAnimationFactory = class(TInterfacedObject, IVectorAnimationFactoryInterface)
  public
    function JavaObject: TObject;
    constructor Create;
        function getInstance(points: TArray<TArray<TArray<Integer>>>; basicColor_: TBasicColor): TVectorAnimation; virtual;
  end;

implementation
uses
  AnimationBehavior;


{AB:CODE}

function TVectorAnimationFactory.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TVectorAnimationFactory.Create;
begin
  inherited Create;
end;
    

function TVectorAnimationFactory.getInstance(points: TArray<TArray<TArray<Integer>>>; basicColor_: TBasicColor): TVectorAnimation;
begin
        Exit(TVectorAnimation.Create(points, basicColor_, TAnimationBehavior.getInstance()));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

