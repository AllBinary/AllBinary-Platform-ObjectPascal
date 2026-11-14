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
// package org.allbinary.layer.relationship
unit RelativeLayerRelationship;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GPoint, RelativeRelationship, AllBinaryLayer, BasicArrayList;

type
  {AB:TYPES}
  TRelativeLayerRelationship = class(TRelativeRelationship)
  public
    layer: TAllBinaryLayer;
    procedure InitFields;
        constructor Create(layer: TAllBinaryLayer; point: TGPoint; typesAllowedList: TBasicArrayList);
        function getX: Integer; override;
        function getY: Integer; override;
        function getZ: Integer; override;
  end;

implementation

{AB:CODE}

procedure TRelativeLayerRelationship.InitFields;
begin
  Self.layer := TAllBinaryLayer.NULL_ALLBINARY_LAYER;
end;
    

constructor TRelativeLayerRelationship.Create(layer: TAllBinaryLayer; point: TGPoint; typesAllowedList: TBasicArrayList);
begin
        inherited Create(point, typesAllowedList);
        InitFields;
        Self.layer := layer;
end;
    

function TRelativeLayerRelationship.getX: Integer;
begin
        Exit((Self.layer.getXP()) + (inherited getX()));
end;
    

function TRelativeLayerRelationship.getY: Integer;
begin
        Exit((Self.layer.getYP()) + (inherited getY()));
end;
    

function TRelativeLayerRelationship.getZ: Integer;
begin
        Exit((Self.layer.getZP()) + (inherited getZ()));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

