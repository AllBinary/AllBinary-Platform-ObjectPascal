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
// package org.allbinary.logic.math
unit PrimitiveLongUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, PrimitiveLongSingleton;

type
  {AB:TYPES}
  TPrimitiveLongUtil = class(TObject)
  public
    logUtil: TLogUtil;
    powerOfTen: Integer;
    maxValue: Integer;
    maxDigits: Integer;
    charArray: TArray<WideChar>;
    currentTotalDigits: Integer;
    primitiveLongSingleton: TPrimitiveLongSingleton;
    procedure InitFields;
        class function createPowerOfTen(powerOfTen: Integer): TPrimitiveLongUtil; static;
        constructor Create(powerOfTen: Integer; unused: TObject);
        function getCharArray(value: Integer): TArray<WideChar>; virtual;
        procedure setCurrentTotalDigits(currentTotalDigits: Integer);
        function getCurrentTotalDigits: Integer; virtual;
        function getMaxDigits: Integer; virtual;
  end;

implementation
uses
  MathUtil, NullUtil, CommonStrings;


{AB:CODE}

procedure TPrimitiveLongUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  
  
  Self.primitiveLongSingleton := TPrimitiveLongSingleton.getInstance();
end;
    

class function TPrimitiveLongUtil.createPowerOfTen(powerOfTen: Integer): TPrimitiveLongUtil;
var
  primitiveLongUtil_: TPrimitiveLongUtil;
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
begin
        primitiveLongUtil_ := TPrimitiveLongUtil.Create(powerOfTen, TJava.Box(TNullUtil.getInstance().NULL_OBJECT));
        if ((powerOfTen) mod (10)) <> (0) then begin
            logUtil_ := TLogUtil.getInstance();
            commonStrings_ := TCommonStrings.getInstance();
            logUtil_.put(commonStrings_.EXCEPTION, primitiveLongUtil_, commonStrings_.CONSTRUCTOR_, SysUtils.Exception.Create('Max must be power of 10'));
        end;
        Exit(primitiveLongUtil_);
end;
    

constructor TPrimitiveLongUtil.Create(powerOfTen: Integer; unused: TObject);
begin
    inherited Create;
    InitFields;
        Self.maxDigits := TMathUtil.getInstance().getTotalDigits(powerOfTen);
        Self.powerOfTen := powerOfTen;
        Self.maxValue := (((powerOfTen) * (10))) - (1);
        Self.charArray := TJava.NewArray<WideChar>(Self.maxDigits);
end;
    

function TPrimitiveLongUtil.getCharArray(value: Integer): TArray<WideChar>;
var
  index: Integer;
  div_: Integer;
  lastValue: Integer;
  digit: Integer;
begin
        if (value) < (10) then begin
            Self.setCurrentTotalDigits(1);
            Exit(Self.primitiveLongSingleton.NUMBER_CHAR_ARRAYS[value]);
        end;
        if (value) > (Self.maxValue) then begin
            Self.setCurrentTotalDigits(3);
            Exit(Self.primitiveLongSingleton.UNK);
        end;
        index := 0;
        div_ := Self.powerOfTen;
        lastValue := 0;
        while (div_) >= (1) do begin
            digit := (((value) - (lastValue))) div (div_);
            if ((digit) >= (0)) and ((digit) < (10)) then begin
                if ((digit) = (0)) and ((index) = (0)) then begin
                end else begin
                    Self.charArray[TJava.PostInc(index)] := Self.primitiveLongSingleton.NUMBER_CHAR_ARRAY[digit];
                end;
                lastValue := (lastValue) + ((digit) * (div_));
            end;
            div_ := (div_) div (10);
        end;
        Self.setCurrentTotalDigits(index);
        Exit(Self.charArray);
end;
    

procedure TPrimitiveLongUtil.setCurrentTotalDigits(currentTotalDigits: Integer);
begin
        Self.currentTotalDigits := currentTotalDigits;
end;
    

function TPrimitiveLongUtil.getCurrentTotalDigits: Integer;
begin
        Exit(Self.currentTotalDigits);
end;
    

function TPrimitiveLongUtil.getMaxDigits: Integer;
begin
        Exit(Self.maxDigits);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

