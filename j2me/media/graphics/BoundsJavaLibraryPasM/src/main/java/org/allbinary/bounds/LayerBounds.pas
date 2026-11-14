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
// package org.allbinary.bounds
unit LayerBounds;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BoundsChangeEvent, BoundsChangeEventListener, Rectangle, LogUtil, AllBinaryEventObject, BoundsVisitorInterface, EventListenerInterface;

type
  {AB:TYPES}
  TLayerBounds = class(TInterfacedObject, IBoundsChangeEventListener, IEventListenerInterface)
  public
    logUtil: TLogUtil;
    rectangle: TRectangle;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(rectangle_: TRectangle);
        function getRectangleP: TRectangle; virtual;
        procedure visit(boundsVisitorInterface_: IBoundsVisitorInterface); virtual;
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure onBoundsChangeEvent(boundsChangeEvent_: TBoundsChangeEvent); virtual;
  end;

implementation
uses
  ForcedLogUtil, EventStrings;


{AB:CODE}

procedure TLayerBounds.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TLayerBounds.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TLayerBounds.Create(rectangle_: TRectangle);
begin
    inherited Create;
    InitFields;
        Self.rectangle := rectangle_;
end;
    

function TLayerBounds.getRectangleP: TRectangle;
begin
        Exit(Self.rectangle);
end;
    

procedure TLayerBounds.visit(boundsVisitorInterface_: IBoundsVisitorInterface);
begin
end;
    

procedure TLayerBounds.onEvent(eventObject: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, TJava.Box(Self));
end;
    

procedure TLayerBounds.onBoundsChangeEvent(boundsChangeEvent_: TBoundsChangeEvent);
begin
        Self.rectangle := boundsChangeEvent_.getRectangle();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

