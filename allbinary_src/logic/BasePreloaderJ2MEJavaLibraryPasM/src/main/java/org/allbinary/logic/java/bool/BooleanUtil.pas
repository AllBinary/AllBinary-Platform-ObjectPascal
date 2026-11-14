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
// package org.allbinary.logic.java.bool
unit BooleanUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TsUtil;

type
  {AB:TYPES}
  TBooleanUtil = class(TObject)
  public
    tsUtil: TTsUtil;
    class var instance: TBooleanUtil;
    procedure InitFields;
        class function getInstance: TBooleanUtil; static;
        constructor Create;
        function getFromString(booleanString: string): Boolean; virtual;
        function isStringBoolean(booleanString: string): Boolean; virtual;
        function toStringFromBooleanArray(booleanArray: TArray<Boolean>): string; virtual;
  end;

implementation
uses
  BooleanFactory, StringMaker;


{AB:CODE}

procedure TBooleanUtil.InitFields;
begin
  Self.tsUtil := TTsUtil.getInstance();
end;
    

class function TBooleanUtil.getInstance: TBooleanUtil;
begin
        Exit(TBooleanUtil.instance);
end;
    

constructor TBooleanUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TBooleanUtil.getFromString(booleanString: string): Boolean;
var
  stringValidationUtil_: TObject;
  booleanFactory_: TBooleanFactory;
  booleanStringLowerCase: string;
begin
        stringValidationUtil_ := nil;
        booleanFactory_ := TBooleanFactory.getInstance();
        if (booleanString = '') then begin
            Exit(False);
        end;
        booleanStringLowerCase := LowerCase(booleanString);
        if (Self.tsUtil.compareTo(booleanStringLowerCase, booleanFactory_.TRUE_STRING)) = (0) then begin
            Exit(True);
        end else if (Self.tsUtil.compareTo(booleanStringLowerCase, booleanFactory_.FALSE_STRING)) = (0) then begin
            Exit(False);
        end else begin
            raise SysUtils.Exception.Create('Invalid booleanString - Must be true or false');
        end;
end;
    

// throws Exception
function TBooleanUtil.isStringBoolean(booleanString: string): Boolean;
var
  booleanFactory_: TBooleanFactory;
  booleanStringLowerCase: string;
begin
        booleanFactory_ := TBooleanFactory.getInstance();
        booleanStringLowerCase := LowerCase(booleanString);
        if ((CompareStr(booleanStringLowerCase, booleanFactory_.TRUE_STRING)) = (0)) or ((CompareStr(booleanStringLowerCase, booleanFactory_.FALSE_STRING)) = (0)) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TBooleanUtil.toStringFromBooleanArray(booleanArray: TArray<Boolean>): string;
var
  stringMaker_: TStringMaker;
  size: Integer;
  index: Integer;
begin
        stringMaker_ := TStringMaker.Create();
        size := System.Length(booleanArray);
        for index := 0 to size - 1 do begin
            stringMaker_.appendboolean(booleanArray[index]);
        end;
        Exit(stringMaker_.toString());
end;

initialization
  {AB:INITIALIZATION}
  TBooleanUtil.instance := TBooleanUtil.Create();
  {AB:END}

end.

