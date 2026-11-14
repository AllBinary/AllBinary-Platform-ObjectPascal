// Generated Code Do Not Modify
// package org.allbinary.game.layer.drop
unit PlacedLayerFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryLayerFactoryInterface, BasicArrayList, BasicArrayListUtil;

type
  {AB:TYPES}
  TPlacedLayerFactory = class(TObject)
  public
    list: TBasicArrayList;
    basicArrayListUtil: TBasicArrayListUtil;
    class var instance: TPlacedLayerFactory;
    procedure InitFields;
        constructor Create;
        procedure clear; virtual;
        class function getInstance: TPlacedLayerFactory; static;
        function getSize: Integer; virtual;
        function getRandomInstance: IAllBinaryLayerFactoryInterface; virtual;
        procedure add(layerInterfaceFactoryInterface: IAllBinaryLayerFactoryInterface); virtual;
  end;

implementation
uses
  BasicArrayListD;


{AB:CODE}

procedure TPlacedLayerFactory.InitFields;
begin
  Self.list := TBasicArrayListD.Create();
  Self.basicArrayListUtil := TBasicArrayListUtil.getInstance();
end;
    

constructor TPlacedLayerFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TPlacedLayerFactory.clear;
begin
        Self.list.clear();
end;
    

class function TPlacedLayerFactory.getInstance: TPlacedLayerFactory;
begin
        Exit(TPlacedLayerFactory.instance);
end;
    

function TPlacedLayerFactory.getSize: Integer;
begin
        Exit(Self.list.size());
end;
    

function TPlacedLayerFactory.getRandomInstance: IAllBinaryLayerFactoryInterface;
begin
        Exit((TJava.ToObject(Self.basicArrayListUtil.getRandom(Self.list)) as IAllBinaryLayerFactoryInterface));
end;
    

procedure TPlacedLayerFactory.add(layerInterfaceFactoryInterface: IAllBinaryLayerFactoryInterface);
begin
        Self.list.add(TJava.Box(layerInterfaceFactoryInterface));
end;

initialization
  {AB:INITIALIZATION}
  TPlacedLayerFactory.instance := TPlacedLayerFactory.Create();
  {AB:END}

end.

