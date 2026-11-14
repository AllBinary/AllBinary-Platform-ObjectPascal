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
// package org.allbinary.logic.math.permutations
unit OrderedIntArrayPermutationUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Visitor;

type
  {AB:TYPES}
  TOrderedIntArrayPermutationUtil = class(TObject)
  public
    TOTAL_ITERATIONS_TABLE: string;
    FINISHED: string;
    class var instance: TOrderedIntArrayPermutationUtil;
    procedure InitFields;
        class function getInstance: TOrderedIntArrayPermutationUtil; static;
        constructor Create;
        procedure getNext(data: TArray<Integer>); virtual;
        procedure swap(data: TArray<Integer>; a: Integer; b: Integer); virtual;
        function factorial(dataLength: Integer): Int64; virtual;
        procedure generate(data: TArray<Integer>; visitor_: TVisitor); virtual;
        class procedure main(args: TArray<string>); static;
  end;

implementation
uses
  IntPermutationVisitor, StringMaker;


{AB:CODE}

procedure TOrderedIntArrayPermutationUtil.InitFields;
begin
  Self.TOTAL_ITERATIONS_TABLE := 'Total Iterations: ';
  Self.FINISHED := ''#10'FINISHED';
end;
    

class function TOrderedIntArrayPermutationUtil.getInstance: TOrderedIntArrayPermutationUtil;
begin
        Exit(TOrderedIntArrayPermutationUtil.instance);
end;
    

constructor TOrderedIntArrayPermutationUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TOrderedIntArrayPermutationUtil.getNext(data: TArray<Integer>);
var
  length: Integer;
  i: Integer;
  j: Integer;
begin
        length := System.Length(data);
        i := (length) - (1);
        while (data[(i) - (1)]) >= (data[i]) do begin
            i := (i) - (1);
        end;
        j := length;
        while (data[(j) - (1)]) <= (data[(i) - (1)]) do begin
            j := (j) - (1);
        end;
        Self.swap(data, (i) - (1), (j) - (1));
        Inc(i);
        j := length;
        while (i) < (j) do begin
            Self.swap(data, (i) - (1), (j) - (1));
            Inc(i);
            Dec(j);
        end;
end;
    

procedure TOrderedIntArrayPermutationUtil.swap(data: TArray<Integer>; a: Integer; b: Integer);
var
  temp: Integer;
begin
        temp := data[a];
        data[a] := data[b];
        data[b] := temp;
end;
    

function TOrderedIntArrayPermutationUtil.factorial(dataLength: Integer): Int64;
var
  temp: Int64;
  i: Integer;
begin
        temp := 1;
        if (dataLength) > (1) then begin
            for i := 1 to dataLength do begin
                temp := (temp) * (Int64(i));
            end;
        end;
        Exit(temp);
end;
    

procedure TOrderedIntArrayPermutationUtil.generate(data: TArray<Integer>; visitor_: TVisitor);
var
  iterations: Int64;
  count: Int64;
begin
        iterations := Self.factorial(System.Length(data));
        Write(Self.TOTAL_ITERATIONS_TABLE);
        WriteLn(iterations);
        count := 0;
        while (count) < ((iterations) - (1)) do begin
            Self.getNext(data);
            visitor_.visit(Self);
            Inc(count);
        end;
        WriteLn(Self.FINISHED);
end;
    

class procedure TOrderedIntArrayPermutationUtil.main(args: TArray<string>);
var
  TOTAL: Integer;
  data: TArray<Integer>;
  i: Integer;
  permutationVisitor: TIntPermutationVisitor;
  ORIGINAL_DATA_LABEL: string;
begin
        TOTAL := 3;
        data := TJava.NewArray<Integer>(TOTAL);
        for i := 0 to TOTAL - 1 do begin
            data[i] := i;
        end;
        permutationVisitor := TIntPermutationVisitor.Create(data);
        ORIGINAL_DATA_LABEL := 'Original Data: ';
        Write(ORIGINAL_DATA_LABEL);
        permutationVisitor.print(data, TStringMaker.Create());
        TOrderedIntArrayPermutationUtil.getInstance().generate(data, permutationVisitor);
end;

initialization
  {AB:INITIALIZATION}
  TOrderedIntArrayPermutationUtil.instance := TOrderedIntArrayPermutationUtil.Create();
  {AB:END}

end.

