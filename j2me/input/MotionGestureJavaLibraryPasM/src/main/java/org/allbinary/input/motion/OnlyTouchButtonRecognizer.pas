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
unit OnlyTouchButtonRecognizer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TouchButtonRecognizer, MotionRecognizer;

type
  {AB:TYPES}
  TOnlyTouchButtonRecognizer = class(TMotionRecognizer)
  public
    touchButtonRecognizer: TTouchButtonRecognizer;
    touchButtonProcessing: Boolean;
    procedure InitFields;
        constructor Create;
        procedure processStartMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer); override;
        procedure processEndMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer); override;
        procedure processDraggedMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer); override;
  end;

implementation

{AB:CODE}

procedure TOnlyTouchButtonRecognizer.InitFields;
begin
  
  Self.touchButtonProcessing := False;
end;
    

constructor TOnlyTouchButtonRecognizer.Create;
begin
    inherited Create;
    InitFields;
        Self.touchButtonRecognizer := TTouchButtonRecognizer.Create();
end;
    

// throws Exception
procedure TOnlyTouchButtonRecognizer.processStartMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer);
begin
        if Self.touchButtonRecognizer.pressTouchButtonInput(x, y, deviceId) then begin
            Self.touchButtonProcessing := True;
        end;
end;
    

// throws Exception
procedure TOnlyTouchButtonRecognizer.processEndMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer);
begin
        if Self.touchButtonProcessing then begin
            Self.touchButtonProcessing := False;
        end;
        if Self.touchButtonRecognizer.releaseTouchButtonInput(x, y, deviceId) then begin
            Exit;
        end;
end;
    

// throws Exception
procedure TOnlyTouchButtonRecognizer.processDraggedMotionEvent(x: Integer; y: Integer; deviceId: Integer; modifiers: Integer);
begin
        if Self.touchButtonProcessing then begin
            Self.touchButtonRecognizer.pressTouchButtonInput(x, y, deviceId);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

