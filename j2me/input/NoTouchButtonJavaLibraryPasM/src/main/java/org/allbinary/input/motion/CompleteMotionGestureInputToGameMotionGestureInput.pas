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
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommonStrings;

type
  {AB:TYPES}
  TCompleteMotionGestureInputToGameMotionGestureInput = class(TObject)
  public
    commonStrings: TCommonStrings;
    class var instance: TCompleteMotionGestureInputToGameMotionGestureInput;
    procedure InitFields;
    constructor Create;
        class function getInstance: TCompleteMotionGestureInputToGameMotionGestureInput; static;
        procedure init; virtual;
  end;

implementation
uses
  PreLogUtil;


{AB:CODE}

procedure TCompleteMotionGestureInputToGameMotionGestureInput.InitFields;
begin
  Self.commonStrings := TCommonStrings.getInstance();
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
begin
        TPreLogUtil.put('No Touch Button = No Compound Motion Gestures', TJava.Box(Self), Self.commonStrings.INIT);
end;

initialization
  {AB:INITIALIZATION}
  TCompleteMotionGestureInputToGameMotionGestureInput.instance := TCompleteMotionGestureInputToGameMotionGestureInput.Create();
  {AB:END}

end.

