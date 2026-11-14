// Generated Code Do Not Modify
// package org.allbinary.game.terrain
unit TerrainEventListener;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, BasicArrayList, TerrainEvent, TerrainEventListenerInterface, EventListenerInterface;

type
  {AB:TYPES}
  TTerrainEventListener = class(TInterfacedObject, ITerrainEventListenerInterface, IEventListenerInterface)
  public
    list: TBasicArrayList;
    procedure InitFields;
    function JavaObject: TObject;
    constructor Create;
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure onTerrainEvent(terrainEvent_: TTerrainEvent); virtual;
        function getList: TBasicArrayList; virtual;
  end;

implementation
uses
  ForcedLogUtil, EventStrings, BasicArrayListD;


{AB:CODE}

procedure TTerrainEventListener.InitFields;
begin
  Self.list := TBasicArrayListD.Create();
end;

function TTerrainEventListener.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TTerrainEventListener.Create;
begin
  inherited Create;
  InitFields;
end;
    

procedure TTerrainEventListener.onEvent(eventObject: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, TJava.Box(Self));
end;
    

procedure TTerrainEventListener.onTerrainEvent(terrainEvent_: TTerrainEvent);
begin
        Self.list.clear();
        Self.list.add(TJava.Box(terrainEvent_));
end;
    

function TTerrainEventListener.getList: TBasicArrayList;
begin
        Exit(Self.list);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

