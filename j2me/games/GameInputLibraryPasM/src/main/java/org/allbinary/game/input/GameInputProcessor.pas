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
// package org.allbinary.game.input
unit GameInputProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameKeyEvent, AllBinaryLayerManager;

type
  {AB:TYPES}
  TGameInputProcessor = class(TObject)
  public
    class var instance: TGameInputProcessor;
        class function getInstance: TGameInputProcessor; static;
        constructor Create;
        procedure processEvent(allbinaryLayerManager_: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent); virtual;
        procedure processReleasedEvent(allbinaryLayerManager_: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent); virtual;
        procedure processAnalog(allbinaryLayerManager_: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent; analogValue: Integer); virtual;
        procedure process(allbinaryLayerManager_: TAllBinaryLayerManager; keyAsInteger: Integer); virtual;
        procedure processReleased(allbinaryLayerManager_: TAllBinaryLayerManager; keyAsInteger: Integer); virtual;
  end;

implementation

{AB:CODE}
    

class function TGameInputProcessor.getInstance: TGameInputProcessor;
begin
        Exit(TGameInputProcessor.instance);
end;
    

constructor TGameInputProcessor.Create;
begin
    inherited Create;
end;
    

// throws Exception
procedure TGameInputProcessor.processEvent(allbinaryLayerManager_: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent);
begin
end;
    

// throws Exception
procedure TGameInputProcessor.processReleasedEvent(allbinaryLayerManager_: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent);
begin
end;
    

// throws Exception
procedure TGameInputProcessor.processAnalog(allbinaryLayerManager_: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent; analogValue: Integer);
begin
end;
    

// throws Exception
procedure TGameInputProcessor.process(allbinaryLayerManager_: TAllBinaryLayerManager; keyAsInteger: Integer);
begin
end;
    

// throws Exception
procedure TGameInputProcessor.processReleased(allbinaryLayerManager_: TAllBinaryLayerManager; keyAsInteger: Integer);
begin
end;

initialization
  {AB:INITIALIZATION}
  TGameInputProcessor.instance := TGameInputProcessor.Create();
  {AB:END}

end.

