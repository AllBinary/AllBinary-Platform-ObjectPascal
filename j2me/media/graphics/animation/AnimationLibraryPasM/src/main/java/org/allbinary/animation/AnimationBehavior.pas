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
unit AnimationBehavior;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TAnimationBehavior = class(TObject)
  public
    class var instance: TAnimationBehavior;
    constructor Create;
        class function getInstance: TAnimationBehavior; static;
        procedure reset; virtual;
  end;

implementation

{AB:CODE}

constructor TAnimationBehavior.Create;
begin
  inherited Create;
end;
    

class function TAnimationBehavior.getInstance: TAnimationBehavior;
begin
        Exit(TAnimationBehavior.instance);
end;
    

procedure TAnimationBehavior.reset;
begin
end;

initialization
  {AB:INITIALIZATION}
  TAnimationBehavior.instance := TAnimationBehavior.Create();
  {AB:END}

end.

