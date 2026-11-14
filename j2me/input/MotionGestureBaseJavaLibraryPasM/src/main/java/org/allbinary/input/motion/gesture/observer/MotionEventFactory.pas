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
unit MotionEventFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, AllBinaryEventObjectFactoryInterface;

type
  {AB:TYPES}
  TMotionEventFactory = class(TInterfacedObject, IAllBinaryEventObjectFactoryInterface)
  public
    source: TObject;
    id: Integer;
    class var index: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(source: TObject; id: Integer);
        function getInstance: TAllBinaryEventObject; virtual;
  end;

implementation
uses
  MotionGestureEvent, Input, InputFactory, MotionGestureInput, TouchMotionGestureFactory;


{AB:CODE}

procedure TMotionEventFactory.InitFields;
begin
  
  
end;

function TMotionEventFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TMotionEventFactory.Create(source: TObject; id: Integer);
begin
    inherited Create;
    InitFields;
        Self.source := TJava.Box(source);
        Self.id := id;
        TMotionEventFactory.index := TTouchMotionGestureFactory.getInstance().LAST_MOTION.getId();
end;
    

function TMotionEventFactory.getInstance: TAllBinaryEventObject;
var
  inputFactory_: TInputFactory;
  input_: TInput;
begin
        inputFactory_ := TInputFactory.getInstance();
        input_ := inputFactory_.getInstanceById(TJava.PostInc(TMotionEventFactory.index));
        if (input_) = (inputFactory_.NO_INPUT) then begin
            Exit(TMotionGestureEvent.Create(TJava.Box(Self.source), Self.id, TMotionGestureInput(TJava.ToObject(TTouchMotionGestureFactory.getInstance().NO_MOTION))));
        end else begin
            Exit(TMotionGestureEvent.Create(TJava.Box(Self.source), Self.id, TMotionGestureInput(TJava.ToObject(input_))));
        end;
end;

initialization
  {AB:INITIALIZATION}
  TMotionEventFactory.index := 0;
  {AB:END}

end.

