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
// package org.allbinary.game.input
unit CompleteMotionGestureInputEvent;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MotionGestureInput, LogUtil, AllBinaryEventObject, CompleteMotionGestureInputInterface, NamedInterface;

type
  {AB:TYPES}
  TCompleteMotionGestureInputEvent = class(TAllBinaryEventObject, ICompleteMotionGestureInputInterface, INamedInterface)
  public
    logUtil: TLogUtil;
    name: string;
    motionGestureInput: TMotionGestureInput;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(name: string; motionGestureInput_: TMotionGestureInput);
        procedure setName(name: string); virtual;
        function getName: string; virtual;
        procedure setMotionGestureInput(motionGestureInput_: TMotionGestureInput); virtual;
        function getMotionGestureInput: TMotionGestureInput; virtual;
  end;

implementation
uses
  TouchMotionGestureFactory, StringUtil, CommonStrings;


{AB:CODE}

procedure TCompleteMotionGestureInputEvent.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.name := TStringUtil.getInstance().EMPTY_STRING;
  Self.motionGestureInput := TTouchMotionGestureFactory.getInstance().NO_MOTION;
end;

function TCompleteMotionGestureInputEvent.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCompleteMotionGestureInputEvent.Create(name: string; motionGestureInput_: TMotionGestureInput);
var
  commonStrings_: TCommonStrings;
begin
        inherited Create(motionGestureInput_);
        InitFields;
        Self.setName(name);
        try
            Self.setMotionGestureInput(motionGestureInput_);
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), 'InputToGameKeyEventAction', TJava.Box(e));
            end;
        end;
end;
    

procedure TCompleteMotionGestureInputEvent.setName(name: string);
begin
        Self.name := name;
end;
    

function TCompleteMotionGestureInputEvent.getName: string;
begin
        Exit(Self.name);
end;
    

procedure TCompleteMotionGestureInputEvent.setMotionGestureInput(motionGestureInput_: TMotionGestureInput);
begin
        Self.motionGestureInput := motionGestureInput_;
end;
    

function TCompleteMotionGestureInputEvent.getMotionGestureInput: TMotionGestureInput;
begin
        Exit(Self.motionGestureInput);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

