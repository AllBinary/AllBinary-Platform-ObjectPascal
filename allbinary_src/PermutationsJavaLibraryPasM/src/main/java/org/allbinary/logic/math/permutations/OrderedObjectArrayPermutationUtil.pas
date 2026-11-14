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
unit OrderedObjectArrayPermutationUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Visitor;

type
  {AB:TYPES}
  TOrderedObjectArrayPermutationUtil = class(TObject)
  public
    TOTAL_ITERATIONS_TABLE: string;
    FINISHED: string;
    class var instance: TOrderedObjectArrayPermutationUtil;
    procedure InitFields;
        class function getInstance: TOrderedObjectArrayPermutationUtil; static;
        constructor Create;
        procedure getNext(data: TArray<TObject>); virtual;
        procedure swap(data: TArray<TObject>; a: Integer; b: Integer); virtual;
        function factorial(dataLength: Integer): Int64; virtual;
        procedure generate(data: TArray<TObject>; visitor_: TVisitor); virtual;
        class procedure main(args: TArray<string>); static;
  end;

implementation
uses
  ComparableObject, ObjectPermutationVisitor, TsUtil;


{AB:CODE}

procedure TOrderedObjectArrayPermutationUtil.InitFields;
begin
  Self.TOTAL_ITERATIONS_TABLE := 'Total Iterations: ';
  Self.FINISHED := ''#10'FINISHED';
end;
    

class function TOrderedObjectArrayPermutationUtil.getInstance: TOrderedObjectArrayPermutationUtil;
begin
        Exit(TOrderedObjectArrayPermutationUtil.instance);
end;
    

constructor TOrderedObjectArrayPermutationUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TOrderedObjectArrayPermutationUtil.getNext(data: TArray<TObject>);
var
  length: Integer;
  i: Integer;
  tsUtil_: TTsUtil;
  j: Integer;
begin
        length := System.Length(data);
        i := (length) - (1);
        tsUtil_ := TTsUtil.getInstance();
        while (tsUtil_.hashCode(TJava.Box(data[(i) - (1)]))) >= (tsUtil_.hashCode(TJava.Box(data[i]))) do begin
            i := (i) - (1);
        end;
        j := length;
        while (tsUtil_.hashCode(TJava.Box(data[(j) - (1)]))) <= (tsUtil_.hashCode(TJava.Box(data[(i) - (1)]))) do begin
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
    

procedure TOrderedObjectArrayPermutationUtil.swap(data: TArray<TObject>; a: Integer; b: Integer);
var
  temp: TObject;
begin
        temp := TJava.Box(data[a]);
        data[a] := data[b];
        data[b] := temp;
end;
    

function TOrderedObjectArrayPermutationUtil.factorial(dataLength: Integer): Int64;
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
    

procedure TOrderedObjectArrayPermutationUtil.generate(data: TArray<TObject>; visitor_: TVisitor);
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
    

class procedure TOrderedObjectArrayPermutationUtil.main(args: TArray<string>);
var
  TOTAL: Integer;
  data: TArray<TObject>;
  i: Integer;
  permutationVisitor: TObjectPermutationVisitor;
  ORIGINAL_DATA_LABEL: string;
begin
        TOTAL := 7;
        data := TJava.NewArray<TObject>(TOTAL);
        for i := 0 to TOTAL - 1 do begin
            data[i] := TComparableObject.Create();
        end;
        TArrays.sort(data);
        permutationVisitor := TObjectPermutationVisitor.Create(data);
        ORIGINAL_DATA_LABEL := 'Original Data: ';
        Write(ORIGINAL_DATA_LABEL);
        permutationVisitor.visit(TJava.Box(data));
        TOrderedObjectArrayPermutationUtil.getInstance().generate(data, permutationVisitor);
end;

initialization
  {AB:INITIALIZATION}
  TOrderedObjectArrayPermutationUtil.instance := TOrderedObjectArrayPermutationUtil.Create();
  {AB:END}

end.

