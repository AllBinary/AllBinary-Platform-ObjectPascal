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
// package org.allbinary.game
unit GameAdState;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameAdStateBase, AdConfiguration, VirtualKeyboardEvent, VirtualKeyboardEventListenerInterface, AllBinaryEventObject, EventListenerInterface;

type
  {AB:TYPES}
  TGameAdState = class(TGameAdStateBase, IVirtualKeyboardEventListenerInterface, IEventListenerInterface)
  public
    function JavaObject: TObject;
        constructor Create(adConfiguration_: TAdConfiguration);
        procedure onVirtualKeyboardEvent(virtualKeyboardEvent_: TVirtualKeyboardEvent); virtual;
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
  end;

implementation
uses
  VirtualKeyboardEventHandler;


{AB:CODE}

function TGameAdState.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TGameAdState.Create(adConfiguration_: TAdConfiguration);
begin
        inherited Create(adConfiguration_);
        TVirtualKeyboardEventHandler.getInstance().addListenerInterface(Self);
end;
    

// throws Exception
procedure TGameAdState.onVirtualKeyboardEvent(virtualKeyboardEvent_: TVirtualKeyboardEvent);
begin
end;
    

procedure TGameAdState.onEvent(eventObject: TAllBinaryEventObject);
begin
        inherited onEvent(eventObject);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

