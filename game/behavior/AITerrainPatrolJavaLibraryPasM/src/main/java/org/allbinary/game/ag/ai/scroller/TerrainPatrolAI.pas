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
// package org.allbinary.game.ag.ai.scroller
unit TerrainPatrolAI;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameInput, BasicTerrainInfo, TerrainEventListener, AllBinaryLayer, Angle, ABHashtable, PacePatrolAI;

type
  {AB:TYPES}
  TTerrainPatrolAI = class(TPacePatrolAI)
  public
    terrainEventListener: TTerrainEventListener;
    DOWN: TAngle;
    CLIFF: TBasicTerrainInfo;
    procedure InitFields;
        constructor Create(hashtable: TABHashtable<TObject, TObject>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
        procedure update; override;
        procedure changeDirectionIfCliffReached;
  end;

implementation
uses
  TerrainEvent, TerrainEventCircularStaticPool, TerrainEventHandler, AngleFactory, BasicArrayList;


{AB:CODE}

procedure TTerrainPatrolAI.InitFields;
begin
  Self.terrainEventListener := TTerrainEventListener.Create();
  Self.DOWN := TAngleFactory.getInstance().DOWN;
  Self.CLIFF := TBasicTerrainInfo.Create(Self.DOWN);
end;
    

constructor TTerrainPatrolAI.Create(hashtable: TABHashtable<TObject, TObject>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
begin
        inherited Create(hashtable, ownerLayerInterface, gameInput_);
        InitFields;
        TTerrainEventHandler.getInstance(ownerLayerInterface).addListener(Self.terrainEventListener);
        Self.terrainEventListener.onTerrainEvent(TTerrainEventCircularStaticPool.getInstance().getNext(Self.CLIFF));
end;
    

procedure TTerrainPatrolAI.update;
begin
        inherited update();
        Self.changeDirectionIfCliffReached();
end;
    

procedure TTerrainPatrolAI.changeDirectionIfCliffReached;
var
  list: TBasicArrayList;
  size: Integer;
  terrainEvent_: TTerrainEvent;
  basicTerrainInfo_: TBasicTerrainInfo;
  angle_: TAngle;
  index: Integer;
begin
        list := Self.terrainEventListener.getList();
        size := list.size();
        for index := 0 to size - 1 do begin
            terrainEvent_ := TTerrainEvent(TJava.ToObject(list.removeAt(index)));
            basicTerrainInfo_ := terrainEvent_.getBasicTerrainInfo();
            angle_ := basicTerrainInfo_.getAngle();
            if (angle_) = (Self.DOWN) then begin
                Self.nextDirection();
                if not (Self.isFollowLimitedByTerrain) then begin
                    Self.logUtil.putF('Following Limited', TJava.Box(Self), 'onTerrainEvent');
                    Self.isFollowLimitedByTerrain := True;
                end;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

