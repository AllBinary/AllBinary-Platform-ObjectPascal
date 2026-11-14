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
// package org.allbinary.input.motion.gesture
unit TrackballMotionGestureFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MotionGestureInput;

type
  {AB:TYPES}
  TTrackballMotionGestureFactory = class(TObject)
  public
    LEFT: TMotionGestureInput;
    RIGHT: TMotionGestureInput;
    UP: TMotionGestureInput;
    DOWN: TMotionGestureInput;
    class var instance: TObject;
    procedure InitFields;
        class function getInstance: TTrackballMotionGestureFactory; static;
        constructor Create;
  end;

implementation
uses
  InputFactory, NullUtil;


{AB:CODE}

procedure TTrackballMotionGestureFactory.InitFields;
begin
  
  
  
  
end;
    

class function TTrackballMotionGestureFactory.getInstance: TTrackballMotionGestureFactory;
begin
        if (TTrackballMotionGestureFactory.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TTrackballMotionGestureFactory.instance := TTrackballMotionGestureFactory.Create();
        end;
        Exit(TTrackballMotionGestureFactory(TJava.ToObject(TTrackballMotionGestureFactory.instance)));
end;
    

constructor TTrackballMotionGestureFactory.Create;
var
  MAX: Integer;
begin
    inherited Create;
    InitFields;
        MAX := TInputFactory.getInstance().MAX;
        Self.LEFT := TMotionGestureInput.Create((MAX) - (26), 'L Trackball');
        Self.RIGHT := TMotionGestureInput.Create((MAX) - (27), 'R Trackball');
        Self.UP := TMotionGestureInput.Create((MAX) - (28), 'Up Trackball');
        Self.DOWN := TMotionGestureInput.Create((MAX) - (29), 'D Trackball');
end;

initialization
  {AB:INITIALIZATION}
  TTrackballMotionGestureFactory.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

