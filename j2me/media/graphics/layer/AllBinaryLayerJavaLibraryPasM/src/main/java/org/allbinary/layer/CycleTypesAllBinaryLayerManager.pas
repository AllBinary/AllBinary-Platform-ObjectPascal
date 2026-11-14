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
// AB:CYCLE TYPES AllBinaryLayerManager BasicLayerProcessorInterface LayerProcessorInterface LayerProcessor
// The units AllBinaryLayerManager BasicLayerProcessorInterface LayerProcessorInterface LayerProcessor use each other in their interface sections, so their types are declared together here.
unit CycleTypesAllBinaryLayerManager;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LayerManagerEvent, LayerManagerEventHandler, AllBinaryLayer, ABLayerManager, CommonStrings;

type
  { Forward declarations like C++ so the cycle members can refer to each other }
  TAllBinaryLayerManager = class;
  IBasicLayerProcessorInterface = interface;
  ILayerProcessorInterface = interface;
  TLayerProcessor = class;
  TBasicLayerProcessorInterface = IBasicLayerProcessorInterface;
  TLayerProcessorInterface = ILayerProcessorInterface;
  {AB:TYPES}
  { AllBinaryLayerManager }
  TAllBinaryLayerManager = class(TABLayerManager)
  public
    layerManagerEventHandler: TLayerManagerEventHandler;
    createLayerManagerEvent: TLayerManagerEvent;
    deleteLayerManagerEvent: TLayerManagerEvent;
    basicLayerProcessorArray: TArray<TLayerProcessor>;
    procedure InitFields;
        constructor Create;
        function getLayerProcessorArray: TArray<TLayerProcessor>; virtual;
        procedure setLayerProcessorArray(layerProcessorArray: TArray<TLayerProcessor>); virtual;
        procedure log;
        procedure append(layerInterface: TAllBinaryLayer); override;
        procedure appendAt(layerInterface: TAllBinaryLayer; index: Integer); override;
        procedure appendProcessors(layerInterface: TAllBinaryLayer);
        procedure remove(layerInterface: TAllBinaryLayer); override;
        procedure process; virtual;
        procedure cleanup; override;
  end;

  { BasicLayerProcessorInterface }
  IBasicLayerProcessorInterface = interface(IJavaObject) ['IBasicLayerProcessorInterface']
        procedure process(allBinaryLayerManager_: TAllBinaryLayerManager);
  end;

  { LayerProcessorInterface }
  ILayerProcessorInterface = interface(IBasicLayerProcessorInterface) ['ILayerProcessorInterface']
        function getLayerManager: TABLayerManager;
        procedure processAt(allBinaryLayerManager_: TAllBinaryLayerManager; layerInterface: TAllBinaryLayer; index: Integer);
        function isProcessorLayer(layerInterface: TAllBinaryLayer): Boolean;
  end;

  { LayerProcessor }
  TLayerProcessor = class(TInterfacedObject, ILayerProcessorInterface, IBasicLayerProcessorInterface)
  public
    commonStrings: TCommonStrings;
    layerManager: TABLayerManager;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(layerManager: TABLayerManager);
        procedure processAt(allBinaryLayerManager_: TAllBinaryLayerManager; layerInterface: TAllBinaryLayer; index: Integer); virtual;
        function isProcessorLayer(layerInterface: TAllBinaryLayer): Boolean; virtual;
        function getLayerManager: TABLayerManager; virtual;
        procedure process(allBinaryLayerManager_: TAllBinaryLayerManager); virtual;
  end;


implementation
uses
  LayerManagerNoDebug;


{AB:CODE}

procedure TAllBinaryLayerManager.InitFields;
begin
  Self.layerManagerEventHandler := TLayerManagerEventHandler.getInstance();
  Self.createLayerManagerEvent := TLayerManagerEvent.Create(Self, Self.layerManagerEventHandler.CREATE_);
  Self.deleteLayerManagerEvent := TLayerManagerEvent.Create(Self, Self.layerManagerEventHandler.DELETE_);
  Self.basicLayerProcessorArray := TJava.NewArray<TLayerProcessor>(0);
end;
    

constructor TAllBinaryLayerManager.Create;
begin
        inherited Create(TLayerManagerNoDebug.getInstance());
        InitFields;
end;
    

function TAllBinaryLayerManager.getLayerProcessorArray: TArray<TLayerProcessor>;
begin
        Exit(Self.basicLayerProcessorArray);
end;
    

procedure TAllBinaryLayerManager.setLayerProcessorArray(layerProcessorArray: TArray<TLayerProcessor>);
begin
        Self.basicLayerProcessorArray := layerProcessorArray;
