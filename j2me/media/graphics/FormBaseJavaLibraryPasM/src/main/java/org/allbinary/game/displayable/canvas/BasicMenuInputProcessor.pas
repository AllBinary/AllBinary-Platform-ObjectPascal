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
// package org.allbinary.game.displayable.canvas
unit BasicMenuInputProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Canvas, PlayerGameInput, MyCanvas, BaseMotionGestureEventListener, MotionGestureEvent, BasicArrayList, EventListenerInterface;

type
  {AB:TYPES}
  TBasicMenuInputProcessor = class(TPlayerGameInput, IBaseMotionGestureEventListener, IEventListenerInterface)
  public
    motionGestureEventList: TBasicArrayList;
    canvas: TCanvas;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(gameKeyEventList: TBasicArrayList; playerInputId: Integer; gameCanvas: TCanvas);
        procedure onMotionGestureEvent(motionGestureEvent_: TMotionGestureEvent); virtual;
        procedure onScrolledMotionGestureEvent(motionGestureEvent_: TMotionGestureEvent); virtual;
        procedure setCanvas(canvas_: TMyCanvas);
        function getCanvas: TMyCanvas; virtual;
        function processInputList: Integer; virtual;
  end;

implementation
uses
  NullCanvas, BasicArrayListD;


{AB:CODE}

procedure TBasicMenuInputProcessor.InitFields;
begin
  Self.motionGestureEventList := TBasicArrayListD.Create();
  Self.canvas := TNullCanvas.NULL_CANVAS;
end;

function TBasicMenuInputProcessor.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TBasicMenuInputProcessor.Create(gameKeyEventList: TBasicArrayList; playerInputId: Integer; gameCanvas: TCanvas);
begin
        inherited Create(gameKeyEventList, TBasicArrayListD.Create(), playerInputId);
        InitFields;
        Self.canvas := gameCanvas;
end;
    

procedure TBasicMenuInputProcessor.onMotionGestureEvent(motionGestureEvent_: TMotionGestureEvent);
begin
        Self.motionGestureEventList.add(TJava.Box(motionGestureEvent_));
end;
    

procedure TBasicMenuInputProcessor.onScrolledMotionGestureEvent(motionGestureEvent_: TMotionGestureEvent);
begin
end;
    

procedure TBasicMenuInputProcessor.setCanvas(canvas_: TMyCanvas);
begin
        Self.canvas := canvas_;
end;
    

function TBasicMenuInputProcessor.getCanvas: TMyCanvas;
begin
        Exit(TMyCanvas(TJava.ToObject(Self.canvas)));
end;
    

// throws Exception
function TBasicMenuInputProcessor.processInputList: Integer;
begin
        Exit(-1);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

