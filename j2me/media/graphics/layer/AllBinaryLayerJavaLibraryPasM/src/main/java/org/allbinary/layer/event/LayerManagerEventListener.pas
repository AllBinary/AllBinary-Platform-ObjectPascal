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
// package org.allbinary.layer.event
unit LayerManagerEventListener;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, LayerManagerEvent, LayerManagerEventListenerInterface, EventListenerInterface;

type
  {AB:TYPES}
  TLayerManagerEventListener = class(TInterfacedObject, ILayerManagerEventListenerInterface, IEventListenerInterface)
  public
    function JavaObject: TObject;
    constructor Create;
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure onCreateLayerManagerEvent(layerManagerEvent_: TLayerManagerEvent); virtual;
        procedure onDeleteLayerManagerEvent(layerManagerEvent_: TLayerManagerEvent); virtual;
  end;

implementation

{AB:CODE}

function TLayerManagerEventListener.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TLayerManagerEventListener.Create;
begin
  inherited Create;
end;
    

procedure TLayerManagerEventListener.onEvent(eventObject: TAllBinaryEventObject);
begin
end;
    

// throws Exception
procedure TLayerManagerEventListener.onCreateLayerManagerEvent(layerManagerEvent_: TLayerManagerEvent);
begin
end;
    

// throws Exception
procedure TLayerManagerEventListener.onDeleteLayerManagerEvent(layerManagerEvent_: TLayerManagerEvent);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

