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
// package org.allbinary.input.motion.gesture.observer
unit MotionGestureReceiveInterfaceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CompleteMotionGestureListenerInterface;

type
  {AB:TYPES}
  TMotionGestureReceiveInterfaceFactory = class(TObject)
  public
    constructor Create;
        class function getInstance: ICompleteMotionGestureListenerInterface; static;
  end;

implementation
uses
  ResolveCompleteMotionGestureListener, NullCompleteMotionGestureReceiver, MotionGestureConfiguration, MotionGestureConfigurationFactory;


{AB:CODE}

constructor TMotionGestureReceiveInterfaceFactory.Create;
begin
  inherited Create;
end;
    

class function TMotionGestureReceiveInterfaceFactory.getInstance: ICompleteMotionGestureListenerInterface;
var
  configuration: TMotionGestureConfiguration;
begin
        configuration := TMotionGestureConfigurationFactory.getInstance();
        if not (configuration.isExecutingActionsAllowed()) then begin
            Exit(TNullCompleteMotionGestureReceiver.Create());
        end else begin
            Exit(TResolveCompleteMotionGestureListener.Create());
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

