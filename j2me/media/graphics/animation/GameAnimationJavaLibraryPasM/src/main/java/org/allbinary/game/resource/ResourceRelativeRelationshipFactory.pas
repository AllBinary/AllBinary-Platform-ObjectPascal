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
unit ResourceRelativeRelationshipFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, RelativeRelationship, ABHashtable, BasicArrayList, BasicArrayListUtil, ResourceRelativeRelationshipFactoryInterface, GameFeatureControlledInterface;

type
  {AB:TYPES}
  TResourceRelativeRelationshipFactory = class(TInterfacedObject, IResourceRelativeRelationshipFactoryInterface, IGameFeatureControlledInterface)
  public
    basicArrayListUtil: TBasicArrayListUtil;
    hashtable: TABHashtable<TObject, TObject>;
    initialized: Boolean;
    procedure InitFields;
    function JavaObject: TObject;
    constructor Create;
        procedure init(level: Integer); virtual;
        function getResourceRelativeRelationshipList(resource: string): TBasicArrayList; virtual;
        procedure addResourceRelativeRelationship(resource: string; hardPoint: TRelativeRelationship); virtual;
        function isLoadingLevel(level: Integer): Boolean; virtual;
        function isFeature: Boolean; virtual;
        procedure setInitialized(initialized: Boolean); virtual;
        function isInitialized: Boolean; virtual;
  end;

implementation
uses
  StdUtil, BasicArrayListD;


{AB:CODE}

procedure TResourceRelativeRelationshipFactory.InitFields;
begin
  Self.basicArrayListUtil := TBasicArrayListUtil.getInstance();
  Self.hashtable := TStdUtil.getInstance().createHashtable();
  
end;

function TResourceRelativeRelationshipFactory.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TResourceRelativeRelationshipFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

// throws Exception
procedure TResourceRelativeRelationshipFactory.init(level: Integer);
begin
        Self.setInitialized(True);
end;
    

// throws Exception
function TResourceRelativeRelationshipFactory.getResourceRelativeRelationshipList(resource: string): TBasicArrayList;
var
  listCanBeNull: TObject;
begin
        listCanBeNull := TJava.Box(Self.hashtable.get(TJava.Box(resource)));
        if (listCanBeNull) = (nil) then begin
            Exit(Self.basicArrayListUtil.getImmutableInstance());
        end;
        Exit(TBasicArrayList(TJava.ToObject(listCanBeNull)));
end;
    

// throws Exception
procedure TResourceRelativeRelationshipFactory.addResourceRelativeRelationship(resource: string; hardPoint: TRelativeRelationship);
var
  list: TBasicArrayList;
begin
        list := Self.getResourceRelativeRelationshipList(resource);
        if (list) = (Self.basicArrayListUtil.getImmutableInstance()) then begin
            list := TBasicArrayListD.Create();
        end;
        list.add(TJava.Box(hardPoint));
        Self.hashtable.put(TJava.Box(resource), TJava.Box(list));
end;
    

function TResourceRelativeRelationshipFactory.isLoadingLevel(level: Integer): Boolean;
begin
        Exit(False);
end;
    

function TResourceRelativeRelationshipFactory.isFeature: Boolean;
begin
        Exit(False);
end;
    

procedure TResourceRelativeRelationshipFactory.setInitialized(initialized: Boolean);
begin
        Self.initialized := initialized;
end;
    

function TResourceRelativeRelationshipFactory.isInitialized: Boolean;
begin
        Exit(Self.initialized);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

