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
// package org.allbinary.input.motion.gesture.configuration
unit MotionGestureConfiguration;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CompleteMotionGestureInputEvent, BasicColor, BasicArrayList;

type
  {AB:TYPES}
  TMotionGestureConfiguration = class(TObject)
  public
    diagonalMotionGestureAllowed: Boolean;
    diagonalTolerance: Integer;
    minimumMotionGesture: Integer;
    button: string;
    color: TBasicColor;
    executingActions: Boolean;
    mouseButtonMask: Integer;
    activeCommands: TBasicArrayList;
    procedure InitFields;
        constructor Create;
        procedure addMotionGestureAction(list: TBasicArrayList; commandAction: TCompleteMotionGestureInputEvent); virtual;
        procedure clearMotionGestureAction; virtual;
        function getAssociateCommandActionsList: TBasicArrayList; virtual;
        function isDiagonalMotionGestureAllowed: Boolean; virtual;
        function isExecutingActionsAllowed: Boolean; virtual;
        procedure setExecutingActionsAllowed(executingActionAllowed: Boolean); virtual;
        procedure setDiagonalMotionGestureAllowed(diagonalMotionGestureAllowed: Boolean); virtual;
        function getDiagonalTolerance: Integer; virtual;
        procedure setDiagonalTolerance(diagonalTolerance: Integer); virtual;
        function getMinimumMotionGesture: Integer; virtual;
        procedure setMinimumMotionGesture(minimumMotionGesture: Integer); virtual;
        function getButton: string; virtual;
        procedure setButton(button: string); virtual;
        function getColor: TBasicColor; virtual;
        procedure setColor(color: TBasicColor); virtual;
        function getMouseButtonMask: Integer; virtual;
        procedure setMouseButtonMask(mouseButtonMask: Integer); virtual;
  end;

implementation
uses
  BasicColorFactory, MotionGestureToMotionGestureActionAssociation, StringUtil, BasicArrayListD;


{AB:CODE}

procedure TMotionGestureConfiguration.InitFields;
begin
  Self.diagonalMotionGestureAllowed := True;
  Self.diagonalTolerance := 7;
  Self.minimumMotionGesture := 9;
  Self.button := TStringUtil.getInstance().EMPTY_STRING;
  Self.color := TBasicColorFactory.getInstance().BLUE;
  Self.executingActions := True;
  Self.mouseButtonMask := 0;
  Self.activeCommands := TBasicArrayListD.Create();
end;
    

constructor TMotionGestureConfiguration.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TMotionGestureConfiguration.addMotionGestureAction(list: TBasicArrayList; commandAction: TCompleteMotionGestureInputEvent);
begin
        Self.activeCommands.add(TJava.Box(TMotionGestureToMotionGestureActionAssociation.Create(list, commandAction)));
end;
    

procedure TMotionGestureConfiguration.clearMotionGestureAction;
begin
        Self.activeCommands.clear();
end;
    

function TMotionGestureConfiguration.getAssociateCommandActionsList: TBasicArrayList;
begin
        Exit(Self.activeCommands);
end;
    

function TMotionGestureConfiguration.isDiagonalMotionGestureAllowed: Boolean;
begin
        Exit(Self.diagonalMotionGestureAllowed);
end;
    

function TMotionGestureConfiguration.isExecutingActionsAllowed: Boolean;
begin
        Exit(Self.executingActions);
end;
    

procedure TMotionGestureConfiguration.setExecutingActionsAllowed(executingActionAllowed: Boolean);
begin
        Self.executingActions := executingActionAllowed;
end;
    

procedure TMotionGestureConfiguration.setDiagonalMotionGestureAllowed(diagonalMotionGestureAllowed: Boolean);
begin
        Self.diagonalMotionGestureAllowed := diagonalMotionGestureAllowed;
end;
    

function TMotionGestureConfiguration.getDiagonalTolerance: Integer;
begin
        Exit(Self.diagonalTolerance);
end;
    

procedure TMotionGestureConfiguration.setDiagonalTolerance(diagonalTolerance: Integer);
begin
        Self.diagonalTolerance := diagonalTolerance;
end;
    

function TMotionGestureConfiguration.getMinimumMotionGesture: Integer;
begin
        Exit(Self.minimumMotionGesture);
end;
    

procedure TMotionGestureConfiguration.setMinimumMotionGesture(minimumMotionGesture: Integer);
begin
        Self.minimumMotionGesture := minimumMotionGesture;
end;
    

function TMotionGestureConfiguration.getButton: string;
begin
        Exit(Self.button);
end;
    

procedure TMotionGestureConfiguration.setButton(button: string);
begin
        Self.button := button;
end;
    

function TMotionGestureConfiguration.getColor: TBasicColor;
begin
        Exit(Self.color);
end;
    

procedure TMotionGestureConfiguration.setColor(color: TBasicColor);
begin
        Self.color := color;
end;
    

function TMotionGestureConfiguration.getMouseButtonMask: Integer;
begin
        Exit(Self.mouseButtonMask);
end;
    

procedure TMotionGestureConfiguration.setMouseButtonMask(mouseButtonMask: Integer);
begin
        Self.mouseButtonMask := mouseButtonMask;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

