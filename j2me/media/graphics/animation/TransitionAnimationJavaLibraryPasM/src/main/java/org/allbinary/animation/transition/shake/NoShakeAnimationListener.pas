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
// package org.allbinary.animation.transition.shake
unit NoShakeAnimationListener;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ShakeAnimationListener;

type
  {AB:TYPES}
  TNoShakeAnimationListener = class(TShakeAnimationListener)
  public
    class var NO_SHAKE_ANIMATION_LISTENER: TShakeAnimationListener;
    constructor Create;
  end;

implementation

{AB:CODE}

constructor TNoShakeAnimationListener.Create;
begin
  inherited Create;
end;

initialization
  {AB:INITIALIZATION}
  TNoShakeAnimationListener.NO_SHAKE_ANIMATION_LISTENER := TNoShakeAnimationListener.Create();
  {AB:END}

end.

