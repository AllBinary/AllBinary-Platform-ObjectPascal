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
unit CellPositionFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CellPosition;

type
  {AB:TYPES}
  TCellPositionFactory = class(TObject)
  public
    logUtil: TLogUtil;
    NONE: TCellPosition;
    cellPositionArray: TArray<TArray<TCellPosition>>;
    columns: Integer;
    rows: Integer;
    class var SINGLETON: TCellPositionFactory;
    procedure InitFields;
        class function getInstance: TCellPositionFactory; static;
        constructor Create;
        procedure init(columns: Integer; rows: Integer); virtual;
        function getInstanceColRow(i_column: Integer; i_row: Integer): TCellPosition; virtual;
        function createInstance(i_column: Integer; i_row: Integer): TCellPosition; virtual;
        function getColumns: Integer; virtual;
        function getRows: Integer; virtual;
  end;

implementation
uses
  StringMaker, CommonStrings;


{AB:CODE}

procedure TCellPositionFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.NONE := TCellPosition.Create(-1, -1, -1, -1);
  Self.cellPositionArray := TJava.NewArray2<TCellPosition>(0, 0);
  
  
end;
    

class function TCellPositionFactory.getInstance: TCellPositionFactory;
begin
        Exit(TCellPositionFactory.SINGLETON);
end;
    

constructor TCellPositionFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TCellPositionFactory.init(columns: Integer; rows: Integer);
var
  commonStrings_: TCommonStrings;
  stringBuffer: TStringMaker;
  row: Integer;
  column: Integer;
begin
        commonStrings_ := TCommonStrings.getInstance();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('Init: columns: ');
        stringBuffer.appendint(columns);
        stringBuffer.append(' rows: ');
        stringBuffer.appendint(rows);
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), commonStrings_.INIT);
        Self.cellPositionArray := TJava.NewArray2<TCellPosition>(columns, rows);
        Self.columns := columns;
        Self.rows := rows;
        for column := 0 to columns - 1 do begin
            for row := 0 to rows - 1 do begin
                Self.createInstance(column, row);
            end;
        end;
end;
    

function TCellPositionFactory.getInstanceColRow(i_column: Integer; i_row: Integer): TCellPosition;
var
  commonStrings_: TCommonStrings;
begin
        try
            Exit(Self.cellPositionArray[i_column][i_row]);
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(TStringMaker.Create().append('columns: ').appendint(Self.getColumns()).append(' rows: ').appendint(Self.getRows()).append(' col: ').appendint(i_column).append(' row: ').appendint(i_row).toString(), TJava.Box(Self), commonStrings_.GET_INSTANCE, TJava.Box(e));
            Exit(Self.NONE);
            end;
        end;
end;
    

function TCellPositionFactory.createInstance(i_column: Integer; i_row: Integer): TCellPosition;
var
  cellPositionCanBeNull: TCellPosition;
begin
        cellPositionCanBeNull := Self.cellPositionArray[i_column][i_row];
        if (cellPositionCanBeNull) = (nil) then begin
            cellPositionCanBeNull := TCellPosition.Create(i_column, i_row, Self.columns, Self.rows);
            Self.cellPositionArray[i_column][i_row] := cellPositionCanBeNull;
        end;
        Exit(cellPositionCanBeNull);
end;
    

function TCellPositionFactory.getColumns: Integer;
begin
        Exit(Self.columns);
end;
    

function TCellPositionFactory.getRows: Integer;
begin
        Exit(Self.rows);
end;

initialization
  {AB:INITIALIZATION}
  TCellPositionFactory.SINGLETON := TCellPositionFactory.Create();
  {AB:END}

end.

