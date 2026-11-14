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
unit NullCompleteMotionGestureReceiver;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, BasicArrayList, CompleteMotionGestureListenerInterface;

type
  {AB:TYPES}
  TNullCompleteMotionGestureReceiver = class(TInterfacedObject, ICompleteMotionGestureListenerInterface)
  public
    logUtil: TLogUtil;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure onMotionGestureCompleted(list: TBasicArrayList); virtual;
  end;

implementation
uses
  CommonStrings;


{AB:CODE}

procedure TNullCompleteMotionGestureReceiver.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

function TNullCompleteMotionGestureReceiver.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TNullCompleteMotionGestureReceiver.Create;
var
  commonStrings_: TCommonStrings;
begin
    inherited Create;
    InitFields;
        commonStrings_ := TCommonStrings.getInstance();
        Self.logUtil.putF('Null Gesture Reciever', TJava.Box(Self), commonStrings_.CONSTRUCTOR_);
end;
    

// throws Exception
procedure TNullCompleteMotionGestureReceiver.onMotionGestureCompleted(list: TBasicArrayList);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

