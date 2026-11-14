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
// package org.allbinary.game.ag.layer.pickup.health
unit HealLayerFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryLayer, AllBinaryLayerFactoryInterface;

type
  {AB:TYPES}
  THealLayerFactory = class(TInterfacedObject, IAllBinaryLayerFactoryInterface)
  public
    function JavaObject: TObject;
    constructor Create;
        function getInstance: TAllBinaryLayer; virtual;
  end;

implementation
uses
  HealLayer;


{AB:CODE}

function THealLayerFactory.JavaObject: TObject;
begin
  Result := Self;
end;

constructor THealLayerFactory.Create;
begin
  inherited Create;
end;
    

// throws Exception
function THealLayerFactory.getInstance: TAllBinaryLayer;
begin
        Exit(THealLayer.Create());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

