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
unit BasicLayerProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, BasicArrayList, AllBinaryLayer, AllBinaryLayerManager;

type
  {AB:TYPES}
  TBasicLayerProcessor = class(TObject)
  public
    logUtil: TLogUtil;
    list: TBasicArrayList;
    class var NULL_LAYER_PROCESSOR: TBasicLayerProcessor;
    procedure InitFields;
        constructor Create;
        procedure add(layerInterface: TAllBinaryLayer); virtual;
        procedure process(allBinaryLayerManager_: TAllBinaryLayerManager); virtual;
        function getList: TBasicArrayList; virtual;
  end;

implementation
uses
  CommonStrings, BasicArrayListD;


{AB:CODE}

procedure TBasicLayerProcessor.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.list := TBasicArrayListD.Create();
end;
    

constructor TBasicLayerProcessor.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TBasicLayerProcessor.add(layerInterface: TAllBinaryLayer);
begin
        if not (Self.list.contains(TJava.Box(layerInterface))) then begin
            Self.list.add(TJava.Box(layerInterface));
        end;
end;
    

// throws Exception
procedure TBasicLayerProcessor.process(allBinaryLayerManager_: TAllBinaryLayerManager);
begin
        raise SysUtils.Exception.Create(TCommonStrings.getInstance().NOT_IMPLEMENTED);
end;
    

function TBasicLayerProcessor.getList: TBasicArrayList;
begin
        Exit(Self.list);
end;

initialization
  {AB:INITIALIZATION}
  TBasicLayerProcessor.NULL_LAYER_PROCESSOR := TBasicLayerProcessor.Create();
  {AB:END}

end.

