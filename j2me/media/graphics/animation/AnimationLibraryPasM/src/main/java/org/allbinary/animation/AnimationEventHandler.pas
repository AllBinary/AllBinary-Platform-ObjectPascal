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
unit AnimationEventHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicEventHandler;

type
  {AB:TYPES}
  TAnimationEventHandler = class(TBasicEventHandler)
  public
    class var eventHandler: TAnimationEventHandler;
        constructor Create;
        class function getInstance: TAnimationEventHandler; static;
  end;

implementation

{AB:CODE}
    

constructor TAnimationEventHandler.Create;
begin
    inherited Create;
end;
    

class function TAnimationEventHandler.getInstance: TAnimationEventHandler;
begin
    TJava.MonitorEnter(nil);
    try
        Exit(TAnimationEventHandler.eventHandler);
    finally
    TJava.MonitorExit(nil);
    end;
end;

initialization
  {AB:INITIALIZATION}
  TAnimationEventHandler.eventHandler := TAnimationEventHandler.Create();
  {AB:END}

end.

