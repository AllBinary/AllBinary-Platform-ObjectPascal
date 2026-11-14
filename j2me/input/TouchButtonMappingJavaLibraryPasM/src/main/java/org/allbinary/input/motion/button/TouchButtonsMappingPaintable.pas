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
unit TouchButtonsMappingPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, BasicColor, Paintable, LogUtil, TouchButtonLocationHelper;

type
  {AB:TYPES}
  TTouchButtonsMappingPaintable = class(TPaintable)
  public
    logUtil: TLogUtil;
    foregroundColor: Integer;
    paintableTable: TArray<TArray<TPaintable>>;
    touchButtonLocationHelper: TTouchButtonLocationHelper;
    procedure InitFields;
        constructor Create(basicColor_: TBasicColor);
        procedure init;
        function createPaintableTable: TArray<TArray<TPaintable>>;
        procedure paint(graphics_: TGraphics); override;
  end;

implementation
uses
  CommonButtons, TouchButton, BasicTouchInputFactory, TouchButtonBlankResource, CellPositionFactory, CommonStrings;


{AB:CODE}

procedure TTouchButtonsMappingPaintable.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  Self.paintableTable := TJava.NewArray2<TPaintable>(0, 0);
  Self.touchButtonLocationHelper := TTouchButtonLocationHelper.Create();
end;
    

constructor TTouchButtonsMappingPaintable.Create(basicColor_: TBasicColor);
begin
    inherited Create;
    InitFields;
        Self.foregroundColor := basicColor_.intValue();
        Self.init();
end;
    

procedure TTouchButtonsMappingPaintable.init;
var
  commonStrings_: TCommonStrings;
begin
        try
            Self.paintableTable := Self.createPaintableTable();
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), 'updateRectangle', TJava.Box(e));
            end;
        end;
end;
    

// throws Exception
function TTouchButtonsMappingPaintable.createPaintableTable: TArray<TArray<TPaintable>>;
var
  totalColumns: Integer;
  totalRows: Integer;
  paintableTable: TArray<TArray<TPaintable>>;
  cellPositionFactory_: TCellPositionFactory;
  commonButtons_: TCommonButtons;
  rowIndex: Integer;
  index: Integer;
begin
        totalColumns := Self.touchButtonLocationHelper.getTotalColumns();
        totalRows := Self.touchButtonLocationHelper.getTotalRows();
        paintableTable := TJava.NewArray2<TPaintable>(totalColumns, totalRows);
        cellPositionFactory_ := TCellPositionFactory.getInstance();
        commonButtons_ := TCommonButtons.getInstance();
        for index := (totalColumns) - (1) downto 0 do begin
            for rowIndex := (totalRows) - (1) downto 0 do begin
                Self.paintableTable[index][rowIndex] := TTouchButton.createButton(TBasicTouchInputFactory.getInstance().NONE, TTouchButtonBlankResource.getInstance(), commonButtons_.NORMAL_BUTTON, cellPositionFactory_.getInstanceColRow(index, rowIndex), Self.touchButtonLocationHelper.getColumnsRemainderHalf(), Self.touchButtonLocationHelper.getRowsRemainderHalf());
            end;
        end;
        Exit(paintableTable);
end;
    

procedure TTouchButtonsMappingPaintable.paint(graphics_: TGraphics);
var
  totalColumns: Integer;
  totalRows: Integer;
  rowIndex: Integer;
  index: Integer;
begin
        totalColumns := Self.touchButtonLocationHelper.getTotalColumns();
        totalRows := Self.touchButtonLocationHelper.getTotalRows();
        for index := (totalColumns) - (1) downto 0 do begin
            for rowIndex := (totalRows) - (1) downto 0 do begin
                Self.paintableTable[index][rowIndex].paint(graphics_);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

