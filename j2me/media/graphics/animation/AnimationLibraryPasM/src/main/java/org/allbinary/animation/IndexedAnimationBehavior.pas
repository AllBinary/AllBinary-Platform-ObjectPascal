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
unit IndexedAnimationBehavior;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AnimationBehavior;

type
  {AB:TYPES}
  TIndexedAnimationBehavior = class(TAnimationBehavior)
  public
    frameDelayTime: Int64;
    loopTotal: Integer;
    elapsedTime: Int64;
    loopIndex: Integer;
    procedure InitFields;
        constructor Create(loopTotal: Integer; frameDelayTime: Int64);
        procedure reset; override;
  end;

implementation

{AB:CODE}

procedure TIndexedAnimationBehavior.InitFields;
begin
  
  
  
  
end;
    

constructor TIndexedAnimationBehavior.Create(loopTotal: Integer; frameDelayTime: Int64);
begin
    inherited Create;
    InitFields;
        Self.loopTotal := loopTotal;
        Self.frameDelayTime := frameDelayTime;
end;
    

procedure TIndexedAnimationBehavior.reset;
begin
        Self.loopIndex := 0;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

