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
// package org.allbinary.game.resource
unit FeaturedResourceRelativeRelationshipFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryLayer, BasicArrayList, BasicArrayListUtil, FeaturedResourceFactory;

type
  {AB:TYPES}
  TFeaturedResourceRelativeRelationshipFactory = class(TFeaturedResourceFactory)
  public
    basicArrayListUtil: TBasicArrayListUtil;
    class var INSTANCE: TFeaturedResourceRelativeRelationshipFactory;
    procedure InitFields;
        constructor Create;
        class function getInstance: TFeaturedResourceRelativeRelationshipFactory; static;
        function getRelativeRelationshipList(resource: string; layer: TAllBinaryLayer): TBasicArrayList; virtual;
        function duplicate(list: TBasicArrayList; layer: TAllBinaryLayer): TBasicArrayList;
  end;

implementation
uses
  ResourceRelativeRelationshipFactoryInterface, PointFactory, RelativeRelationship, RelativeLayerRelationship, StringMaker, BasicArrayListD;


{AB:CODE}

procedure TFeaturedResourceRelativeRelationshipFactory.InitFields;
begin
  Self.basicArrayListUtil := TBasicArrayListUtil.getInstance();
end;
    

constructor TFeaturedResourceRelativeRelationshipFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

class function TFeaturedResourceRelativeRelationshipFactory.getInstance: TFeaturedResourceRelativeRelationshipFactory;
begin
        Exit(TFeaturedResourceRelativeRelationshipFactory.INSTANCE);
end;
    

// throws Exception
function TFeaturedResourceRelativeRelationshipFactory.getRelativeRelationshipList(resource: string; layer: TAllBinaryLayer): TBasicArrayList;
var
  featureReleaseList: TBasicArrayList;
  size: Integer;
  featureInterface: IResourceRelativeRelationshipFactoryInterface;
  list: TBasicArrayList;
  index: Integer;
begin
        featureReleaseList := Self.getList();
        size := Self.getList().size();
        for index := 0 to size - 1 do begin
            featureInterface := (TJava.ToObject(featureReleaseList.objectArray[index]) as IResourceRelativeRelationshipFactoryInterface);
            if featureInterface.isFeature() then begin
                list := featureInterface.getResourceRelativeRelationshipList(resource);
                if (list) <> (Self.basicArrayListUtil.getImmutableInstance()) then begin
                    Exit(Self.duplicate(list, layer));
                end;
            end;
        end;
        raise SysUtils.Exception.Create(TStringMaker.Create().append('Not available for current feature selection or Resource: ').append(resource).toString());
end;
    

// throws Exception
function TFeaturedResourceRelativeRelationshipFactory.duplicate(list: TBasicArrayList; layer: TAllBinaryLayer): TBasicArrayList;
var
  pointFactory_: TPointFactory;
  newList: TBasicArrayList;
  size: Integer;
  relativeRelationship_: TRelativeRelationship;
  index: Integer;
begin
        pointFactory_ := TPointFactory.getInstance();
        newList := TBasicArrayListD.Create();
        size := list.size();
        for index := 0 to size - 1 do begin
            relativeRelationship_ := TRelativeRelationship(TJava.ToObject(list.objectArray[index]));
            newList.add(TJava.Box(TRelativeLayerRelationship.Create(layer, pointFactory_.createXY(relativeRelationship_.getX(), relativeRelationship_.getY()), TBasicArrayListUtil.getInstance().getImmutableInstance())));
        end;
        Exit(newList);
end;

initialization
  {AB:INITIALIZATION}
  TFeaturedResourceRelativeRelationshipFactory.INSTANCE := TFeaturedResourceRelativeRelationshipFactory.Create();
  {AB:END}

end.

