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
// package org.allbinary.android.input
unit VirtualKeyboard;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, VirtualKeyboardEvent, AllBinaryEventObject;

type
  {AB:TYPES}
  TVirtualKeyboard = class(TObject)
  public
    class var NULL_VIRTUAL_KEYBOARD: TVirtualKeyboard;
    constructor Create;
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure onVirtualKeyboardEvent(virtualKeyboardEvent_: TVirtualKeyboardEvent); virtual;
        procedure forceHide; virtual;
        procedure hide; virtual;
  end;

implementation
uses
  ForcedLogUtil, EventStrings;


{AB:CODE}

constructor TVirtualKeyboard.Create;
begin
  inherited Create;
end;
    

procedure TVirtualKeyboard.onEvent(eventObject: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, TJava.Box(Self));
end;
    

procedure TVirtualKeyboard.onVirtualKeyboardEvent(virtualKeyboardEvent_: TVirtualKeyboardEvent);
begin
end;
    

procedure TVirtualKeyboard.forceHide;
begin
end;
    

procedure TVirtualKeyboard.hide;
begin
end;

initialization
  {AB:INITIALIZATION}
  TVirtualKeyboard.NULL_VIRTUAL_KEYBOARD := TVirtualKeyboard.Create();
  {AB:END}

end.

