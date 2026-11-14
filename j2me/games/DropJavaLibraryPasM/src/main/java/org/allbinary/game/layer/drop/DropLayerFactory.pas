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
// package org.allbinary.game.layer.drop
unit DropLayerFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PickedUpLayerInterfaceFactoryInterface, BasicArrayList, BasicArrayListUtil;

type
  {AB:TYPES}
  TDropLayerFactory = class(TObject)
  public
    list: TBasicArrayList;
    basicArrayListUtil: TBasicArrayListUtil;
    class var DROP_LAYER_FACTORY: TDropLayerFactory;
    procedure InitFields;
        constructor Create;
        procedure clear; virtual;
        class function getInstance: TDropLayerFactory; static;
        function getSize: Integer; virtual;
        function getRandomInstance: IPickedUpLayerInterfaceFactoryInterface; virtual;
        procedure add(layerInterfaceFactoryInterface: IPickedUpLayerInterfaceFactoryInterface); virtual;
        function getList: TBasicArrayList; virtual;
  end;

implementation
uses
  BasicArrayListD;


{AB:CODE}

procedure TDropLayerFactory.InitFields;
begin
  Self.list := TBasicArrayListD.Create();
  Self.basicArrayListUtil := TBasicArrayListUtil.getInstance();
end;
    

constructor TDropLayerFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TDropLayerFactory.clear;
begin
        Self.list.clear();
end;
    

class function TDropLayerFactory.getInstance: TDropLayerFactory;
begin
        Exit(TDropLayerFactory.DROP_LAYER_FACTORY);
end;
    

function TDropLayerFactory.getSize: Integer;
begin
        Exit(Self.list.size());
end;
    

function TDropLayerFactory.getRandomInstance: IPickedUpLayerInterfaceFactoryInterface;
begin
        Exit((TJava.ToObject(Self.basicArrayListUtil.getRandom(Self.list)) as IPickedUpLayerInterfaceFactoryInterface));
end;
    

procedure TDropLayerFactory.add(layerInterfaceFactoryInterface: IPickedUpLayerInterfaceFactoryInterface);
begin
        Self.list.add(TJava.Box(layerInterfaceFactoryInterface));
end;
    

function TDropLayerFactory.getList: TBasicArrayList;
begin
        Exit(Self.list);
end;

initialization
  {AB:INITIALIZATION}
  TDropLayerFactory.DROP_LAYER_FACTORY := TDropLayerFactory.Create();
  {AB:END}

end.

