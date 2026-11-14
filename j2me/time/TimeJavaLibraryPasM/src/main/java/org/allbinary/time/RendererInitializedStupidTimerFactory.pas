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
// package org.allbinary.time
unit RendererInitializedStupidTimerFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StupidTimer;

type
  {AB:TYPES}
  TRendererInitializedStupidTimerFactory = class(TObject)
  public
    class var instance: TStupidTimer;
    constructor Create;
        class function getInstance: TStupidTimer; static;
  end;

implementation

{AB:CODE}

constructor TRendererInitializedStupidTimerFactory.Create;
begin
  inherited Create;
end;
    

class function TRendererInitializedStupidTimerFactory.getInstance: TStupidTimer;
begin
        Exit(TRendererInitializedStupidTimerFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TRendererInitializedStupidTimerFactory.instance := TStupidTimer.Create();
  {AB:END}

end.

