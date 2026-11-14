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
unit InputFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings, Input;

type
  {AB:TYPES}
  TInputFactory = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    KEY_CODE_LABEL: string;
    DEVICE_ID_LABEL: string;
    MAX: Integer;
    inputIntegerArray: TArray<TInput>;
    NO_INPUT: TInput;
    class var instance: TObject;
    procedure InitFields;
        class function getInstance: TInputFactory; static;
        constructor Create;
        procedure add(id: Integer; input_: TInput); virtual;
        function getInstanceById(id: Integer): TInput; virtual;
  end;

implementation
uses
  NullUtil, SmallIntegerSingletonFactory, StringMaker;


{AB:CODE}

procedure TInputFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.KEY_CODE_LABEL := 'KeyCode: ';
  Self.DEVICE_ID_LABEL := 'DeviceId: ';
  Self.MAX := TSmallIntegerSingletonFactory.getInstance().getMin();
  Self.inputIntegerArray := TJava.NewArray<TInput>(Self.MAX);
  Self.NO_INPUT := TInput.Create(0, Self.commonStrings.UNKNOWN);
end;
    

class function TInputFactory.getInstance: TInputFactory;
begin
        if (TInputFactory.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TInputFactory.instance := TInputFactory.Create();
        end;
        Exit(TInputFactory(TJava.ToObject(TInputFactory.instance)));
end;
    

constructor TInputFactory.Create;
var
  size: Integer;
  index: Integer;
begin
    inherited Create;
    InitFields;
        size := System.Length(Self.inputIntegerArray);
        for index := 0 to size - 1 do begin
            Self.inputIntegerArray[index] := Self.NO_INPUT;
        end;
end;
    

procedure TInputFactory.add(id: Integer; input_: TInput);
begin
        Self.inputIntegerArray[id] := input_;
end;
    

function TInputFactory.getInstanceById(id: Integer): TInput;
begin
        if (id) < (0) then begin
            id := -id;
        end;
        if (id) > (System.Length(Self.inputIntegerArray)) then begin
            Self.logUtil.putF(TStringMaker.Create().append('Warning id: ').appendint(id).toString(), TJava.Box(Self), Self.commonStrings.GET_INSTANCE);
            Exit(Self.NO_INPUT);
        end;
        Exit(Self.inputIntegerArray[id]);
end;

initialization
  {AB:INITIALIZATION}
  TInputFactory.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

