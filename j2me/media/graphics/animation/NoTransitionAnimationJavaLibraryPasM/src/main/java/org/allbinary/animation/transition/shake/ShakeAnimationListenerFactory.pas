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
unit ShakeAnimationListenerFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ShakeAnimationListener;

type
  {AB:TYPES}
  TShakeAnimationListenerFactory = class(TObject)
  public
    constructor Create;
        class function getInstance: TShakeAnimationListener; static;
  end;

implementation
uses
  NoShakeAnimationListener;


{AB:CODE}

constructor TShakeAnimationListenerFactory.Create;
begin
  inherited Create;
end;
    

class function TShakeAnimationListenerFactory.getInstance: TShakeAnimationListener;
begin
        Exit(TNoShakeAnimationListener.Create());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

