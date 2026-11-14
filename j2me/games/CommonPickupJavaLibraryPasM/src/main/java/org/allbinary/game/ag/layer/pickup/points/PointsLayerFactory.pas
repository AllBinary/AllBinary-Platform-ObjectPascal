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
// package org.allbinary.game.ag.layer.pickup.points
unit PointsLayerFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryLayer, AllBinaryLayerFactoryInterface;

type
  {AB:TYPES}
  TPointsLayerFactory = class(TInterfacedObject, IAllBinaryLayerFactoryInterface)
  public
    points: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(points: Integer);
        function getInstance: TAllBinaryLayer; virtual;
  end;

implementation
uses
  PointsLayer;


{AB:CODE}

procedure TPointsLayerFactory.InitFields;
begin
  
end;

function TPointsLayerFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TPointsLayerFactory.Create(points: Integer);
begin
    inherited Create;
    InitFields;
        Self.points := points;
end;
    

// throws Exception
function TPointsLayerFactory.getInstance: TAllBinaryLayer;
begin
        Exit(TPointsLayer.Create(Self.points));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

