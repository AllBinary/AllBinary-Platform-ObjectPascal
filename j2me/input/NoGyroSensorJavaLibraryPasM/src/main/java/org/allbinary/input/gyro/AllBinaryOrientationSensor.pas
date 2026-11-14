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
// package org.allbinary.input.gyro
unit AllBinaryOrientationSensor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CompleteMotionGestureInputEventListenerInterface, AllBinarySensor, Orientation;

type
  {AB:TYPES}
  TAllBinaryOrientationSensor = class(TAllBinarySensor)
  public
    listener: ICompleteMotionGestureInputEventListenerInterface;
    class var NULL_ALLBINARY_ORIENTATION_SENSOR: TAllBinaryOrientationSensor;
    procedure InitFields;
        procedure setListener(completeMotionGestureInputEventListenerInterface_: ICompleteMotionGestureInputEventListenerInterface); virtual;
        constructor Create;
        function getOrientation: TOrientation; virtual;
  end;

implementation
uses
  NoCompleteMotionGestureInputEventListener;


{AB:CODE}

procedure TAllBinaryOrientationSensor.InitFields;
begin
  Self.listener := TNoCompleteMotionGestureInputEventListener.getInstance();
end;
    

procedure TAllBinaryOrientationSensor.setListener(completeMotionGestureInputEventListenerInterface_: ICompleteMotionGestureInputEventListenerInterface);
begin
        Self.listener := completeMotionGestureInputEventListenerInterface_;
end;
    

constructor TAllBinaryOrientationSensor.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TAllBinaryOrientationSensor.getOrientation: TOrientation;
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;

initialization
  {AB:INITIALIZATION}
  TAllBinaryOrientationSensor.NULL_ALLBINARY_ORIENTATION_SENSOR := TAllBinaryOrientationSensor.Create();
  {AB:END}

end.

