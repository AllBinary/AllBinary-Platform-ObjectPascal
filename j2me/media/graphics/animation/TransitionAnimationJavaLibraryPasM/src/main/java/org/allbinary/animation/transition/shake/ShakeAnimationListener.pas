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
unit ShakeAnimationListener;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ShakeEvent;

type
  {AB:TYPES}
  TShakeAnimationListener = class(TObject)
  public
    constructor Create;
        procedure onSmallShakeEvent; virtual;
        procedure onMediumShakeEvent; virtual;
        procedure onLargeShakeEvent; virtual;
        procedure onShakeEvent(shakeEvent_: TShakeEvent); virtual;
        function getType: Integer; virtual;
  end;

implementation

{AB:CODE}

constructor TShakeAnimationListener.Create;
begin
  inherited Create;
end;
    

procedure TShakeAnimationListener.onSmallShakeEvent;
begin
end;
    

procedure TShakeAnimationListener.onMediumShakeEvent;
begin
end;
    

procedure TShakeAnimationListener.onLargeShakeEvent;
begin
end;
    

procedure TShakeAnimationListener.onShakeEvent(shakeEvent_: TShakeEvent);
begin
end;
    

function TShakeAnimationListener.getType: Integer;
begin
        Exit(0);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

