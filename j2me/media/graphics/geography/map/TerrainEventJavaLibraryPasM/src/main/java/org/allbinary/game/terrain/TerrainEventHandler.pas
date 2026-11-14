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
// package org.allbinary.game.terrain
unit TerrainEventHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, EventListenerInterface, BasicEventHandler, ABHashtable, BasicArrayList, TerrainEventListener;

type
  {AB:TYPES}
  TTerrainEventHandler = class(TBasicEventHandler)
  public
    list: TBasicArrayList;
    class var hashtable: TABHashtable<TObject, TObject>;
    procedure InitFields;
        class procedure init; static;
        class function getInstance(anyType: TObject): TTerrainEventHandler; static;
        constructor Create;
        procedure addListener(terrainEventListener_: TTerrainEventListener); virtual;
        procedure removeAllListeners; override;
        procedure removeListener(eventListenerInterface_: IEventListenerInterface); override;
        procedure fireEvent(eventObject: TAllBinaryEventObject); override;
        procedure process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface); override;
  end;

implementation
uses
  TerrainEvent, TerrainEventListenerInterface, StdUtil, EventStrings, BasicArrayListD;


{AB:CODE}

procedure TTerrainEventHandler.InitFields;
begin
  Self.list := TBasicArrayListD.Create();
end;
    

class procedure TTerrainEventHandler.init;
begin
        TTerrainEventHandler.hashtable := TStdUtil.getInstance().createHashtable();
end;
    

class function TTerrainEventHandler.getInstance(anyType: TObject): TTerrainEventHandler;
var
  eventHandlerCanBeNull: TObject;
begin
        eventHandlerCanBeNull := TJava.Box(TTerrainEventHandler.hashtable.get(TJava.Box(anyType)));
        if (eventHandlerCanBeNull) = (nil) then begin
            eventHandlerCanBeNull := TJava.Box(TTerrainEventHandler.Create());
            TTerrainEventHandler.hashtable.put(TJava.Box(anyType), TJava.Box(eventHandlerCanBeNull));
        end;
        Exit(TTerrainEventHandler(TJava.ToObject(eventHandlerCanBeNull)));
end;
    

constructor TTerrainEventHandler.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TTerrainEventHandler.addListener(terrainEventListener_: TTerrainEventListener);
begin
        if not (Self.list.contains(TJava.Box(terrainEventListener_))) then begin
            Self.list.add(TJava.Box(terrainEventListener_));
        end;
end;
    

procedure TTerrainEventHandler.removeAllListeners;
begin
        Self.list.clear();
        inherited removeAllListeners();
end;
    

procedure TTerrainEventHandler.removeListener(eventListenerInterface_: IEventListenerInterface);
begin
        Self.list.remove(TJava.ToObject(eventListenerInterface_));
        inherited removeListener(eventListenerInterface_);
end;
    

// throws Exception
procedure TTerrainEventHandler.fireEvent(eventObject: TAllBinaryEventObject);
var
  terrainEventListener_: TTerrainEventListener;
  index: Integer;
begin
        index := Self.list.size();
        while (TJava.PreDec(index)) >= (0) do begin
            try
                terrainEventListener_ := TTerrainEventListener(TJava.ToObject(Self.list.get(index)));
                terrainEventListener_.onTerrainEvent(TTerrainEvent(TJava.ToObject(eventObject)));
            except
                on e: SysUtils.Exception do begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), TEventStrings.getInstance().FIRE_EVENT, TJava.Box(e));
                end;
            end;
        end;
        inherited fireEvent(eventObject);
end;
    

// throws Exception
procedure TTerrainEventHandler.process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface);
var
  terrainEventListenerInterface_: ITerrainEventListenerInterface;
begin
        terrainEventListenerInterface_ := (TJava.ToObject(eventListenerInterface_) as ITerrainEventListenerInterface);
        terrainEventListenerInterface_.onTerrainEvent(TTerrainEvent(TJava.ToObject(eventObject)));
end;

initialization
  {AB:INITIALIZATION}
  TTerrainEventHandler.hashtable := TStdUtil.getInstance().NULL_TABLE;
  {AB:END}

end.

