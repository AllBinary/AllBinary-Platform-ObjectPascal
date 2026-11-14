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
unit MotionGestureEventListener;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MotionGestureEvent, BaseMotionGestureEventListener;

type
  {AB:TYPES}
  IMotionGestureEventListener = interface(IBaseMotionGestureEventListener) ['IMotionGestureEventListener']
        procedure onPressedMotionGestureEvent(ev: TMotionGestureEvent);
        procedure onUpMotionGestureEvent(ev: TMotionGestureEvent);
        procedure onDownMotionGestureEvent(ev: TMotionGestureEvent);
        procedure onLeftMotionGestureEvent(ev: TMotionGestureEvent);
        procedure onRightMotionGestureEvent(ev: TMotionGestureEvent);
        procedure onDiagonalDownRightMotionGestureEvent(ev: TMotionGestureEvent);
        procedure onDiagonalDownLeftMotionGestureEvent(ev: TMotionGestureEvent);
        procedure onDiagonalUpRightMotionGestureEvent(ev: TMotionGestureEvent);
        procedure onDiagonalUpLeftMotionGestureEvent(ev: TMotionGestureEvent);
        procedure released(ev: TMotionGestureEvent);
  end;
  TMotionGestureEventListener = IMotionGestureEventListener;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

