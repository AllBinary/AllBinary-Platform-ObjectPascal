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
unit OrientationMotionGestureFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MotionGestureInput;

type
  {AB:TYPES}
  TOrientationMotionGestureFactory = class(TObject)
  public
    LEFT: TMotionGestureInput;
    RIGHT: TMotionGestureInput;
    UP: TMotionGestureInput;
    DOWN: TMotionGestureInput;
    ROLL_LEFT: TMotionGestureInput;
    ROLL_RIGHT: TMotionGestureInput;
    class var instance: TObject;
    procedure InitFields;
        class function getInstance: TOrientationMotionGestureFactory; static;
        constructor Create;
  end;

implementation
uses
  InputFactory, NullUtil;


{AB:CODE}

procedure TOrientationMotionGestureFactory.InitFields;
begin
  
  
  
  
  
  
end;
    

class function TOrientationMotionGestureFactory.getInstance: TOrientationMotionGestureFactory;
begin
        if (TOrientationMotionGestureFactory.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TOrientationMotionGestureFactory.instance := TOrientationMotionGestureFactory.Create();
        end;
        Exit(TOrientationMotionGestureFactory(TJava.ToObject(TOrientationMotionGestureFactory.instance)));
end;
    

constructor TOrientationMotionGestureFactory.Create;
var
  MAX: Integer;
begin
    inherited Create;
    InitFields;
        MAX := TInputFactory.getInstance().MAX;
        Self.LEFT := TMotionGestureInput.Create((MAX) - (20), 'Left Orient');
        Self.RIGHT := TMotionGestureInput.Create((MAX) - (21), 'Right Orient');
        Self.UP := TMotionGestureInput.Create((MAX) - (22), 'Up Orient');
        Self.DOWN := TMotionGestureInput.Create((MAX) - (23), 'Down Orient');
        Self.ROLL_LEFT := TMotionGestureInput.Create((MAX) - (24), 'Roll Left');
        Self.ROLL_RIGHT := TMotionGestureInput.Create((MAX) - (25), 'Roll Right');
end;

initialization
  {AB:INITIALIZATION}
  TOrientationMotionGestureFactory.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

