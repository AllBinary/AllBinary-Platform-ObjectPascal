{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.animation
unit IndexedAnimationBehaviorFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AnimationBehavior, AnimationBehaviorFactory;

type
  {AB:TYPES}
  TIndexedAnimationBehaviorFactory = class(TAnimationBehaviorFactory)
  public
    frameDelayTime: Int64;
    loopTotal: Integer;
    procedure InitFields;
        constructor Create(loopTotal: Integer; frameDelayTime: Int64);
        function getOrCreateInstance: TAnimationBehavior; override;
  end;

implementation
uses
  IndexedAnimationBehavior;


{AB:CODE}

procedure TIndexedAnimationBehaviorFactory.InitFields;
begin
  
  
end;
    

constructor TIndexedAnimationBehaviorFactory.Create(loopTotal: Integer; frameDelayTime: Int64);
begin
    inherited Create;
    InitFields;
        Self.loopTotal := loopTotal;
        Self.frameDelayTime := frameDelayTime;
end;
    

function TIndexedAnimationBehaviorFactory.getOrCreateInstance: TAnimationBehavior;
begin
        Exit(TIndexedAnimationBehavior.Create(Self.loopTotal, Self.frameDelayTime));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

