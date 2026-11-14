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
unit MotionGestureToMotionGestureActionAssociation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CompleteMotionGestureInputEvent, BasicArrayList;

type
  {AB:TYPES}
  TMotionGestureToMotionGestureActionAssociation = class(TObject)
  public
    list: TBasicArrayList;
    motionGestureAction: TCompleteMotionGestureInputEvent;
    procedure InitFields;
        constructor Create(list: TBasicArrayList; commandAction: TCompleteMotionGestureInputEvent);
        function getMotionGesture: TBasicArrayList; virtual;
        procedure setMotionGestures(list: TBasicArrayList); virtual;
        function getCommandAction: TCompleteMotionGestureInputEvent; virtual;
        procedure setMotionGestureAction(commandAction: TCompleteMotionGestureInputEvent); virtual;
        function isMotionGestureArrayEquals(aList: TBasicArrayList): Boolean; virtual;
  end;

implementation

{AB:CODE}

procedure TMotionGestureToMotionGestureActionAssociation.InitFields;
begin
  
  
end;
    

constructor TMotionGestureToMotionGestureActionAssociation.Create(list: TBasicArrayList; commandAction: TCompleteMotionGestureInputEvent);
begin
    inherited Create;
    InitFields;
        Self.list := list;
        Self.motionGestureAction := commandAction;
end;
    

function TMotionGestureToMotionGestureActionAssociation.getMotionGesture: TBasicArrayList;
begin
        Exit(Self.list);
end;
    

procedure TMotionGestureToMotionGestureActionAssociation.setMotionGestures(list: TBasicArrayList);
begin
        Self.list := list;
end;
    

function TMotionGestureToMotionGestureActionAssociation.getCommandAction: TCompleteMotionGestureInputEvent;
begin
        Exit(Self.motionGestureAction);
end;
    

procedure TMotionGestureToMotionGestureActionAssociation.setMotionGestureAction(commandAction: TCompleteMotionGestureInputEvent);
begin
        Self.motionGestureAction := commandAction;
end;
    

function TMotionGestureToMotionGestureActionAssociation.isMotionGestureArrayEquals(aList: TBasicArrayList): Boolean;
var
  size: Integer;
  i: Integer;
begin
        size := aList.size();
        if (Self.list.size()) <> (size) then begin
            Exit(False);
        end;
        for i := (size) - (1) downto 0 do begin
            if (aList.objectArray[i]) <> (Self.list.objectArray[i]) then begin
                Exit(False);
            end;
        end;
        Exit(True);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

