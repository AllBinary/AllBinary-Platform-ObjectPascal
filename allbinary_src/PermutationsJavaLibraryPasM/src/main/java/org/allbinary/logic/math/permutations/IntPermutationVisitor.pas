// Generated Code Do Not Modify
// package org.allbinary.logic.math.permutations
unit IntPermutationVisitor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StringMaker, Visitor;

type
  {AB:TYPES}
  TIntPermutationVisitor = class(TVisitor)
  public
    data: TArray<Integer>;
    stringBuilder: TStringMaker;
    procedure InitFields;
        constructor Create(data: TArray<Integer>);
        function visit(anyType: TObject): TObject; override;
        procedure print(data: TArray<Integer>); overload; virtual;
        procedure print(data: TArray<Integer>; stringBuilder: TStringMaker); overload; virtual;
  end;

implementation
uses
  NullUtil, CommonSeps;


{AB:CODE}

procedure TIntPermutationVisitor.InitFields;
begin
  
  Self.stringBuilder := TStringMaker.Create();
end;
    

constructor TIntPermutationVisitor.Create(data: TArray<Integer>);
begin
    inherited Create;
    InitFields;
        Self.data := data;
end;
    

function TIntPermutationVisitor.visit(anyType: TObject): TObject;
begin
        Self.stringBuilder.delete_(0, Self.stringBuilder.length());
        Self.print(Self.data, Self.stringBuilder);
        Exit(TJava.Box(TNullUtil.getInstance().NULL_OBJECT));
end;
    

procedure TIntPermutationVisitor.print(data: TArray<Integer>);
var
  stringBuilder: TStringMaker;
begin
        stringBuilder := TStringMaker.Create();
        Self.print(data, stringBuilder);
end;
    

procedure TIntPermutationVisitor.print(data: TArray<Integer>; stringBuilder: TStringMaker);
var
  commonSeps_: TCommonSeps;
  size: Integer;
  i: Integer;
begin
        commonSeps_ := TCommonSeps.getInstance();
        size := System.Length(data);
        for i := 0 to size - 1 do begin
            stringBuilder.appendint(data[i]);
            stringBuilder.append(commonSeps_.SPACE);
        end;
        WriteLn(stringBuilder.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

