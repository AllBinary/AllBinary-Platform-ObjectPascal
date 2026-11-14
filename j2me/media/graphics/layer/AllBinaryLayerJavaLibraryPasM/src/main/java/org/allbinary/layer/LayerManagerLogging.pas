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
unit LayerManagerLogging;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, StringMaker, AllBinaryLayer, ABLayerManager, LayerManagerLoggingBase;

type
  {AB:TYPES}
  TLayerManagerLogging = class(TLayerManagerLoggingBase)
  public
    logUtil: TLogUtil;
    stringBuilder: TStringMaker;
    APPEND__: string;
    APPEND_: string;
    _AT_: string;
    ATTEMPT_REMOVE_: string;
    REMOVE_: string;
    REMOVE__: string;
    DID_NOT_REMOVE: string;
    CLEAR_: string;
    class var instance: TLayerManagerLogging;
    class var removeFailed: Boolean;
    procedure InitFields;
    constructor Create;
        class function getInstance: TLayerManagerLogging; static;
        procedure append(layerInterface: TAllBinaryLayer); override;
        procedure appendAt(layerInterface: TAllBinaryLayer; index: Integer); override;
        procedure remove(layerInterface: TAllBinaryLayer); override;
        procedure removeResult(layerManager: TABLayerManager; layerInterface: TAllBinaryLayer; result_: Boolean); override;
        procedure log(layerManager: TABLayerManager);
        procedure clear; override;
  end;

implementation
uses
  TsUtil, StringUtil, CommonSeps;


{AB:CODE}

procedure TLayerManagerLogging.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.stringBuilder := TStringMaker.Create();
  Self.APPEND__ := 'append';
  Self.APPEND_ := ' append: ';
  Self._AT_ := ' at: ';
  Self.ATTEMPT_REMOVE_ := ' Remove Attempt: ';
  Self.REMOVE_ := ' Remove: ';
  Self.REMOVE__ := 'remove';
  Self.DID_NOT_REMOVE := ' Did not remove: ';
  Self.CLEAR_ := ' Clear List';
end;

constructor TLayerManagerLogging.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TLayerManagerLogging.getInstance: TLayerManagerLogging;
begin
        Exit(TLayerManagerLogging.instance);
end;
    

// throws Exception
procedure TLayerManagerLogging.append(layerInterface: TAllBinaryLayer);
begin
        Self.stringBuilder.delete_(0, Self.stringBuilder.length());
        Self.logUtil.putF(Self.stringBuilder.appendint(Integer(Trunc(TTsUtil.getInstance().hashCode(TJava.Box(Self))))).append(Self.APPEND_).append(layerInterface.getName()).toString(), TJava.Box(Self), Self.APPEND__);
end;
    

procedure TLayerManagerLogging.appendAt(layerInterface: TAllBinaryLayer; index: Integer);
begin
        Self.stringBuilder.delete_(0, Self.stringBuilder.length());
        Self.logUtil.putF(Self.stringBuilder.appendint(Integer(Trunc(TTsUtil.getInstance().hashCode(TJava.Box(Self))))).append(Self.APPEND_).append(layerInterface.getName()).append(Self._AT_).appendint(index).toString(), TJava.Box(Self), Self.APPEND__);
end;
    

procedure TLayerManagerLogging.remove(layerInterface: TAllBinaryLayer);
begin
        if (layerInterface) = (nil) then begin
            Self.stringBuilder.delete_(0, Self.stringBuilder.length());
            Self.logUtil.putF(Self.stringBuilder.appendint(Integer(Trunc(TTsUtil.getInstance().hashCode(TJava.Box(Self))))).append(Self.ATTEMPT_REMOVE_).append(TStringUtil.getInstance().toString(layerInterface)).toString(), TJava.Box(Self), Self.REMOVE__);
        end else begin
            Self.stringBuilder.delete_(0, Self.stringBuilder.length());
            Self.logUtil.putF(Self.stringBuilder.appendint(Integer(Trunc(TTsUtil.getInstance().hashCode(TJava.Box(Self))))).append(Self.ATTEMPT_REMOVE_).append(layerInterface.getName()).toString(), TJava.Box(Self), Self.REMOVE__);
        end;
end;
    

procedure TLayerManagerLogging.removeResult(layerManager: TABLayerManager; layerInterface: TAllBinaryLayer; result_: Boolean);
begin
        if (layerInterface) = (nil) then begin
            Self.stringBuilder.delete_(0, Self.stringBuilder.length());
            Self.logUtil.putF(Self.stringBuilder.appendint(Integer(Trunc(TTsUtil.getInstance().hashCode(TJava.Box(Self))))).append(Self.REMOVE_).append(TStringUtil.getInstance().toString(layerInterface)).toString(), TJava.Box(Self), Self.REMOVE__);
        end else if result_ then begin
            if TLayerManagerLogging.removeFailed then begin
                Self.stringBuilder.delete_(0, Self.stringBuilder.length());
                Self.logUtil.putF(Self.stringBuilder.appendint(Integer(Trunc(TTsUtil.getInstance().hashCode(TJava.Box(Self))))).append(Self.REMOVE_).append(layerInterface.getName()).toString(), TJava.Box(Self), Self.REMOVE__);
            end;
        end else begin
            Self.stringBuilder.delete_(0, Self.stringBuilder.length());
            Self.logUtil.putF(Self.stringBuilder.appendint(Integer(Trunc(TTsUtil.getInstance().hashCode(TJava.Box(Self))))).append(Self.DID_NOT_REMOVE).append(layerInterface.getName()).toString(), TJava.Box(Self), Self.REMOVE__);
            TLayerManagerLogging.removeFailed := True;
        end;
end;
    

procedure TLayerManagerLogging.log(layerManager: TABLayerManager);
var
  size: Integer;
  commonSeps_: TCommonSeps;
  allBinaryLayer_: TAllBinaryLayer;
  index: Integer;
begin
        Self.stringBuilder.delete_(0, Self.stringBuilder.length());
        size := layerManager.getSize();
        commonSeps_ := TCommonSeps.getInstance();
        Self.stringBuilder.append(IntToHex(TTsUtil.getInstance().hashCode(TJava.Box(layerManager)))).append(commonSeps_.COLON_SEP);
        Self.stringBuilder.appendint(size).append(commonSeps_.COLON_SEP);
        
        for index := 0 to size - 1 do begin
            allBinaryLayer_ := (TAllBinaryLayer(TJava.ToObject(layerManager.getLayerAt(index))));
            Self.stringBuilder.append(allBinaryLayer_.getName()).append(commonSeps_.COMMA);
        end;
        Self.logUtil.putF(Self.stringBuilder.toString(), TJava.Box(Self), Self.REMOVE__);
end;
    

procedure TLayerManagerLogging.clear;
begin
        Self.stringBuilder.delete_(0, Self.stringBuilder.length());
        Self.logUtil.putF(Self.stringBuilder.appendint(Integer(Trunc(TTsUtil.getInstance().hashCode(TJava.Box(Self))))).append(Self.CLEAR_).toString(), TJava.Box(Self), Self.CLEAR_);
end;

initialization
  {AB:INITIALIZATION}
  TLayerManagerLogging.instance := TLayerManagerLogging.Create();
  TLayerManagerLogging.removeFailed := False;
  {AB:END}

end.

