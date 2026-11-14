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
// package org.allbinary.game.layer.identification
unit GroupLayerManagerListener;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Group, GroupInterfaceCompositeInterface, LayerManagerEvent, LayerManagerEventListener, LogUtil, AllBinaryEventObject, BasicArrayList;

type
  {AB:TYPES}
  TGroupLayerManagerListener = class(TLayerManagerEventListener)
  public
    logUtil: TLogUtil;
    list: TBasicArrayList;
    class var SINGLETON: TGroupLayerManagerListener;
    procedure InitFields;
        class function getInstance: TGroupLayerManagerListener; static;
        constructor Create;
        procedure clear; virtual;
        function getGroupSizeFromInterface(groupInterfaceCompositeInterface_: IGroupInterfaceCompositeInterface): Integer; virtual;
        function getGroupSize(groupInterface: TGroup): Integer; virtual;
        function getList(groupInterface: TGroup): TBasicArrayList; virtual;
        function getListById(groupId: Integer): TBasicArrayList;
        function getGroupSizeById(groupId: Integer): Integer;
        function areAllOtherGroupsEmpty(groupInterface: TGroup): Boolean; virtual;
        function isIdInList(id: Integer; excludeGroupList: TBasicArrayList): Boolean;
        function areAllOtherGroupsLessThan(excludeGroupList: TBasicArrayList; maxSize: Integer): Boolean; virtual;
        procedure init(total: Integer); virtual;
        procedure onEvent(eventObject: TAllBinaryEventObject); override;
        procedure onCreateLayerManagerEvent(layerManagerEvent_: TLayerManagerEvent); override;
        procedure onDeleteLayerManagerEvent(layerManagerEvent_: TLayerManagerEvent); override;
        procedure log; virtual;
  end;

implementation
uses
  AllBinaryLayer, LayerManagerEventHandler, ForcedLogUtil, StringMaker, EventStrings, CommonLabels, CommonSeps, BasicArrayListD;


{AB:CODE}

procedure TGroupLayerManagerListener.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.list := TBasicArrayListD.Create();
end;
    

class function TGroupLayerManagerListener.getInstance: TGroupLayerManagerListener;
begin
        Exit(TGroupLayerManagerListener.SINGLETON);
end;
    

constructor TGroupLayerManagerListener.Create;
begin
    inherited Create;
    InitFields;
        TLayerManagerEventHandler.getInstance().addListener(Self);
end;
    

procedure TGroupLayerManagerListener.clear;
var
  groupList: TBasicArrayList;
  size: Integer;
  index: Integer;
begin
        
        size := Self.list.size();
        for index := (size) - (1) downto 0 do begin
            groupList := TBasicArrayList(TJava.ToObject(Self.list.objectArray[index]));
            groupList.clear();
        end;
end;
    

function TGroupLayerManagerListener.getGroupSizeFromInterface(groupInterfaceCompositeInterface_: IGroupInterfaceCompositeInterface): Integer;
var
  groupInterfaceArray: TArray<TGroup>;
begin
        groupInterfaceArray := groupInterfaceCompositeInterface_.getGroupInterface();
        Exit(Self.getGroupSize(groupInterfaceArray[0]));
end;
    

function TGroupLayerManagerListener.getGroupSize(groupInterface: TGroup): Integer;
var
  id: Integer;
begin
        id := Integer(Trunc(groupInterface.getGroupId()));
        Exit(Self.getGroupSizeById(id));
end;
    

function TGroupLayerManagerListener.getList(groupInterface: TGroup): TBasicArrayList;
var
  id: Integer;
begin
        id := Integer(Trunc(groupInterface.getGroupId()));
        Exit(Self.getListById(id));
end;
    

function TGroupLayerManagerListener.getListById(groupId: Integer): TBasicArrayList;
var
  groupList: TBasicArrayList;
begin
        groupList := TBasicArrayList(TJava.ToObject(Self.list.objectArray[groupId]));
        Exit(groupList);
end;
    

function TGroupLayerManagerListener.getGroupSizeById(groupId: Integer): Integer;
var
  groupList: TBasicArrayList;
  size: Integer;
begin
        groupList := TBasicArrayList(TJava.ToObject(Self.list.objectArray[groupId]));
        size := groupList.size();
        Exit(size);
end;
    

function TGroupLayerManagerListener.areAllOtherGroupsEmpty(groupInterface: TGroup): Boolean;
var
  id: Integer;
  size: Integer;
  groupSize: Integer;
  index: Integer;
begin
        id := Integer(Trunc(groupInterface.getGroupId()));
        size := Self.list.size();
        for index := (size) - (1) downto 0 do begin
            if (id) <> (index) then begin
                groupSize := Self.getGroupSizeById(index);
                if (groupSize) <> (0) then begin
                    Self.logUtil.putF(TStringMaker.Create().append('Group Size: ').appendint(groupSize).toString(), TJava.Box(Self), 'areAllOtherGroupsEmpty');
                    Exit(False);
                end;
            end;
        end;
        Exit(True);
