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
// package org.allbinary.game.tracking
unit TrackingEvent;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryLayer, AllBinaryEventObject;

type
  {AB:TYPES}
  TTrackingEvent = class(TAllBinaryEventObject)
  public
    layerInterface: TAllBinaryLayer;
    procedure InitFields;
        constructor Create(allBinaryLayerInterface: TObject);
        procedure init(anyType: TObject); virtual;
        function getLayerInterface: TAllBinaryLayer; virtual;
        procedure setLayerInterface(layerInterface: TAllBinaryLayer);
        procedure setLayerInterfaceForCircularStaticPool(layerInterface: TAllBinaryLayer); virtual;
        function toString: string; override;
  end;

implementation
uses
  TrackingEventHandler, StringMaker;


{AB:CODE}

procedure TTrackingEvent.InitFields;
begin
  Self.layerInterface := TAllBinaryLayer.NULL_ALLBINARY_LAYER;
end;
    

constructor TTrackingEvent.Create(allBinaryLayerInterface: TObject);
begin
        inherited Create(allBinaryLayerInterface);
        InitFields;
        if (allBinaryLayerInterface) <> (TTrackingEventHandler.getInstance()) then begin
            Self.setLayerInterface(TAllBinaryLayer(TJava.ToObject(allBinaryLayerInterface)));
        end;
end;
    

procedure TTrackingEvent.init(anyType: TObject);
begin
        Self.setSource(TJava.Box(anyType));
end;
    

function TTrackingEvent.getLayerInterface: TAllBinaryLayer;
begin
        Exit(Self.layerInterface);
end;
    

procedure TTrackingEvent.setLayerInterface(layerInterface: TAllBinaryLayer);
begin
        Self.layerInterface := layerInterface;
end;
    

procedure TTrackingEvent.setLayerInterfaceForCircularStaticPool(layerInterface: TAllBinaryLayer);
begin
        Self.layerInterface := layerInterface;
end;
    

function TTrackingEvent.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('TrackingEvent: '#10'');
        stringBuffer.append('LayerInterface: ');
        stringBuffer.append(Self.layerInterface.toString());
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

