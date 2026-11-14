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
// package org.allbinary.input.motion.button
unit MultitouchReleaseHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TouchButtonRecognizer, TouchButtonInput, ReleaseHelper;

type
  {AB:TYPES}
  TMultitouchReleaseHelper = class(TReleaseHelper)
  public
        constructor Create(touchButtonRecognizer_: TTouchButtonRecognizer);
        procedure release(touchButtonInput_: TTouchButtonInput; deviceId: Integer); override;
  end;

implementation
uses
  CancelTouchButtonInputFactory, GameKeyEvent;


{AB:CODE}
    

constructor TMultitouchReleaseHelper.Create(touchButtonRecognizer_: TTouchButtonRecognizer);
begin
        inherited Create(touchButtonRecognizer_);
end;
    

// throws Exception
procedure TMultitouchReleaseHelper.release(touchButtonInput_: TTouchButtonInput; deviceId: Integer);
var
  cancelTouchButtonInput: TTouchButtonInput;
  nextTouchButtonInput: TTouchButtonInput;
  gameKeyEvent_: TGameKeyEvent;
  index: Integer;
begin
        cancelTouchButtonInput := TCancelTouchButtonInputFactory.getInstance().getCancel(touchButtonInput_);
        
        
        for index := (Self.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.size()) - (1) downto 0 do begin
            nextTouchButtonInput := Self.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.get(index);
            if (cancelTouchButtonInput) = (nextTouchButtonInput) then begin
                gameKeyEvent_ := nextTouchButtonInput.getGameKeyEvent();
                Self.touchButtonRecognizer.upGameKeyEventHandler.fireEvent(gameKeyEvent_);
                Self.touchButtonRecognizer.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent_);
                Self.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.removeAt(index);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