end;
    

procedure TAllBinaryLayerManager.log;
var
  size: Integer;
  layerProcessorInterface: TLayerProcessor;
  index: Integer;
begin
        size := System.Length(Self.basicLayerProcessorArray);
        for index := 0 to size - 1 do begin
            layerProcessorInterface := Self.basicLayerProcessorArray[index];
        end;
end;
    

// throws Exception
procedure TAllBinaryLayerManager.append(layerInterface: TAllBinaryLayer);
begin
        if not (Self.contains(layerInterface)) then begin
            Self.appendProcessors(layerInterface);
            inherited append(layerInterface);
        end;
end;
    

// throws Exception
procedure TAllBinaryLayerManager.appendAt(layerInterface: TAllBinaryLayer; index: Integer);
begin
        if not (Self.contains(layerInterface)) then begin
            Self.appendProcessors(layerInterface);
            inherited appendAt(layerInterface, index);
        end;
end;
    

// throws Exception
procedure TAllBinaryLayerManager.appendProcessors(layerInterface: TAllBinaryLayer);
var
  layerProcessorInterface: TLayerProcessor;
  index: Integer;
begin
        Self.createLayerManagerEvent.setLayerInterface(layerInterface);
        Self.layerManagerEventHandler.fireEvent(Self.createLayerManagerEvent);
        
        index := System.Length(Self.basicLayerProcessorArray);
        while (TJava.PreDec(index)) >= (0) do begin
            layerProcessorInterface := Self.basicLayerProcessorArray[index];
            if layerProcessorInterface.isProcessorLayer(layerInterface) then begin
                layerProcessorInterface.getLayerManager().append(layerInterface);
            end;
        end;
end;
    

// throws Exception
procedure TAllBinaryLayerManager.remove(layerInterface: TAllBinaryLayer);
var
  layerProcessorInterface: TLayerProcessor;
  index: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        Self.deleteLayerManagerEvent.setLayerInterface(layerInterface);
        Self.layerManagerEventHandler.fireDeleteEvent(Self.deleteLayerManagerEvent);
        
        index := System.Length(Self.basicLayerProcessorArray);
        while (TJava.PreDec(index)) >= (0) do begin
            layerProcessorInterface := Self.basicLayerProcessorArray[index];
            layerProcessorInterface.getLayerManager().remove(layerInterface);
        end;
        inherited remove(layerInterface);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
procedure TAllBinaryLayerManager.process;
var
  layerProcessorInterface: TLayerProcessor;
  size: Integer;
  index: Integer;
begin
        
        size := System.Length(Self.basicLayerProcessorArray);
        for index := 0 to size - 1 do begin
            layerProcessorInterface := Self.basicLayerProcessorArray[index];
            layerProcessorInterface.process(Self);
        end;
end;
    

// throws Exception
procedure TAllBinaryLayerManager.cleanup;
var
  layerProcessorInterface: TLayerProcessor;
  size: Integer;
  index: Integer;
begin
        
        size := System.Length(Self.basicLayerProcessorArray);
        for index := 0 to size - 1 do begin
            layerProcessorInterface := Self.basicLayerProcessorArray[index];
            layerProcessorInterface.getLayerManager().cleanup();
        end;
        inherited cleanup();
end;




procedure TLayerProcessor.InitFields;
begin
  Self.commonStrings := TCommonStrings.getInstance();
  
end;

function TLayerProcessor.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TLayerProcessor.Create(layerManager: TABLayerManager);
begin
    inherited Create;
    InitFields;
        Self.layerManager := layerManager;
end;
    

// throws Exception
procedure TLayerProcessor.processAt(allBinaryLayerManager_: TAllBinaryLayerManager; layerInterface: TAllBinaryLayer; index: Integer);
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

// throws Exception
function TLayerProcessor.isProcessorLayer(layerInterface: TAllBinaryLayer): Boolean;
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

function TLayerProcessor.getLayerManager: TABLayerManager;
begin
        Exit(Self.layerManager);
end;
    

// throws Exception
procedure TLayerProcessor.process(allBinaryLayerManager_: TAllBinaryLayerManager);
var
  layerManager: TABLayerManager;
  size: Integer;
  index: Integer;
begin
        layerManager := Self.getLayerManager();
        size := layerManager.getSize();
        for index := 0 to size - 1 do begin
            Self.processAt(allBinaryLayerManager_, TAllBinaryLayer(TJava.ToObject(layerManager.getLayerAt(index))), index);
        end;
end;


initialization
  {AB:INITIALIZATION}
  {AB:END}

end.
