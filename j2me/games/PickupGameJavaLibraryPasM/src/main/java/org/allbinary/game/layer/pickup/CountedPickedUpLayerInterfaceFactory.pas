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
// package org.allbinary.game.layer.pickup
unit CountedPickedUpLayerInterfaceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Animation, AllBinaryLayer, ABHashtable, PickedUpLayerType, IconLayer, PickedUpLayerInterfaceFactory, CountedPickedUpLayerInterfaceFactoryInterface, LayerInterfaceFactoryInterface, PickedUpLayerInterfaceFactoryInterface;

type
  {AB:TYPES}
  TCountedPickedUpLayerInterfaceFactory = class(TPickedUpLayerInterfaceFactory, ICountedPickedUpLayerInterfaceFactoryInterface, ILayerInterfaceFactoryInterface, IPickedUpLayerInterfaceFactoryInterface)
  public
    id: Integer;
    class var NULL_COUNTED_PICKUP_LAYER_FACTORY: TCountedPickedUpLayerInterfaceFactory;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(pickeUpLayerType: TPickedUpLayerType; iconLayer_: TIconLayer; animationInterface: TAnimation);
        function getNextInstance(hashtable: TABHashtable<TObject, TObject>; x: Integer; y: Integer; z: Integer): TAllBinaryLayer; virtual;
        function getTotal: Integer; virtual;
        function getId: Integer; virtual;
  end;

implementation
uses
  PickedUpLayerTypeFactory, CountedPickedUpLayerInterfaceFactoryPool, NullAnimationFactory, CommonStrings, BasicArrayList;


{AB:CODE}

procedure TCountedPickedUpLayerInterfaceFactory.InitFields;
begin
  
end;

function TCountedPickedUpLayerInterfaceFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCountedPickedUpLayerInterfaceFactory.Create(pickeUpLayerType: TPickedUpLayerType; iconLayer_: TIconLayer; animationInterface: TAnimation);
var
  list: TBasicArrayList;
begin
        inherited Create(pickeUpLayerType, iconLayer_, animationInterface);
        InitFields;
        list := TCountedPickedUpLayerInterfaceFactoryPool.getInstance().getList();
        Self.id := list.size();
        list.add(TJava.Box(Self));
end;
    

// throws Exception
function TCountedPickedUpLayerInterfaceFactory.getNextInstance(hashtable: TABHashtable<TObject, TObject>; x: Integer; y: Integer; z: Integer): TAllBinaryLayer;
begin
        raise SysUtils.Exception.Create(TCommonStrings.getInstance().NOT_IMPLEMENTED);
end;
    

function TCountedPickedUpLayerInterfaceFactory.getTotal: Integer;
begin
        Exit(-1);
end;
    

function TCountedPickedUpLayerInterfaceFactory.getId: Integer;
begin
        Exit(Self.id);
end;

initialization
  {AB:INITIALIZATION}
  TCountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY := TCountedPickedUpLayerInterfaceFactory.Create(TPickedUpLayerTypeFactory.getInstance().NONE, TIconLayer.NULL_ICON_LAYER, TNullAnimationFactory.getFactoryInstance().getInstance(0));
  {AB:END}

end.

