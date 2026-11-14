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
// package org.allbinary.game.ag.layer.weapon.mine
unit MineLayerFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryLayer, AllBinaryLayerFactoryInterface, ViewPositionFactoryInterface;

type
  {AB:TYPES}
  TMineLayerFactory = class(TInterfacedObject, IAllBinaryLayerFactoryInterface)
  public
    viewPositionFactoryInterface: IViewPositionFactoryInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(viewPositionFactoryInterface_: IViewPositionFactoryInterface);
        function getInstance: TAllBinaryLayer; virtual;
  end;

implementation
uses
  MineLayer;


{AB:CODE}

procedure TMineLayerFactory.InitFields;
begin
  
end;

function TMineLayerFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TMineLayerFactory.Create(viewPositionFactoryInterface_: IViewPositionFactoryInterface);
begin
    inherited Create;
    InitFields;
        Self.viewPositionFactoryInterface := viewPositionFactoryInterface_;
end;
    

// throws Exception
function TMineLayerFactory.getInstance: TAllBinaryLayer;
begin
        Exit(TMineLayer.Create(Self.viewPositionFactoryInterface.getInstance()));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

