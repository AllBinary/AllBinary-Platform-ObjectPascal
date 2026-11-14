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
unit LayerManagerEvent;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryLayer, ABLayerManager, AllBinaryEventObject;

type
  {AB:TYPES}
  TLayerManagerEvent = class(TAllBinaryEventObject)
  public
    layerInterface: TAllBinaryLayer;
    crud: string;
    procedure InitFields;
        constructor Create(layerManager: TABLayerManager; crud: string);
        function getLayerInterface: TAllBinaryLayer; virtual;
        procedure setLayerInterface(layerInterface: TAllBinaryLayer); virtual;
        function toString: string; override;
  end;

implementation
uses
  StringMaker;


{AB:CODE}

procedure TLayerManagerEvent.InitFields;
begin
  Self.layerInterface := TAllBinaryLayer.NULL_ALLBINARY_LAYER;
  
end;
    

constructor TLayerManagerEvent.Create(layerManager: TABLayerManager; crud: string);
begin
        inherited Create(layerManager);
        InitFields;
        Self.crud := crud;
end;
    

function TLayerManagerEvent.getLayerInterface: TAllBinaryLayer;
begin
        Exit(Self.layerInterface);
end;
    

procedure TLayerManagerEvent.setLayerInterface(layerInterface: TAllBinaryLayer);
begin
        Self.layerInterface := layerInterface;
end;
    

function TLayerManagerEvent.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('LayerManagerEvent: '#10'');
        stringBuffer.append('LayerInterface: ');
        stringBuffer.append(Self.getLayerInterface().toString());
        stringBuffer.append(''#10'CRUD: ');
        stringBuffer.append(Self.crud);
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

