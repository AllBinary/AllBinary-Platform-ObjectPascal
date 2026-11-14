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
unit AnimationBehaviorFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AnimationBehavior;

type
  {AB:TYPES}
  TAnimationBehaviorFactory = class(TObject)
  public
    class var instance: TAnimationBehaviorFactory;
    constructor Create;
        class function getInstance: TAnimationBehaviorFactory; static;
        function getOrCreateInstance: TAnimationBehavior; virtual;
  end;

implementation

{AB:CODE}

constructor TAnimationBehaviorFactory.Create;
begin
  inherited Create;
end;
    

class function TAnimationBehaviorFactory.getInstance: TAnimationBehaviorFactory;
begin
        Exit(TAnimationBehaviorFactory.instance);
end;
    

function TAnimationBehaviorFactory.getOrCreateInstance: TAnimationBehavior;
begin
        Exit(TAnimationBehavior.getInstance());
end;

initialization
  {AB:INITIALIZATION}
  TAnimationBehaviorFactory.instance := TAnimationBehaviorFactory.Create();
  {AB:END}

end.

