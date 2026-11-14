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
// package org.allbinary.graphics
unit CellPosition;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, V;

type
  {AB:TYPES}
  TCellPosition = class(TV)
  public
    id: Integer;
    column: Integer;
    row: Integer;
    procedure InitFields;
        constructor Create(column: Integer; row: Integer; columns: Integer; rows: Integer);
        function getColumn: Integer; virtual;
        function getRow: Integer; virtual;
        function toString: string; override;
        class function toStringCellPosition(basicGeographicMapCellPosition: TCellPosition): string; static;
        class function toStringColRow(i_column: Integer; i_row: Integer): string; static;
        function getId: Integer; override;
  end;

implementation
uses
  StringMaker, CommonSeps;


{AB:CODE}

procedure TCellPosition.InitFields;
begin
  
  
  
end;
    

constructor TCellPosition.Create(column: Integer; row: Integer; columns: Integer; rows: Integer);
begin
    inherited Create;
    InitFields;
        Self.column := column;
        Self.row := row;
        Self.id := (((row) * (columns))) + (column);
end;
    

function TCellPosition.getColumn: Integer;
begin
        Exit(Self.column);
end;
    

function TCellPosition.getRow: Integer;
begin
        Exit(Self.row);
end;
    

function TCellPosition.toString: string;
begin
        Exit(TCellPosition.toStringColRow(Self.getColumn(), Self.getRow()));
end;
    

class function TCellPosition.toStringCellPosition(basicGeographicMapCellPosition: TCellPosition): string;
begin
        Exit(TCellPosition.toStringColRow(basicGeographicMapCellPosition.getColumn(), basicGeographicMapCellPosition.getRow()));
end;
    

class function TCellPosition.toStringColRow(i_column: Integer; i_row: Integer): string;
var
  stringBuffer: TStringMaker;
  commonSeps_: TCommonSeps;
begin
        stringBuffer := TStringMaker.Create();
        commonSeps_ := TCommonSeps.getInstance();
        stringBuffer.append(commonSeps_.PARENTHESIS_OPEN);
        stringBuffer.appendint(i_column);
        stringBuffer.append(commonSeps_.COMMA);
        stringBuffer.appendint(i_row);
        stringBuffer.append(commonSeps_.PARENTHESIS_CLOSE);
        Exit(stringBuffer.toString());
end;
    

function TCellPosition.getId: Integer;
begin
        Exit(Self.id);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

