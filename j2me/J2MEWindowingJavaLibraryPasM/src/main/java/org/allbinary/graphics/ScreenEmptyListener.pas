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
unit ScreenEmptyListener;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ScreenListenerInterface;

type
  {AB:TYPES}
  TScreenEmptyListener = class(TInterfacedObject, IScreenListenerInterface)
  public
    function JavaObject: TObject;
    constructor Create;
        procedure onFullScreen(isFullScreen: Boolean); virtual;
        procedure onFullScreenDisplay; virtual;
  end;

implementation

{AB:CODE}

function TScreenEmptyListener.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TScreenEmptyListener.Create;
begin
  inherited Create;
end;
    

procedure TScreenEmptyListener.onFullScreen(isFullScreen: Boolean);
begin
end;
    

procedure TScreenEmptyListener.onFullScreenDisplay;
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

