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
// package org.allbinary.graphics
unit ResizableListenerHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ResizableListenerInterface;

type
  {AB:TYPES}
  TResizableListenerHandler = class(TObject)
  public
    class var instance: TResizableListenerHandler;
    constructor Create;
        class function getInstance: TResizableListenerHandler; static;
        procedure setListener(resizableListenerInterface_: IResizableListenerInterface); virtual;
        procedure fire(isFullScreen: Boolean); virtual;
        procedure fireEvent(value: Boolean); virtual;
  end;

implementation

{AB:CODE}

constructor TResizableListenerHandler.Create;
begin
  inherited Create;
end;
    

class function TResizableListenerHandler.getInstance: TResizableListenerHandler;
begin
        Exit(TResizableListenerHandler.instance);
end;
    

procedure TResizableListenerHandler.setListener(resizableListenerInterface_: IResizableListenerInterface);
begin
end;
    

procedure TResizableListenerHandler.fire(isFullScreen: Boolean);
begin
end;
    

// throws Exception
procedure TResizableListenerHandler.fireEvent(value: Boolean);
begin
    TJava.MonitorEnter(Self);
    try
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  TResizableListenerHandler.instance := TResizableListenerHandler.Create();
  {AB:END}

end.

