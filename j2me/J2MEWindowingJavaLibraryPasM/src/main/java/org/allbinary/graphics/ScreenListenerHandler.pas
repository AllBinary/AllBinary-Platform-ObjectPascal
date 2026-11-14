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
unit ScreenListenerHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ScreenListenerInterface;

type
  {AB:TYPES}
  TScreenListenerHandler = class(TObject)
  public
    screenListenerInterface: IScreenListenerInterface;
    class var instance: TScreenListenerHandler;
    procedure InitFields;
    constructor Create;
        class function getInstance: TScreenListenerHandler; static;
        procedure setListener(screenListenerInterface_: IScreenListenerInterface); virtual;
        procedure fireWithState(isFullScreen: Boolean); virtual;
        procedure fire; virtual;
  end;

implementation
uses
  ScreenEmptyListener;


{AB:CODE}

procedure TScreenListenerHandler.InitFields;
begin
  Self.screenListenerInterface := TScreenEmptyListener.Create();
end;

constructor TScreenListenerHandler.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TScreenListenerHandler.getInstance: TScreenListenerHandler;
begin
        Exit(TScreenListenerHandler.instance);
end;
    

procedure TScreenListenerHandler.setListener(screenListenerInterface_: IScreenListenerInterface);
begin
        Self.screenListenerInterface := screenListenerInterface_;
end;
    

procedure TScreenListenerHandler.fireWithState(isFullScreen: Boolean);
begin
        Self.screenListenerInterface.onFullScreen(isFullScreen);
end;
    

procedure TScreenListenerHandler.fire;
begin
        Self.screenListenerInterface.onFullScreenDisplay();
end;

initialization
  {AB:INITIALIZATION}
  TScreenListenerHandler.instance := TScreenListenerHandler.Create();
  {AB:END}

end.

