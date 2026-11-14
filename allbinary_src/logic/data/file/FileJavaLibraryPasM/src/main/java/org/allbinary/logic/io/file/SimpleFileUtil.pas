{
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.logic.io.file
unit SimpleFileUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, NullUtil, LogUtil, StreamUtil, CommonStrings, BasicArrayList;

type
  {AB:TYPES}
  TSimpleFileUtil = class(TObject)
  public
    logUtil: TLogUtil;
    NULL_WRITER: TWriter;
    NULL_READER: TReader;
    commonStrings: TCommonStrings;
    nullUtil: TNullUtil;
    streamUtil: TStreamUtil;
    class var instance: TSimpleFileUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TSimpleFileUtil; static;
        class function nullOutputStream: TOutputStream; static;
        class function nullWriter: TWriter; static;
        class function nullReader: TReader; static;
        function loadFileAsList(inputStream_: TInputStream; max: Integer; byteArray1: TArray<ShortInt>): TBasicArrayList; virtual;
        function loadFileAsListReturnLine(inputStream_: TInputStream; max: Integer; byteArray1: TArray<ShortInt>; includeReturnLine: Integer): TBasicArrayList; virtual;
        function createStringFromArrayOfStrings(stringArray: TArray<string>): string; virtual;
  end;

implementation
uses
  NullOutputStream, NullReader, NullWriter, StringMaker, BasicArrayListD;


{AB:CODE}

procedure TSimpleFileUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.NULL_WRITER := TSimpleFileUtil.nullWriter();
  Self.NULL_READER := TSimpleFileUtil.nullReader();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.nullUtil := TNullUtil.getInstance();
  Self.streamUtil := TStreamUtil.getInstance();
end;

constructor TSimpleFileUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TSimpleFileUtil.getInstance: TSimpleFileUtil;
begin
        Exit(TSimpleFileUtil.instance);
end;
    

class function TSimpleFileUtil.nullOutputStream: TOutputStream;
begin
        Exit(TNullOutputStream.NULL_OUTPUT_STREAM);
end;
    

class function TSimpleFileUtil.nullWriter: TWriter;
begin
        Exit(TNullWriter.NULL_WRITER);
end;
    

class function TSimpleFileUtil.nullReader: TReader;
begin
        Exit(TNullReader.NULL_READER);
end;
    

function TSimpleFileUtil.loadFileAsList(inputStream_: TInputStream; max: Integer; byteArray1: TArray<ShortInt>): TBasicArrayList;
begin
        Exit(Self.loadFileAsListReturnLine(inputStream_, max, byteArray1, 0));
end;
    

function TSimpleFileUtil.loadFileAsListReturnLine(inputStream_: TInputStream; max: Integer; byteArray1: TArray<ShortInt>; includeReturnLine: Integer): TBasicArrayList;
var
  stringList: TBasicArrayList;
  byteArray: TArray<ShortInt>;
  outputStream2: TByteArrayOutputStream;
  size: Integer;
  index: Integer;
  startIndex: Integer;
  returnLine: Integer;
  s: string;
begin
        stringList := TBasicArrayListD.Create();
        if (inputStream_) = (nil) then begin
            Exit(stringList);
        end;
        byteArray := Self.nullUtil.NULL_BYTE_ARRAY;
        try
            outputStream2 := TByteArrayOutputStream.Create;
            byteArray := Self.streamUtil.getByteArray(inputStream_, outputStream2, byteArray1);
            Self.streamUtil.close(inputStream_);
        except
            on e: SysUtils.Exception do begin
            Self.streamUtil.close(inputStream_);
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.ADD, TJava.Box(e));
            end;
        end;
        if (byteArray) = (nil) then begin
            Exit(stringList);
        end;
        size := System.Length(byteArray);
        index := 0;
        
        returnLine := 0;
        while (index) < (size) do begin
            startIndex := index;
            while ((index) < ((size) - (1))) and ((byteArray[index]) <> (Ord(#10))) do begin
                Inc(index);
            end;
            if (includeReturnLine) = (0) then begin
                if ((index) > (0)) and ((byteArray[(index) - (1)]) = (Ord(#13))) then begin
                    returnLine := 1;
                end else begin
                    returnLine := 0;
                end;
            end;
            s := TJava.NewString(byteArray, startIndex, ((((index) + (includeReturnLine)) - (returnLine)) - (startIndex)));
            stringList.add(TJava.Box(s));
            Inc(index);
        end;
        Exit(stringList);
end;
    

function TSimpleFileUtil.createStringFromArrayOfStrings(stringArray: TArray<string>): string;
var
  stringMaker_: TStringMaker;
  size: Integer;
  index: Integer;
begin
        stringMaker_ := TStringMaker.Create();
        size := System.Length(stringArray);
        for index := 0 to size - 1 do begin
            stringMaker_.append(stringArray[index]);
        end;
        Exit(stringMaker_.toString());
end;

initialization
  {AB:INITIALIZATION}
  TSimpleFileUtil.instance := TSimpleFileUtil.Create();
  {AB:END}

end.

