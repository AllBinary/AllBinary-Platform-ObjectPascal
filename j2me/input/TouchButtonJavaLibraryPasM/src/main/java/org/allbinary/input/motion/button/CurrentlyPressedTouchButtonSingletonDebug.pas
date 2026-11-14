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
unit CurrentlyPressedTouchButtonSingletonDebug;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CurrentlyPressedTouchButtonSingleton, TouchButtonInput;

type
  {AB:TYPES}
  TCurrentlyPressedTouchButtonSingletonDebug = class(TCurrentlyPressedTouchButtonSingleton)
  public
    string_: string;
    listString: string;
    appendText: string;
    PRESSED_AND_FIRED: string;
    PRESSED_AND_NOT_FIRED: string;
    ASSOCIATED_RELEASED_AND_FIRED: string;
    RELEASED_AND_FIRED: string;
    RELEASED_AND_FIRED_2: string;
    RELEASED_AND_NOT_FIRED: string;
    class var instanceC: TCurrentlyPressedTouchButtonSingletonDebug;
    procedure InitFields;
    constructor Create;
        class function getInstance: TCurrentlyPressedTouchButtonSingleton; static;
        procedure appendTouchButtonInput(append: string; touchButtonInput_: TTouchButtonInput);
        procedure append(append: string);
        procedure clearLog(x: Integer; y: Integer); virtual;
        procedure releaseAndNotFired; virtual;
        procedure releaseAndFired(touchButtonInput_: TTouchButtonInput); virtual;
        procedure releaseAndFired2(touchButtonInput_: TTouchButtonInput); virtual;
        procedure releaseAndFiredAssociated(touchButtonInput_: TTouchButtonInput); virtual;
        procedure pressedAndFired(touchButtonInput_: TTouchButtonInput); virtual;
        procedure pressedAndNotFired(touchButtonInput_: TTouchButtonInput); virtual;
        function removeAt(index: Integer): TTouchButtonInput; override;
        function remove(touchButtonInput_: TTouchButtonInput): Boolean; override;
        procedure add(touchButtonInput_: TTouchButtonInput); override;
        function toString: string; override;
  end;

implementation
uses
  GPoint, StringMaker, StringUtil, CommonSeps;


{AB:CODE}

procedure TCurrentlyPressedTouchButtonSingletonDebug.InitFields;
begin
  Self.string_ := TStringUtil.getInstance().EMPTY_STRING;
  Self.listString := TStringUtil.getInstance().EMPTY_STRING;
  Self.appendText := TStringUtil.getInstance().EMPTY_STRING;
  Self.PRESSED_AND_FIRED := 'pressed & fired';
  Self.PRESSED_AND_NOT_FIRED := 'pressed in button but not fired';
  Self.ASSOCIATED_RELEASED_AND_FIRED := 'assoc. rel & fired';
  Self.RELEASED_AND_FIRED := 'rel & fired 1';
  Self.RELEASED_AND_FIRED_2 := 'rel & fired 2';
  Self.RELEASED_AND_NOT_FIRED := 'rel & not fired';
end;

constructor TCurrentlyPressedTouchButtonSingletonDebug.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TCurrentlyPressedTouchButtonSingletonDebug.getInstance: TCurrentlyPressedTouchButtonSingleton;
begin
        Exit(TCurrentlyPressedTouchButtonSingletonDebug.instanceC);
end;
    

procedure TCurrentlyPressedTouchButtonSingletonDebug.appendTouchButtonInput(append: string; touchButtonInput_: TTouchButtonInput);
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(touchButtonInput_.toString());
        stringBuffer.append(TCommonSeps.getInstance().SPACE);
        stringBuffer.append(append);
        Self.appendText := stringBuffer.toString();
        Self.string_ := TStringMaker.Create().append(Self.listString).append(Self.appendText).toString();
end;
    

procedure TCurrentlyPressedTouchButtonSingletonDebug.append(append: string);
begin
        Self.appendText := TStringMaker.Create().append(Self.appendText).append(append).toString();
        Self.string_ := TStringMaker.Create().append(Self.listString).append(Self.appendText).toString();
end;
    

procedure TCurrentlyPressedTouchButtonSingletonDebug.clearLog(x: Integer; y: Integer);
begin
        Self.appendText := TStringMaker.Create().append(TGPoint.toStringStatic(x, y, 0)).append(TCommonSeps.getInstance().SPACE).toString();
        Self.string_ := TStringMaker.Create().append(Self.listString).append(Self.appendText).toString();
end;
    

procedure TCurrentlyPressedTouchButtonSingletonDebug.releaseAndNotFired;
begin
        Self.append(Self.RELEASED_AND_NOT_FIRED);
end;
    

procedure TCurrentlyPressedTouchButtonSingletonDebug.releaseAndFired(touchButtonInput_: TTouchButtonInput);
begin
        Self.appendTouchButtonInput(Self.RELEASED_AND_FIRED, touchButtonInput_);
end;
    

procedure TCurrentlyPressedTouchButtonSingletonDebug.releaseAndFired2(touchButtonInput_: TTouchButtonInput);
begin
        Self.appendTouchButtonInput(Self.RELEASED_AND_FIRED_2, touchButtonInput_);
end;
    

procedure TCurrentlyPressedTouchButtonSingletonDebug.releaseAndFiredAssociated(touchButtonInput_: TTouchButtonInput);
begin
        Self.appendTouchButtonInput(Self.ASSOCIATED_RELEASED_AND_FIRED, touchButtonInput_);
end;
    

procedure TCurrentlyPressedTouchButtonSingletonDebug.pressedAndFired(touchButtonInput_: TTouchButtonInput);
begin
        Self.appendTouchButtonInput(Self.PRESSED_AND_FIRED, touchButtonInput_);
end;
    

procedure TCurrentlyPressedTouchButtonSingletonDebug.pressedAndNotFired(touchButtonInput_: TTouchButtonInput);
begin
        Self.appendTouchButtonInput(Self.PRESSED_AND_NOT_FIRED, touchButtonInput_);
end;
    

function TCurrentlyPressedTouchButtonSingletonDebug.removeAt(index: Integer): TTouchButtonInput;
var
  touchButtonInput_: TTouchButtonInput;
begin
        touchButtonInput_ := inherited removeAt(index);
        Self.listString := Self.list.toString();
        Self.string_ := TStringMaker.Create().append(Self.listString).append(Self.appendText).toString();
        Exit(touchButtonInput_);
end;
    

function TCurrentlyPressedTouchButtonSingletonDebug.remove(touchButtonInput_: TTouchButtonInput): Boolean;
var
  isRemoved: Boolean;
begin
        isRemoved := inherited remove(touchButtonInput_);
        Self.listString := Self.list.toString();
        Self.string_ := TStringMaker.Create().append(Self.listString).append(Self.appendText).toString();
        Exit(isRemoved);
end;
    

procedure TCurrentlyPressedTouchButtonSingletonDebug.add(touchButtonInput_: TTouchButtonInput);
begin
        inherited add(touchButtonInput_);
        Self.listString := Self.list.toString();
        Self.string_ := TStringMaker.Create().append(Self.listString).append(Self.appendText).toString();
end;
    

function TCurrentlyPressedTouchButtonSingletonDebug.toString: string;
begin
        Exit(Self.string_);
end;

initialization
  {AB:INITIALIZATION}
  TCurrentlyPressedTouchButtonSingletonDebug.instanceC := TCurrentlyPressedTouchButtonSingletonDebug.Create();
  {AB:END}

end.

