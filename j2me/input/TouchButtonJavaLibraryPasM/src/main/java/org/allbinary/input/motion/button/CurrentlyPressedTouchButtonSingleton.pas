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
unit CurrentlyPressedTouchButtonSingleton;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, TouchButtonInput;

type
  {AB:TYPES}
  TCurrentlyPressedTouchButtonSingleton = class(TObject)
  public
    list: TBasicArrayList;
    class var instance: TCurrentlyPressedTouchButtonSingleton;
    procedure InitFields;
        class function getInstance: TCurrentlyPressedTouchButtonSingleton; static;
        constructor Create;
        function size: Integer; virtual;
        function removeAt(index: Integer): TTouchButtonInput; virtual;
        function remove(touchButtonInput_: TTouchButtonInput): Boolean; virtual;
        function get(index: Integer): TTouchButtonInput; virtual;
        function contains(touchButtonInput_: TTouchButtonInput): Boolean; virtual;
        procedure add(touchButtonInput_: TTouchButtonInput); virtual;
  end;

implementation
uses
  BasicArrayListD;


{AB:CODE}

procedure TCurrentlyPressedTouchButtonSingleton.InitFields;
begin
  Self.list := TBasicArrayListD.Create();
end;
    

class function TCurrentlyPressedTouchButtonSingleton.getInstance: TCurrentlyPressedTouchButtonSingleton;
begin
        Exit(TCurrentlyPressedTouchButtonSingleton.instance);
end;
    

constructor TCurrentlyPressedTouchButtonSingleton.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TCurrentlyPressedTouchButtonSingleton.size: Integer;
begin
        Exit(Self.list.size());
end;
    

function TCurrentlyPressedTouchButtonSingleton.removeAt(index: Integer): TTouchButtonInput;
begin
        Exit(TTouchButtonInput(TJava.ToObject(Self.list.removeAt(index))));
end;
    

function TCurrentlyPressedTouchButtonSingleton.remove(touchButtonInput_: TTouchButtonInput): Boolean;
begin
        Exit(Self.list.remove(touchButtonInput_));
end;
    

function TCurrentlyPressedTouchButtonSingleton.get(index: Integer): TTouchButtonInput;
begin
        Exit(TTouchButtonInput(TJava.ToObject(Self.list.objectArray[index])));
end;
    

function TCurrentlyPressedTouchButtonSingleton.contains(touchButtonInput_: TTouchButtonInput): Boolean;
begin
        Exit(Self.list.contains(TJava.Box(touchButtonInput_)));
end;
    

procedure TCurrentlyPressedTouchButtonSingleton.add(touchButtonInput_: TTouchButtonInput);
begin
        Self.list.add(TJava.Box(touchButtonInput_));
end;

initialization
  {AB:INITIALIZATION}
  TCurrentlyPressedTouchButtonSingleton.instance := TCurrentlyPressedTouchButtonSingleton.Create();
  {AB:END}

end.

