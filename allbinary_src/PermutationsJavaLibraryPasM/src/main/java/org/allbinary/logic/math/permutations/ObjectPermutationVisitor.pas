// Generated Code Do Not Modify
// package org.allbinary.logic.math.permutations
unit ObjectPermutationVisitor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StringMaker, Visitor;

type
  {AB:TYPES}
  TObjectPermutationVisitor = class(TVisitor)
  public
    data: TArray<TObject>;
    stringBuilder: TStringMaker;
    procedure InitFields;
        constructor Create(data: TArray<TObject>);
        function visit(anyType: TObject): TObject; override;
        procedure print(data: TArray<TObject>); overload; virtual;
        procedure print(data: TArray<TObject>; stringBuilder: TStringMaker); overload; virtual;
  end;

implementation
uses
  TsUtil, NullUtil, CommonSeps;


{AB:CODE}

procedure TObjectPermutationVisitor.InitFields;
begin
  
  Self.stringBuilder := TStringMaker.Create();
end;
    

constructor TObjectPermutationVisitor.Create(data: TArray<TObject>);
begin
    inherited Create;
    InitFields;
        Self.data := data;
end;
    

function TObjectPermutationVisitor.visit(anyType: TObject): TObject;
begin
        Self.stringBuilder.delete_(0, Self.stringBuilder.length());
        Self.print(Self.data, Self.stringBuilder);
        Exit(TJava.Box(TNullUtil.getInstance().NULL_OBJECT));
end;
    

procedure TObjectPermutationVisitor.print(data: TArray<TObject>);
var
  stringBuilder: TStringMaker;
begin
        stringBuilder := TStringMaker.Create();
        Self.print(data, stringBuilder);
end;
    

procedure TObjectPermutationVisitor.print(data: TArray<TObject>; stringBuilder: TStringMaker);
var
  tsUtil_: TTsUtil;
  size: Integer;
  i: Integer;
begin
        tsUtil_ := TTsUtil.getInstance();
        size := System.Length(data);
        for i := 0 to size - 1 do begin
            stringBuilder.appendint(Integer(Trunc(tsUtil_.hashCode(TJava.Box(data[i])))));
            stringBuilder.append(TCommonSeps.getInstance().SPACE);
        end;
        WriteLn(stringBuilder.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

