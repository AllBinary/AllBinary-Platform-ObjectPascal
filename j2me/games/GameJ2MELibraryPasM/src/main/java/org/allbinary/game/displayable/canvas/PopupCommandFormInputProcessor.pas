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
// package org.allbinary.game.displayable.canvas
unit PopupCommandFormInputProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MyCanvas, ScrollSelectionForm, MotionGestureEvent, BasicArrayList, PopupMenuInputProcessor, CommandFormInputProcessor;

type
  {AB:TYPES}
  TPopupCommandFormInputProcessor = class(TCommandFormInputProcessor)
  public
        constructor Create(gameKeyEventList: TBasicArrayList; playerInputId: Integer; gameCanvas: TMyCanvas; form: TScrollSelectionForm; popupMenuInputProcessor_: TPopupMenuInputProcessor);
        function processInput(key: Integer): Integer; override;
        procedure processMotionInput(motionGestureEvent_: TMotionGestureEvent); override;
  end;

implementation

{AB:CODE}
    

constructor TPopupCommandFormInputProcessor.Create(gameKeyEventList: TBasicArrayList; playerInputId: Integer; gameCanvas: TMyCanvas; form: TScrollSelectionForm; popupMenuInputProcessor_: TPopupMenuInputProcessor);
begin
        inherited Create(gameKeyEventList, playerInputId, gameCanvas, form);
end;
    

// throws Exception
function TPopupCommandFormInputProcessor.processInput(key: Integer): Integer;
begin
        Exit(inherited processInput(key));
end;
    

// throws Exception
procedure TPopupCommandFormInputProcessor.processMotionInput(motionGestureEvent_: TMotionGestureEvent);
begin
        inherited processMotionInput(motionGestureEvent_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