end;
    

function TGroupLayerManagerListener.isIdInList(id: Integer; excludeGroupList: TBasicArrayList): Boolean;
var
  size: Integer;
  groupInterfaceArray: TArray<TGroup>;
  groupInterface: TGroup;
  groupId: Integer;
  size2: Integer;
  index2: Integer;
  index: Integer;
begin
        size := excludeGroupList.size();
        
        
        
        for index := (size) - (1) downto 0 do begin
            groupInterfaceArray := TJava.UnboxArray<TGroup>(TJava.ToObject(excludeGroupList.objectArray[index]));
            size2 := System.Length(groupInterfaceArray);
            for index2 := 0 to size2 - 1 do begin
                groupInterface := groupInterfaceArray[index2];
                groupId := Integer(Trunc(groupInterface.getGroupId()));
                if (groupId) = (id) then begin
                    Exit(True);
                end;
            end;
        end;
        Exit(False);
end;
    

function TGroupLayerManagerListener.areAllOtherGroupsLessThan(excludeGroupList: TBasicArrayList; maxSize: Integer): Boolean;
var
  size: Integer;
  groupSize: Integer;
  index: Integer;
begin
        size := Self.list.size();
        for index := (size) - (1) downto 0 do begin
            if not (Self.isIdInList(index, excludeGroupList)) then begin
                groupSize := Self.getGroupSizeById(index);
                if (groupSize) >= (maxSize) then begin
                    Exit(False);
                end;
            end;
        end;
        Exit(True);
end;
    

procedure TGroupLayerManagerListener.init(total: Integer);
begin
        while (Self.list.size()) <= ((total) + (1)) do begin
            Self.list.add(TJava.Box(TBasicArrayListD.Create()));
        end;
end;
    

procedure TGroupLayerManagerListener.onEvent(eventObject: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, TJava.Box(Self));
end;
    

// throws Exception
procedure TGroupLayerManagerListener.onCreateLayerManagerEvent(layerManagerEvent_: TLayerManagerEvent);
var
  layerInterface: TAllBinaryLayer;
  groupInterfaceArray: TArray<TGroup>;
  size: Integer;
  id: Integer;
  groupList: TBasicArrayList;
  index: Integer;
begin
        layerInterface := layerManagerEvent_.getLayerInterface();
        groupInterfaceArray := layerInterface.getGroupInterface();
        size := System.Length(groupInterfaceArray);
        
        
        for index := 0 to size - 1 do begin
            id := Integer(Trunc(groupInterfaceArray[index].getGroupId()));
            groupList := TBasicArrayList(TJava.ToObject(Self.list.objectArray[id]));
            if (groupList) = (nil) then begin
                Self.logUtil.putF(TStringMaker.Create().append('id: ').appendint(id).toString(), TJava.Box(Self), 'onCreateLayerManagerEvent');
            end;
            if not (groupList.contains(TJava.Box(layerInterface))) then begin
                groupList.add(TJava.Box(layerInterface));
            end else begin
            end;
        end;
end;
    

// throws Exception
procedure TGroupLayerManagerListener.onDeleteLayerManagerEvent(layerManagerEvent_: TLayerManagerEvent);
var
  layerInterface: TAllBinaryLayer;
  groupInterfaceArray: TArray<TGroup>;
  size: Integer;
  id: Integer;
  groupList: TBasicArrayList;
  index: Integer;
begin
        layerInterface := layerManagerEvent_.getLayerInterface();
        groupInterfaceArray := layerInterface.getGroupInterface();
        size := System.Length(groupInterfaceArray);
        
        
        for index := 0 to size - 1 do begin
            id := Integer(Trunc(groupInterfaceArray[index].getGroupId()));
            groupList := TBasicArrayList(TJava.ToObject(Self.list.objectArray[id]));
            groupList.remove(layerInterface);
        end;
end;
    

procedure TGroupLayerManagerListener.log;
var
  stringBuffer: TStringMaker;
  GROUP_: string;
  SPACE: string;
  TOTAL_LABEL: string;
  size: Integer;
  groupList: TBasicArrayList;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        GROUP_ := 'Group: ';
        SPACE := TCommonSeps.getInstance().SPACE;
        TOTAL_LABEL := TCommonLabels.getInstance().TOTAL_LABEL;
        size := Self.list.size();
        for index := (size) - (1) downto 0 do begin
            groupList := TBasicArrayList(TJava.ToObject(Self.list.objectArray[index]));
            stringBuffer.append(GROUP_);
            stringBuffer.appendint(index);
            stringBuffer.append(SPACE);
            stringBuffer.append(TOTAL_LABEL);
            stringBuffer.appendint(groupList.size());
            stringBuffer.append(SPACE);
        end;
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'log');
end;

initialization
  {AB:INITIALIZATION}
  TGroupLayerManagerListener.SINGLETON := TGroupLayerManagerListener.Create();
  {AB:END}

end.

