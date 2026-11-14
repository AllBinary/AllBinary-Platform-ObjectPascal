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
unit CancelTouchButtonInputFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TouchButtonInput;

type
  {AB:TYPES}
  TCancelTouchButtonInputFactory = class(TObject)
  public
    cancelInputArray: TArray<TTouchButtonInput>;
    class var instance: TObject;
    procedure InitFields;
        class function getInstance: TCancelTouchButtonInputFactory; static;
        constructor Create;
        function getCancel(touchButtonInput_: TTouchButtonInput): TTouchButtonInput; virtual;
  end;

implementation
uses
  BasicTouchInputFactory, InputFactory, NullUtil;


{AB:CODE}

procedure TCancelTouchButtonInputFactory.InitFields;
begin
  Self.cancelInputArray := TJava.NewArray<TTouchButtonInput>(TInputFactory.getInstance().MAX);
end;
    

class function TCancelTouchButtonInputFactory.getInstance: TCancelTouchButtonInputFactory;
begin
        if (TCancelTouchButtonInputFactory.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TCancelTouchButtonInputFactory.instance := TCancelTouchButtonInputFactory.Create();
        end;
        Exit(TCancelTouchButtonInputFactory(TJava.ToObject(TCancelTouchButtonInputFactory.instance)));
end;
    

constructor TCancelTouchButtonInputFactory.Create;
var
  basicTouchInputFactory_: TBasicTouchInputFactory;
  index: Integer;
begin
    inherited Create;
    InitFields;
        basicTouchInputFactory_ := TBasicTouchInputFactory.getInstance();
        for index := (System.Length(Self.cancelInputArray)) - (1) downto 0 do begin
            Self.cancelInputArray[index] := basicTouchInputFactory_.NONE;
        end;
        Self.cancelInputArray[basicTouchInputFactory_.UP.getSourceId()] := basicTouchInputFactory_.DOWN;
        Self.cancelInputArray[basicTouchInputFactory_.DOWN.getSourceId()] := basicTouchInputFactory_.UP;
        Self.cancelInputArray[basicTouchInputFactory_.LEFT.getSourceId()] := basicTouchInputFactory_.RIGHT;
        Self.cancelInputArray[basicTouchInputFactory_.RIGHT.getSourceId()] := basicTouchInputFactory_.LEFT;
end;
    

function TCancelTouchButtonInputFactory.getCancel(touchButtonInput_: TTouchButtonInput): TTouchButtonInput;
begin
        Exit(Self.cancelInputArray[touchButtonInput_.getSourceId()]);
end;

initialization
  {AB:INITIALIZATION}
  TCancelTouchButtonInputFactory.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

