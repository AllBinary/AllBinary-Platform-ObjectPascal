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
// package org.allbinary.game.rand
unit MyRandomFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MathUtil;

type
  {AB:TYPES}
  // Do not use in client code for money related things.
  TMyRandomFactory = class(TObject)
  public
    mathUtil: TMathUtil;
    rand: TJavaRandom;
    class var instance: TMyRandomFactory;
    procedure InitFields;
        class function getInstance: TMyRandomFactory; static;
        constructor Create;
        procedure setSeed(seed: Int64); virtual;
        function getNextInt(range: Integer): Integer; virtual;
        function getAbsoluteNextInt(range: Integer): Integer; virtual;
        function getAbsoluteNextIntAllowZero(range: Integer): Integer; virtual;
        procedure shuffle(intArray: TArray<Integer>); virtual;
        procedure shuffleTotal(intArray: TArray<Integer>; shuffleTotal: Integer); virtual;
        procedure shuffle2(intArray: TArray<Integer>; intArray2: TArray<Integer>); virtual;
        procedure shuffle2Total(intArray: TArray<Integer>; intArray2: TArray<Integer>; shuffleTotal: Integer); virtual;
        class procedure main(args: TArray<string>); static;
  end;

implementation
uses
  JsType, JsMethod, JsConstructor, StringMaker, CommonSeps;


{AB:CODE}

procedure TMyRandomFactory.InitFields;
begin
  Self.mathUtil := TMathUtil.getInstance();
  
end;
    

class function TMyRandomFactory.getInstance: TMyRandomFactory;
begin
        Exit(TMyRandomFactory.instance);
end;
    

constructor TMyRandomFactory.Create;
begin
    inherited Create;
    InitFields;
        Self.rand := TJavaRandom.Create(DateTimeToUnix(Now) * 1000);
end;
    

procedure TMyRandomFactory.setSeed(seed: Int64);
begin
        Self.rand := TJavaRandom.Create(seed);
end;
    

function TMyRandomFactory.getNextInt(range: Integer): Integer;
var
  div_: Integer;
begin
        div_ := (((High(Integer)) div (range))) + (1);
        Exit(Integer(Trunc((TJava.Divide(Self.rand.nextInt(), div_)))));
end;
    

function TMyRandomFactory.getAbsoluteNextInt(range: Integer): Integer;
begin
        Exit(Self.mathUtil.abs(Self.getNextInt(range)));
end;
    

function TMyRandomFactory.getAbsoluteNextIntAllowZero(range: Integer): Integer;
begin
        if (range) = (0) then begin
            Exit(0);
        end else begin
            Exit(Self.mathUtil.abs(Self.getNextInt(range)));
        end;
end;
    

procedure TMyRandomFactory.shuffle(intArray: TArray<Integer>);
begin
        Self.shuffleTotal(intArray, (System.Length(intArray)) * (7));
end;
    

procedure TMyRandomFactory.shuffleTotal(intArray: TArray<Integer>; shuffleTotal: Integer);
var
  size: Integer;
  randomIndex: Integer;
  randomIndex2: Integer;
  value: Integer;
  index: Integer;
begin
        size := System.Length(intArray);
        
        
        
        for index := 0 to shuffleTotal - 1 do begin
            randomIndex := Self.getAbsoluteNextIntAllowZero(size);
            randomIndex2 := Self.getAbsoluteNextIntAllowZero(size);
            value := intArray[randomIndex];
            intArray[randomIndex] := intArray[randomIndex2];
            intArray[randomIndex2] := value;
        end;
end;
    

procedure TMyRandomFactory.shuffle2(intArray: TArray<Integer>; intArray2: TArray<Integer>);
begin
        Self.shuffle2Total(intArray, intArray2, (System.Length(intArray)) * (7));
end;
    

procedure TMyRandomFactory.shuffle2Total(intArray: TArray<Integer>; intArray2: TArray<Integer>; shuffleTotal: Integer);
var
  size: Integer;
  randomIndex: Integer;
  randomIndex2: Integer;
  value: Integer;
  value2: Integer;
  index: Integer;
begin
        size := System.Length(intArray);
        
        
        
        
        for index := 0 to shuffleTotal - 1 do begin
            randomIndex := Self.getAbsoluteNextIntAllowZero(size);
            randomIndex2 := Self.getAbsoluteNextIntAllowZero(size);
            value := intArray[randomIndex];
            value2 := intArray2[randomIndex];
            intArray[randomIndex] := intArray[randomIndex2];
            intArray[randomIndex2] := value;
            intArray2[randomIndex] := intArray2[randomIndex2];
            intArray2[randomIndex2] := value2;
        end;
end;
    

class procedure TMyRandomFactory.main(args: TArray<string>);
var
  randomFactory: TMyRandomFactory;
  stringBuilder: TStringMaker;
  commonSeps_: TCommonSeps;
  size2: Integer;
  index: Integer;
  intArray: TArray<Integer>;
  intArray2: TArray<Integer>;
  size: Integer;
  found: Boolean;
  index2: Integer;
begin
        randomFactory := TMyRandomFactory.getInstance();
        stringBuilder := TStringMaker.Create();
        commonSeps_ := TCommonSeps.getInstance();
        size2 := 100;
        for index := 0 to size2 - 1 do begin
            stringBuilder.appendint(randomFactory.getAbsoluteNextInt(3)).append(commonSeps_.COMMA);
        end;
        WriteLn(stringBuilder.toString());
        stringBuilder.delete_(0, stringBuilder.length());
        intArray := TJava.NewArray<Integer>(52);
        intArray2 := TJava.NewArray<Integer>(52);
        size := System.Length(intArray);
        for index := 0 to size - 1 do begin
            intArray[index] := index;
            intArray2[index] := index;
        end;
        randomFactory.shuffle2(intArray, intArray2);
        for index := 0 to size - 1 do begin
            stringBuilder.appendint(intArray[index]).append(commonSeps_.COMMA);
        end;
        WriteLn(stringBuilder.toString());
        stringBuilder.delete_(0, stringBuilder.length());
        for index := 0 to size - 1 do begin
            stringBuilder.appendint(intArray2[index]).append(commonSeps_.COMMA);
        end;
        WriteLn(stringBuilder.toString());
        
        for index := 0 to size - 1 do begin
            found := False;
            for index2 := 0 to size - 1 do begin
                if (intArray[index2]) = (index) then begin
                    found := True;
                end;
            end;
            if not (found) then begin
                raise SysUtils.Exception.Create('');
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TMyRandomFactory.instance := TMyRandomFactory.Create();
  {AB:END}

end.

