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
unit TouchMotionGestureFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MotionGestureInput;

type
  {AB:TYPES}
  TTouchMotionGestureFactory = class(TObject)
  public
    LEFT: TMotionGestureInput;
    RIGHT: TMotionGestureInput;
    UP: TMotionGestureInput;
    DOWN: TMotionGestureInput;
    PRESSED: TMotionGestureInput;
    RELEASED: TMotionGestureInput;
    DIAGONAL_DOWN_RIGHT: TMotionGestureInput;
    DIAGONAL_DOWN_LEFT: TMotionGestureInput;
    DIAGONAL_UP_RIGHT: TMotionGestureInput;
    DIAGONAL_UP_LEFT: TMotionGestureInput;
    SCROLL_UP: TMotionGestureInput;
    SCROLL_DOWN: TMotionGestureInput;
    NO_MOTION: TMotionGestureInput;
    LAST_MOTION: TMotionGestureInput;
    class var instance: TObject;
    procedure InitFields;
        class function getInstance: TTouchMotionGestureFactory; static;
        constructor Create;
  end;

implementation
uses
  InputFactory, NullUtil;


{AB:CODE}

procedure TTouchMotionGestureFactory.InitFields;
begin
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end;
    

class function TTouchMotionGestureFactory.getInstance: TTouchMotionGestureFactory;
begin
        if (TTouchMotionGestureFactory.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TTouchMotionGestureFactory.instance := TTouchMotionGestureFactory.Create();
        end;
        Exit(TTouchMotionGestureFactory(TJava.ToObject(TTouchMotionGestureFactory.instance)));
end;
    

constructor TTouchMotionGestureFactory.Create;
var
  MAX: Integer;
begin
    inherited Create;
    InitFields;
        MAX := TInputFactory.getInstance().MAX;
        Self.LEFT := TMotionGestureInput.Create((MAX) - (3), 'Left Touch');
        Self.RIGHT := TMotionGestureInput.Create((MAX) - (4), 'Right Touch');
        Self.UP := TMotionGestureInput.Create((MAX) - (5), 'Up Touch');
        Self.DOWN := TMotionGestureInput.Create((MAX) - (6), 'Down Touch');
        Self.PRESSED := TMotionGestureInput.Create((MAX) - (7), 'Screen Press');
        Self.RELEASED := TMotionGestureInput.Create((MAX) - (8), 'Released');
        Self.DIAGONAL_DOWN_RIGHT := TMotionGestureInput.Create((MAX) - (9), 'Diagonal Dn R');
        Self.DIAGONAL_DOWN_LEFT := TMotionGestureInput.Create((MAX) - (10), 'Diagonal Dn L');
        Self.DIAGONAL_UP_RIGHT := TMotionGestureInput.Create((MAX) - (11), 'Diagonal Up R');
        Self.DIAGONAL_UP_LEFT := TMotionGestureInput.Create((MAX) - (12), 'Diagonal Up L');
        Self.SCROLL_UP := TMotionGestureInput.Create((MAX) - (13), 'Scroll Up');
        Self.SCROLL_DOWN := TMotionGestureInput.Create((MAX) - (14), 'Scroll Down');
        Self.NO_MOTION := TMotionGestureInput.Create((MAX) - (2), 'No Motion');
        Self.LAST_MOTION := TMotionGestureInput.Create((MAX) - (19), 'Last Motion');
end;

initialization
  {AB:INITIALIZATION}
  TTouchMotionGestureFactory.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

