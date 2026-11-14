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
// package org.allbinary.game.part
unit MakeCountedPartsSingletonArrayFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, BasicArrayList, PartInterface;

type
  {AB:TYPES}
  TMakeCountedPartsSingletonArrayFactory = class(TObject)
  public
    logUtil: TLogUtil;
    list: TBasicArrayList;
    class var instance: TMakeCountedPartsSingletonArrayFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TMakeCountedPartsSingletonArrayFactory; static;
        function getUpdated(partInterfaceArray: TArray<IPartInterface>): TArray<IPartInterface>; virtual;
  end;

implementation
uses
  CountedLayerInterfaceFactoryPart, CountedPickedUpLayerInterfaceFactory, CountedPickedUpLayerInterfaceFactoryPool, StringMaker, CommonStrings, BasicArrayListD, BasicArrayListUtil;


{AB:CODE}

procedure TMakeCountedPartsSingletonArrayFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.list := TBasicArrayListUtil.getInstance().getImmutableInstance();
end;

constructor TMakeCountedPartsSingletonArrayFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TMakeCountedPartsSingletonArrayFactory.getInstance: TMakeCountedPartsSingletonArrayFactory;
begin
        Exit(TMakeCountedPartsSingletonArrayFactory.instance);
end;
    

// throws Exception
function TMakeCountedPartsSingletonArrayFactory.getUpdated(partInterfaceArray: TArray<IPartInterface>): TArray<IPartInterface>;
var
  index: Integer;
  countedBasicArrayList: TBasicArrayList;
  layerInterfaceFactoryInterface: TCountedPickedUpLayerInterfaceFactory;
  size: Integer;
  stringBuffer: TStringMaker;
  commonStrings_: TCommonStrings;
  newPartInterfaceArray: TArray<IPartInterface>;
  newSize: Integer;
begin
        Self.list := TBasicArrayListD.Create();
        for index := 0 to System.Length(partInterfaceArray) - 1 do begin
            Self.list.add(TJava.Box(partInterfaceArray[index]));
        end;
        countedBasicArrayList := TCountedPickedUpLayerInterfaceFactoryPool.getInstance().getList();
        
        size := countedBasicArrayList.size();
        for index := 0 to size - 1 do begin
            layerInterfaceFactoryInterface := TCountedPickedUpLayerInterfaceFactory(TJava.ToObject(countedBasicArrayList.objectArray[index]));
            Self.list.add(TJava.Box(TCountedLayerInterfaceFactoryPart.Create(0, layerInterfaceFactoryInterface)));
        end;
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('Total Parts: ');
        stringBuffer.appendint(Self.list.size());
        stringBuffer.append(' Counted: ');
        stringBuffer.appendint(countedBasicArrayList.size());
        commonStrings_ := TCommonStrings.getInstance();
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), commonStrings_.GET_INSTANCE);
        newPartInterfaceArray := TJava.NewArray<IPartInterface>(Self.list.size());
        newSize := System.Length(newPartInterfaceArray);
        for index := 0 to newSize - 1 do begin
            newPartInterfaceArray[index] := (TJava.ToObject(Self.list.get(index)) as IPartInterface);
        end;
        Exit(newPartInterfaceArray);
end;

initialization
  {AB:INITIALIZATION}
  TMakeCountedPartsSingletonArrayFactory.instance := TMakeCountedPartsSingletonArrayFactory.Create();
  {AB:END}

end.

