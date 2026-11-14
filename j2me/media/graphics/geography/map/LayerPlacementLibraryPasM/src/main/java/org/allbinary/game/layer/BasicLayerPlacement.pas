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
// package org.allbinary.game.layer
unit BasicLayerPlacement;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LayerPlacementType;

type
  {AB:TYPES}
  TBasicLayerPlacement = class(TObject)
  public
    layerType: TLayerPlacementType;
    width: Integer;
    height: Integer;
    procedure InitFields;
        constructor Create(layerType: TLayerPlacementType; width: Integer; height: Integer);
        function getWidth: Integer; virtual;
        function getHeight: Integer; virtual;
        function getLayerType: TLayerPlacementType; virtual;
        procedure setLayerType(layerType: TLayerPlacementType); virtual;
  end;

implementation

{AB:CODE}

procedure TBasicLayerPlacement.InitFields;
begin
  
  
  
end;
    

constructor TBasicLayerPlacement.Create(layerType: TLayerPlacementType; width: Integer; height: Integer);
begin
    inherited Create;
    InitFields;
        Self.layerType := layerType;
        Self.width := width;
        Self.height := height;
end;
    

function TBasicLayerPlacement.getWidth: Integer;
begin
        Exit(Self.width);
end;
    

function TBasicLayerPlacement.getHeight: Integer;
begin
        Exit(Self.height);
end;
    

function TBasicLayerPlacement.getLayerType: TLayerPlacementType;
begin
        Exit(Self.layerType);
end;
    

procedure TBasicLayerPlacement.setLayerType(layerType: TLayerPlacementType);
begin
        Self.layerType := layerType;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

