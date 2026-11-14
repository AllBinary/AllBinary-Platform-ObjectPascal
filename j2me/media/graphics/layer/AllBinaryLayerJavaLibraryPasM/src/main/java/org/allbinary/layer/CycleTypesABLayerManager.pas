// Generated Code Do Not Modify
// AB:CYCLE TYPES ABLayerManager LayerManagerLoggingBase
// The units ABLayerManager LayerManagerLoggingBase use each other in their interface sections, so their types are declared together here.
unit CycleTypesABLayerManager;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, TsUtil, LogUtil, CommonStrings, SynchObject, BasicArrayList, ABSystemWrapper, AllBinaryLayer, ABLayer;

type
  { Forward declarations like C++ so the cycle members can refer to each other }
  TABLayerManager = class;
  TLayerManagerLoggingBase = class;
  {AB:TYPES}
  { ABLayerManager }
  TABLayerManager = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    systemWrapper: TABSystemWrapper;
    tsUtil: TTsUtil;
    layerManagerLogging: TLayerManagerLoggingBase;
    list: TBasicArrayList;
    anyType: TSynchObject;
    procedure InitFields;
        constructor Create(layerManagerLogging: TLayerManagerLoggingBase);
        function contains(layerInterface: TAllBinaryLayer): Boolean; virtual;
        procedure update(layerInterface: TAllBinaryLayer); virtual;
        procedure insert(layerInterface: TAllBinaryLayer); virtual;
        procedure append(layerInterface: TAllBinaryLayer); virtual;
        procedure appendAt(layerInterface: TAllBinaryLayer; index: Integer); virtual;
        procedure remove(layerInterface: TAllBinaryLayer); virtual;
        function getLayerAt(index: Integer): TABLayer; virtual;
        function getSize: Integer; virtual;
        procedure cleanup; virtual;
        procedure paint(g: TGraphics; x: Integer; y: Integer); virtual;
  end;

  { LayerManagerLoggingBase }
  TLayerManagerLoggingBase = class(TObject)
  public
    constructor Create;
        procedure append(layerInterface: TAllBinaryLayer); virtual;
        procedure appendAt(layerInterface: TAllBinaryLayer; index: Integer); virtual;
        procedure remove(layerInterface: TAllBinaryLayer); virtual;
        procedure removeResult(layerManager: TABLayerManager; layerInterface: TAllBinaryLayer; result_: Boolean); virtual;
        procedure clear; virtual;
  end;


implementation
uses
  BasicArrayListD;


{AB:CODE}

procedure TABLayerManager.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.systemWrapper := TABSystemWrapper.getInstance();
  Self.tsUtil := TTsUtil.getInstance();
  
  Self.list := TBasicArrayListD.Create();
  Self.anyType := TSynchObject.Create();
end;
    

constructor TABLayerManager.Create(layerManagerLogging: TLayerManagerLoggingBase);
begin
    inherited Create;
    InitFields;
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        Self.layerManagerLogging := layerManagerLogging;
end;
    

function TABLayerManager.contains(layerInterface: TAllBinaryLayer): Boolean;
begin
        Exit(Self.list.contains(TJava.Box(layerInterface)));
end;
    

// throws Exception
procedure TABLayerManager.update(layerInterface: TAllBinaryLayer);
var
  had: Boolean;
  nextLayerInterface: TAllBinaryLayer;
  size: Integer;
  index: Integer;
begin
        had := Self.list.remove(layerInterface);
        if had then begin
            
            size := Self.list.size();
            for index := 0 to size - 1 do begin
                nextLayerInterface := TAllBinaryLayer(TJava.ToObject(Self.list.get(index)));
                if (layerInterface.getZP()) > (nextLayerInterface.getZP()) then begin
                    Self.list.addAt(index, TJava.Box(layerInterface));
                    Exit;
                end;
            end;
            Self.list.add(TJava.Box(layerInterface));
        end;
end;
    

// throws Exception
procedure TABLayerManager.insert(layerInterface: TAllBinaryLayer);
var
  nextLayerInterface: TAllBinaryLayer;
  size: Integer;
  index: Integer;
begin
        
        size := Self.list.size();
        for index := 0 to size - 1 do begin
            nextLayerInterface := TAllBinaryLayer(TJava.ToObject(Self.list.get(index)));
            if (layerInterface.getZP()) > (nextLayerInterface.getZP()) then begin
                Self.appendAt(layerInterface, index);
                Exit;
            end;
        end;
        Self.append(layerInterface);
end;
    

// throws Exception
procedure TABLayerManager.append(layerInterface: TAllBinaryLayer);
begin
        Self.layerManagerLogging.append(layerInterface);
        Self.list.add(TJava.Box(layerInterface));
end;
    

// throws Exception
procedure TABLayerManager.appendAt(layerInterface: TAllBinaryLayer; index: Integer);
begin
        Self.layerManagerLogging.appendAt(layerInterface, index);
        Self.list.addAt(index, TJava.Box(layerInterface));
end;
    

// throws Exception
procedure TABLayerManager.remove(layerInterface: TAllBinaryLayer);
var
  result_: Boolean;
begin
        TJava.MonitorEnter(Self.anyType);
        try
            Self.layerManagerLogging.remove(layerInterface);
            result_ := Self.list.remove(layerInterface);
            Self.layerManagerLogging.removeResult(Self, layerInterface, result_);
        finally
            TJava.MonitorExit(Self.anyType);
        end;
end;
    

function TABLayerManager.getLayerAt(index: Integer): TABLayer;
begin
        Exit(TABLayer(TJava.ToObject(Self.list.objectArray[index])));
end;
    

function TABLayerManager.getSize: Integer;
begin
        Exit(Self.list.size());
end;
    

// throws Exception
procedure TABLayerManager.cleanup;
begin
        TJava.MonitorEnter(Self.anyType);
        try
            Self.list.clear();
            Self.layerManagerLogging.clear();
            Self.tsUtil.gc();
            Self.tsUtil.gc();
        finally
            TJava.MonitorExit(Self.anyType);
        end;
end;
    

procedure TABLayerManager.paint(g: TGraphics; x: Integer; y: Integer);
var
  comp: TABLayer;
  index: Integer;
begin
        TJava.MonitorEnter(Self.anyType);
        try
            
            index := Self.list.size();
            while (TJava.PreDec(index)) >= (0) do begin
                comp := TABLayer(TJava.ToObject(Self.list.objectArray[index]));
                if ((comp) <> (nil)) and (comp.isVisible()) then begin
                    comp.paint(g);
                end;
            end;
        finally
            TJava.MonitorExit(Self.anyType);
        end;
end;


constructor TLayerManagerLoggingBase.Create;
begin
  inherited Create;
end;
    

// throws Exception
procedure TLayerManagerLoggingBase.append(layerInterface: TAllBinaryLayer);
begin
end;
    

procedure TLayerManagerLoggingBase.appendAt(layerInterface: TAllBinaryLayer; index: Integer);
begin
end;
    

procedure TLayerManagerLoggingBase.remove(layerInterface: TAllBinaryLayer);
begin
end;
    

procedure TLayerManagerLoggingBase.removeResult(layerManager: TABLayerManager; layerInterface: TAllBinaryLayer; result_: Boolean);
begin
end;
    

procedure TLayerManagerLoggingBase.clear;
begin
end;


initialization
  {AB:INITIALIZATION}
  {AB:END}

end.
