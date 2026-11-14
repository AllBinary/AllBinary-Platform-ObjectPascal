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
// package org.allbinary.input.motion
unit CompleteMotionGestureInputToGameMotionGestureInput;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil;

type
  {AB:TYPES}
  TCompleteMotionGestureInputToGameMotionGestureInput = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TCompleteMotionGestureInputToGameMotionGestureInput;
    procedure InitFields;
    constructor Create;
        class function getInstance: TCompleteMotionGestureInputToGameMotionGestureInput; static;
        procedure init; virtual;
  end;

implementation
uses
  TouchMotionGestureFactory, MotionGestureConfiguration, MotionGestureConfigurationFactory, DiagonalDownLeftTouchInputToGameKeyEventAction, DiagonalDownRightTouchInputToGameKeyEventAction, DiagonalUpLeftTouchInputToGameKeyEventAction, DiagonalUpRightTouchInputToGameKeyEventAction, DownTouchInputToGameKeyEventAction, LeftTouchInputToGameKeyEventAction, ReleaseTouchInputToGameKeyEventAction, RightTouchInputToGameKeyEventAction, UpTouchInputToGameKeyEventAction, PreLogUtil, CommonStrings, BasicArrayList, BasicArrayListD;


{AB:CODE}

procedure TCompleteMotionGestureInputToGameMotionGestureInput.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

constructor TCompleteMotionGestureInputToGameMotionGestureInput.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TCompleteMotionGestureInputToGameMotionGestureInput.getInstance: TCompleteMotionGestureInputToGameMotionGestureInput;
begin
        Exit(TCompleteMotionGestureInputToGameMotionGestureInput.instance);
end;
    

procedure TCompleteMotionGestureInputToGameMotionGestureInput.init;
var
  commonStrings_: TCommonStrings;
  motionGestureConfiguration_: TMotionGestureConfiguration;
  touchMotionGestureFactory_: TTouchMotionGestureFactory;
  list: TBasicArrayList;
begin
        commonStrings_ := TCommonStrings.getInstance();
        try
            TPreLogUtil.put('Compound Motion Gestures', TJava.Box(Self), commonStrings_.INIT);
            motionGestureConfiguration_ := TMotionGestureConfigurationFactory.getInstance();
            touchMotionGestureFactory_ := TTouchMotionGestureFactory.getInstance();
            list := TBasicArrayListD.Create();
            list.add(TJava.Box(touchMotionGestureFactory_.DIAGONAL_DOWN_LEFT));
            motionGestureConfiguration_.addMotionGestureAction(list, TDiagonalDownLeftTouchInputToGameKeyEventAction.getInstance());
            list := TBasicArrayListD.Create();
            list.add(TJava.Box(touchMotionGestureFactory_.DIAGONAL_DOWN_RIGHT));
            motionGestureConfiguration_.addMotionGestureAction(list, TDiagonalDownRightTouchInputToGameKeyEventAction.getInstance());
            list := TBasicArrayListD.Create();
            list.add(TJava.Box(touchMotionGestureFactory_.DIAGONAL_UP_LEFT));
            motionGestureConfiguration_.addMotionGestureAction(list, TDiagonalUpLeftTouchInputToGameKeyEventAction.getInstance());
            list := TBasicArrayListD.Create();
            list.add(TJava.Box(touchMotionGestureFactory_.DIAGONAL_UP_RIGHT));
            motionGestureConfiguration_.addMotionGestureAction(list, TDiagonalUpRightTouchInputToGameKeyEventAction.getInstance());
            list := TBasicArrayListD.Create();
            list.add(TJava.Box(touchMotionGestureFactory_.LEFT));
            motionGestureConfiguration_.addMotionGestureAction(list, TLeftTouchInputToGameKeyEventAction.getInstance());
            list := TBasicArrayListD.Create();
            list.add(TJava.Box(touchMotionGestureFactory_.RIGHT));
            motionGestureConfiguration_.addMotionGestureAction(list, TRightTouchInputToGameKeyEventAction.getInstance());
            list := TBasicArrayListD.Create();
            list.add(TJava.Box(touchMotionGestureFactory_.DOWN));
            motionGestureConfiguration_.addMotionGestureAction(list, TDownTouchInputToGameKeyEventAction.getInstance());
            list := TBasicArrayListD.Create();
            list.add(TJava.Box(touchMotionGestureFactory_.UP));
            motionGestureConfiguration_.addMotionGestureAction(list, TUpTouchInputToGameKeyEventAction.getInstance());
            list := TBasicArrayListD.Create();
            list.add(TJava.Box(touchMotionGestureFactory_.RELEASED));
            motionGestureConfiguration_.addMotionGestureAction(list, TReleaseTouchInputToGameKeyEventAction.getInstance());
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.INIT, TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TCompleteMotionGestureInputToGameMotionGestureInput.instance := TCompleteMotionGestureInputToGameMotionGestureInput.Create();
  {AB:END}

end.

