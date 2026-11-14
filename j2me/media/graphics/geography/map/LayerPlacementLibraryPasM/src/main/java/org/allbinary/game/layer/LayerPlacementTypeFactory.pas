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
unit LayerPlacementTypeFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LayerPlacementType;

type
  {AB:TYPES}
  TLayerPlacementTypeFactory = class(TObject)
  public
    MAP: TLayerPlacementType;
    LEFT: TLayerPlacementType;
    DOWN: TLayerPlacementType;
    UP: TLayerPlacementType;
    RIGHT: TLayerPlacementType;
    class var instance: TLayerPlacementTypeFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TLayerPlacementTypeFactory; static;
  end;

implementation
uses
  DirectionFactory;


{AB:CODE}

procedure TLayerPlacementTypeFactory.InitFields;
begin
  Self.MAP := TLayerPlacementType.Create(High(Integer));
  Self.LEFT := TLayerPlacementType.Create(TDirectionFactory.getInstance().LEFT.getValue());
  Self.DOWN := TLayerPlacementType.Create(TDirectionFactory.getInstance().DOWN.getValue());
  Self.UP := TLayerPlacementType.Create(TDirectionFactory.getInstance().UP.getValue());
  Self.RIGHT := TLayerPlacementType.Create(TDirectionFactory.getInstance().RIGHT.getValue());
end;

constructor TLayerPlacementTypeFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TLayerPlacementTypeFactory.getInstance: TLayerPlacementTypeFactory;
begin
        Exit(TLayerPlacementTypeFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TLayerPlacementTypeFactory.instance := TLayerPlacementTypeFactory.Create();
  {AB:END}

end.

