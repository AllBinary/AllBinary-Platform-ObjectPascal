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
// package org.allbinary.layer
unit LayerInterfaceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ABHashtable, BasicArrayList, AllBinaryLayer, LayerInterfaceFactoryInterface;

type
  {AB:TYPES}
  TLayerInterfaceFactory = class(TObject)
  public
    logUtil: TLogUtil;
    list: TBasicArrayList;
    HASHTABLE_LABEL: string;
    class var SINGLETON: TLayerInterfaceFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TLayerInterfaceFactory; static;
        procedure init; virtual;
        function getNexInstance(hashtable: TABHashtable<TObject, TObject>; x: Integer; y: Integer; z: Integer): TAllBinaryLayer; virtual;
        procedure add(layerInterfaceFactoryInterface_: ILayerInterfaceFactoryInterface); virtual;
  end;

implementation
uses
  ABLayer, StringMaker, StringUtil, CommonStrings, BasicArrayListD, BasicArrayListUtil;


{AB:CODE}

procedure TLayerInterfaceFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.list := TBasicArrayListUtil.getInstance().getImmutableInstance();
  Self.HASHTABLE_LABEL := 'Hashtable: ';
end;

constructor TLayerInterfaceFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TLayerInterfaceFactory.getInstance: TLayerInterfaceFactory;
begin
        Exit(TLayerInterfaceFactory.SINGLETON);
end;
    

procedure TLayerInterfaceFactory.init;
begin
        Self.list := TBasicArrayListD.Create();
end;
    

// throws Exception
function TLayerInterfaceFactory.getNexInstance(hashtable: TABHashtable<TObject, TObject>; x: Integer; y: Integer; z: Integer): TAllBinaryLayer;
var
  commonStrings_: TCommonStrings;
  typeInteger: Integer;
  layerInterfaceFactoryInterface_: ILayerInterfaceFactoryInterface;
begin
        commonStrings_ := TCommonStrings.getInstance();
        Self.logUtil.putF(TStringMaker.Create().append(Self.HASHTABLE_LABEL).append(TStringUtil.getInstance().toString(hashtable)).toString(), TJava.Box(Self), commonStrings_.GET_INSTANCE);
        typeInteger := Integer(hashtable.get(TJava.Box(TJava.Box(TABLayer.ID))));
        layerInterfaceFactoryInterface_ := (TJava.ToObject(Self.list.objectArray[((typeInteger)) - (1)]) as ILayerInterfaceFactoryInterface);
        Exit(layerInterfaceFactoryInterface_.getNextInstance(hashtable, x, y, z));
end;
    

procedure TLayerInterfaceFactory.add(layerInterfaceFactoryInterface_: ILayerInterfaceFactoryInterface);
begin
        Self.list.add(TJava.Box(layerInterfaceFactoryInterface_));
end;

initialization
  {AB:INITIALIZATION}
  TLayerInterfaceFactory.SINGLETON := TLayerInterfaceFactory.Create();
  {AB:END}

end.

