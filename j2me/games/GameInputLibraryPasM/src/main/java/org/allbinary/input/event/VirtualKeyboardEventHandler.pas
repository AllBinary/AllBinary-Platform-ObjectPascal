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
// package org.allbinary.input.event
unit VirtualKeyboardEventHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, EventListenerInterface, BasicEventHandler, VirtualKeyboardEvent;

type
  {AB:TYPES}
  TVirtualKeyboardEventHandler = class(TBasicEventHandler)
  public
    SHOW_EVENT: TVirtualKeyboardEvent;
    HIDE_EVENT: TVirtualKeyboardEvent;
    class var gameKeyEventHandler: TVirtualKeyboardEventHandler;
    procedure InitFields;
        constructor Create;
        class function getInstance: TVirtualKeyboardEventHandler; static;
        procedure process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface); override;
        procedure open; virtual;
        procedure close; virtual;
  end;

implementation
uses
  VirtualKeyboardEventListenerInterface, BooleanFactory;


{AB:CODE}

procedure TVirtualKeyboardEventHandler.InitFields;
begin
  Self.SHOW_EVENT := TVirtualKeyboardEvent.Create(TJava.Box(TBooleanFactory.getInstance().TRUE_));
  Self.HIDE_EVENT := TVirtualKeyboardEvent.Create(TJava.Box(TBooleanFactory.getInstance().FALSE_));
end;
    

constructor TVirtualKeyboardEventHandler.Create;
begin
    inherited Create;
    InitFields;
end;
    

class function TVirtualKeyboardEventHandler.getInstance: TVirtualKeyboardEventHandler;
begin
        Exit(TVirtualKeyboardEventHandler.gameKeyEventHandler);
end;
    

// throws Exception
procedure TVirtualKeyboardEventHandler.process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface);
var
  virtualKeyboardEventListenerInterface_: IVirtualKeyboardEventListenerInterface;
begin
        virtualKeyboardEventListenerInterface_ := (TJava.ToObject(eventListenerInterface_) as IVirtualKeyboardEventListenerInterface);
        virtualKeyboardEventListenerInterface_.onVirtualKeyboardEvent(TVirtualKeyboardEvent(TJava.ToObject(eventObject)));
end;
    

procedure TVirtualKeyboardEventHandler.open;
begin
        try
            SysUtils.Sleep(120);
            Self.fireEvent(Self.SHOW_EVENT);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'open', TJava.Box(e));
            end;
        end;
end;
    

// throws Exception
procedure TVirtualKeyboardEventHandler.close;
begin
        try
            SysUtils.Sleep(120);
            Self.fireEvent(Self.HIDE_EVENT);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.CLOSE, TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TVirtualKeyboardEventHandler.gameKeyEventHandler := TVirtualKeyboardEventHandler.Create();
  {AB:END}

end.

