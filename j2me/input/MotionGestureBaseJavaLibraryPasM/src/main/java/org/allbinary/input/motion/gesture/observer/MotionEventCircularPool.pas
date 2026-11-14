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
// package org.allbinary.input.motion.gesture.observer
unit MotionEventCircularPool;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MotionGestureInput, AllBinaryEventCircularPool, MotionGestureEvent;

type
  {AB:TYPES}
  TMotionEventCircularPool = class(TObject)
  public
    MIN: Integer;
    eventPool: TAllBinaryEventCircularPool;
    procedure InitFields;
        class function createPool(id: Integer): TMotionEventCircularPool; static;
        constructor Create(id: Integer);
        function getInstance(motionGestureInput_: TMotionGestureInput): TMotionGestureEvent; virtual;
  end;

implementation
uses
  MotionEventFactory, InputFactory, TouchMotionGestureFactory;


{AB:CODE}

procedure TMotionEventCircularPool.InitFields;
begin
  Self.MIN := TTouchMotionGestureFactory.getInstance().LAST_MOTION.getId();
  Self.eventPool := TAllBinaryEventCircularPool.Create((((TInputFactory.getInstance().MAX) - (1))) - (Self.MIN));
end;
    

class function TMotionEventCircularPool.createPool(id: Integer): TMotionEventCircularPool;
begin
        Exit(TMotionEventCircularPool.Create(id));
end;
    

constructor TMotionEventCircularPool.Create(id: Integer);
begin
    inherited Create;
    InitFields;
        Self.eventPool.initAllBinaryEventCircularPool(TMotionEventFactory.Create(TJava.Box(Self.eventPool), id));
end;
    

// throws Exception
function TMotionEventCircularPool.getInstance(motionGestureInput_: TMotionGestureInput): TMotionGestureEvent;
begin
    TJava.MonitorEnter(Self);
    try
        Exit(TMotionGestureEvent(TJava.ToObject(Self.eventPool.getInstance((motionGestureInput_.getId()) - (Self.MIN)))));
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

