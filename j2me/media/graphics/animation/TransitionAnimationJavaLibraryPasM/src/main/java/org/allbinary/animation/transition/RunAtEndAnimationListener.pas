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
// package org.allbinary.animation.transition
unit RunAtEndAnimationListener;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AnimationListenerInterface;

type
  {AB:TYPES}
  TRunAtEndAnimationListener = class(TInterfacedObject, IAnimationListenerInterface)
  public
    runnable: IRunnable;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(runnable: IRunnable);
        procedure onPlatformAnimationStart; virtual;
        procedure onPlatformAnimationEnd; virtual;
        procedure onPlatformAnimationRepeat; virtual;
  end;

implementation

{AB:CODE}

procedure TRunAtEndAnimationListener.InitFields;
begin
  
end;

function TRunAtEndAnimationListener.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TRunAtEndAnimationListener.Create(runnable: IRunnable);
begin
    inherited Create;
    InitFields;
        Self.runnable := runnable;
end;
    

procedure TRunAtEndAnimationListener.onPlatformAnimationStart;
begin
end;
    

procedure TRunAtEndAnimationListener.onPlatformAnimationEnd;
begin
end;
    

procedure TRunAtEndAnimationListener.onPlatformAnimationRepeat;
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

