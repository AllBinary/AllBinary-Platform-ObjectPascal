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
// package org.allbinary.view.event
unit ViewPositionEventHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryLayer, AllBinaryEventObject, EventListenerInterface, BasicEventHandler, BasicArrayList;

type
  {AB:TYPES}
  TViewPositionEventHandler = class(TBasicEventHandler)
  public
    list: TBasicArrayList;
    class var SINGLETON: TViewPositionEventHandler;
    procedure InitFields;
        class function getInstance: TViewPositionEventHandler; static;
        constructor Create;
        procedure addListener(layerInterface: TAllBinaryLayer); virtual;
        procedure removeAllListeners; override;
        procedure removeListener(eventListenerInterface_: IEventListenerInterface); override;
        procedure fireEvent(eventObject: TAllBinaryEventObject); override;
        procedure process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface); override;
  end;

implementation
uses
  ViewPositionEvent, ViewPositionEventListenerInterface, EventStrings, BasicArrayListD;


{AB:CODE}

procedure TViewPositionEventHandler.InitFields;
begin
  Self.list := TBasicArrayListD.Create();
end;
    

class function TViewPositionEventHandler.getInstance: TViewPositionEventHandler;
begin
        Exit(TViewPositionEventHandler.SINGLETON);
end;
    

constructor TViewPositionEventHandler.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TViewPositionEventHandler.addListener(layerInterface: TAllBinaryLayer);
begin
        if not (Self.list.contains(TJava.Box(layerInterface))) then begin
            Self.list.add(TJava.Box(layerInterface));
        end;
end;
    

procedure TViewPositionEventHandler.removeAllListeners;
begin
        Self.list.clear();
        inherited removeAllListeners();
end;
    

procedure TViewPositionEventHandler.removeListener(eventListenerInterface_: IEventListenerInterface);
begin
        Self.list.remove(TJava.ToObject(eventListenerInterface_));
        inherited removeListener(eventListenerInterface_);
end;
    

// throws Exception
procedure TViewPositionEventHandler.fireEvent(eventObject: TAllBinaryEventObject);
var
  layerInterface: TAllBinaryLayer;
  index: Integer;
begin
        index := Self.list.size();
        while (TJava.PreDec(index)) >= (0) do begin
            try
                layerInterface := TAllBinaryLayer(TJava.ToObject(Self.list.objectArray[index]));
                layerInterface.onChangeEvent(TViewPositionEvent(TJava.ToObject(eventObject)));
            except
                on e: SysUtils.Exception do begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), TEventStrings.getInstance().FIRE_EVENT, TJava.Box(e));
                end;
            end;
        end;
        inherited fireEvent(eventObject);
end;
    

// throws Exception
procedure TViewPositionEventHandler.process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface);
var
  viewPositionEventListenerInterface_: IViewPositionEventListenerInterface;
begin
        viewPositionEventListenerInterface_ := ((TJava.ToObject(eventListenerInterface_) as IViewPositionEventListenerInterface));
        viewPositionEventListenerInterface_.onChangeEvent(TViewPositionEvent(TJava.ToObject(eventObject)));
end;

initialization
  {AB:INITIALIZATION}
  TViewPositionEventHandler.SINGLETON := TViewPositionEventHandler.Create();
  {AB:END}

end.

