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
unit TouchButtonLocationHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TTouchButtonLocationHelper = class(TObject)
  public
    totalColumns: Integer;
    totalRows: Integer;
    columnsRemainder: Integer;
    rowsRemainder: Integer;
    columnsRemainderHalf: Integer;
    rowsRemainderHalf: Integer;
    procedure InitFields;
        constructor Create;
        function getTotalColumns: Integer; virtual;
        function getTotalRows: Integer; virtual;
        function getColumnsRemainder: Integer; virtual;
        function getRowsRemainder: Integer; virtual;
        function getColumnsRemainderHalf: Integer; virtual;
        function getRowsRemainderHalf: Integer; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  CommonButtons, DisplayInfoSingleton, StringMaker;


{AB:CODE}

procedure TTouchButtonLocationHelper.InitFields;
begin
  
  
  
  
  
  
end;
    

constructor TTouchButtonLocationHelper.Create;
var
  buttonSize: Integer;
  displayInfo: TDisplayInfoSingleton;
begin
    inherited Create;
    InitFields;
        buttonSize := TCommonButtons.getInstance().STANDARD_BUTTON_SIZE;
        displayInfo := TDisplayInfoSingleton.getInstance();
        Self.totalColumns := Round(((1.0 * (displayInfo.getLastWidth()))) / (buttonSize));
        Self.totalRows := Round(((1.0 * (displayInfo.getLastHeight()))) / (buttonSize));
        Self.columnsRemainder := (displayInfo.getLastWidth()) mod (buttonSize);
        Self.columnsRemainderHalf := (TJava.SignedRightShift(Self.columnsRemainder, 1));
        Self.rowsRemainder := (displayInfo.getLastHeight()) mod (buttonSize);
        Self.rowsRemainderHalf := (TJava.SignedRightShift(Self.rowsRemainder, 1));
end;
    

function TTouchButtonLocationHelper.getTotalColumns: Integer;
begin
        Exit(Self.totalColumns);
end;
    

function TTouchButtonLocationHelper.getTotalRows: Integer;
begin
        Exit(Self.totalRows);
end;
    

function TTouchButtonLocationHelper.getColumnsRemainder: Integer;
begin
        Exit(Self.columnsRemainder);
end;
    

function TTouchButtonLocationHelper.getRowsRemainder: Integer;
begin
        Exit(Self.rowsRemainder);
end;
    

function TTouchButtonLocationHelper.getColumnsRemainderHalf: Integer;
begin
        Exit(Self.columnsRemainderHalf);
end;
    

function TTouchButtonLocationHelper.getRowsRemainderHalf: Integer;
begin
        Exit(Self.rowsRemainderHalf);
end;
    

function TTouchButtonLocationHelper.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('totalColumns: ');
        stringBuffer.appendint(Self.totalColumns);
        stringBuffer.append(' totalRows: ');
        stringBuffer.appendint(Self.totalRows);
        stringBuffer.append(' columnsRemainder: ');
        stringBuffer.appendint(Self.columnsRemainder);
        stringBuffer.append(' rowsRemainder: ');
        stringBuffer.appendint(Self.rowsRemainder);
        stringBuffer.append(' columnsRemainderHalf: ');
        stringBuffer.appendint(Self.columnsRemainderHalf);
        stringBuffer.append(' rowsRemainderHalf: ');
        stringBuffer.appendint(Self.rowsRemainderHalf);
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

