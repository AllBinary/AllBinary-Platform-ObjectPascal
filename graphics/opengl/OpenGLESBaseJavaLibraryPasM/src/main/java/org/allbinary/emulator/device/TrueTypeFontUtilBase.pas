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
// package org.allbinary.emulator.device
unit TrueTypeFontUtilBase;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Font;

type
  {AB:TYPES}
  TTrueTypeFontUtilBase = class(TObject)
  public
    shortPattern: string;
    patternAsBytes: TArray<ShortInt>;
    pattern: string;
    charArray: TArray<SmallInt>;
    _characterWidth: TArray<Integer>;
    characterArray: TArray<WideChar>;
    size: Integer;
    lastCapIndex: Integer;
    currentFont: TFont;
    scale: Integer;
    CELLS_PER_ROW: Integer;
    fontSize: Integer;
    baseCharWidth: Integer;
    cellSize: Integer;
    textureSize: Integer;
    actualCellsPerRow: Integer;
    procedure InitFields;
        constructor Create(scale: Integer);
        function getAsTextureSize(textureSize: Integer): Integer; virtual;
        function getCellSize(cellSize: Integer): Integer; virtual;
        function getYOffset: Integer; virtual;
  end;

implementation
uses
  AvianUtil, StringUtil;


{AB:CODE}

procedure TTrueTypeFontUtilBase.InitFields;
begin
  
  Self.patternAsBytes := TArray<ShortInt>.Create(32, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 32, 32, 32, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 32, 32, 32, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 32, 32, 32, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 32, 32, 32, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 46, 63, 32, 32, 32, 33, 36, 37, 96, ShortInt(-62), ShortInt(-84), ShortInt(-62), ShortInt(-84), 34, ShortInt(-62), ShortInt(-93), ShortInt(-62), ShortInt(-93), 94, 38, 42, 40, 32, 32, 32, 41, 95, 43, 45, 61, 91, 93, 123, 125, 59, 39, 35, 58, 32, 32, 32, 64, 126, 44, 47, 60, 62, 92, 124, ShortInt(-62), ShortInt(-82), ShortInt(-62), ShortInt(-82), ShortInt(-62), ShortInt(-87), ShortInt(-62), ShortInt(-87));
  Self.pattern := TJava.NewString(Self.patternAsBytes);
  Self.charArray := TArray<SmallInt>.Create($0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $6f, $50, $56, $6b, $51, $52, $5a, $6a, $5c, $60, $5b, $62, $72, $63, $4b, $73, $1, $2, $3, $4, $5, $6, $7, $8, $9, $a, $6c, $69, $74, $64, $75, $4c, $70, $b, $c, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $65, $76, $66, $59, $61, $53, $2b, $2c, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $67, $77, $68, $71, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $58, $0, $0, $0, $0, $0, $7b, $0, $0, $55, $0, $79, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0, $0);
  Self._characterWidth := TJava.NewArray<Integer>(System.Length(Self.pattern));
  Self.characterArray := TJava.NewArray<WideChar>(1);
  Self.size := System.Length(Self.pattern);
  Self.lastCapIndex := (Pos(TJava.ToString('Z'), Self.pattern) - 1);
  Self.currentFont := TFont.getDefaultFont();
  
  
  
  
  
  
  
end;
    

constructor TTrueTypeFontUtilBase.Create(scale: Integer);
var
  shortPattern: string;
  shortPatterAsByteArray: TArray<ShortInt>;
begin
    inherited Create;
    InitFields;
        shortPattern := TStringUtil.getInstance().EMPTY_STRING;
        if TAvianUtil.isAvian() then begin
            shortPatterAsByteArray := TArray<ShortInt>.Create(32, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 46, 63, 33, 36, 37, 96, ShortInt(-62), ShortInt(-84), ShortInt(-62), ShortInt(-84), 34, ShortInt(-62), ShortInt(-93), ShortInt(-62), ShortInt(-93), 94, 38, 42, 40, 41, 95, 43, 45, 61, 91, 93, 123, 125, 59, 39, 35, 58, 64, 126, 44, 47, 60, 62, 92, 124, ShortInt(-62), ShortInt(-82), ShortInt(-62), ShortInt(-82), ShortInt(-62), ShortInt(-87), ShortInt(-62), ShortInt(-87));
            shortPattern := TJava.NewString(shortPatterAsByteArray);
        end else begin
            shortPatterAsByteArray := TArray<ShortInt>.Create(32, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 46, 63, 33, 36, 37, 96, ShortInt(-62), ShortInt(-84), 34, ShortInt(-62), ShortInt(-93), 94, 38, 42, 40, 41, 95, 43, 45, 61, 91, 93, 123, 125, 59, 39, 35, 58, 64, 126, 44, 47, 60, 62, 92, 124, ShortInt(-62), ShortInt(-82), ShortInt(-62), ShortInt(-87));
            shortPattern := TJava.NewString(shortPatterAsByteArray);
        end;
        Self.shortPattern := shortPattern;
        Self.scale := scale;
        Self.CELLS_PER_ROW := 16;
        Self.fontSize := (((20) + (6))) * (Self.scale);
        Self.baseCharWidth := (Self.fontSize) + (((6) * (Self.scale)));
        Self.cellSize := (Self.fontSize) + (((6) * (Self.scale)));
        Self.textureSize := Self.getAsTextureSize((Self.CELLS_PER_ROW) * (Self.cellSize));
        Self.actualCellsPerRow := (Self.textureSize) div (Self.cellSize);
end;
    

function TTrueTypeFontUtilBase.getAsTextureSize(textureSize: Integer): Integer;
begin
        if (textureSize) <= (64) then begin
            textureSize := 64;
        end else if (textureSize) <= (128) then begin
            textureSize := 128;
        end else if (textureSize) <= (256) then begin
            textureSize := 256;
        end else if (textureSize) <= (512) then begin
            textureSize := 512;
        end else if (textureSize) <= (1024) then begin
            textureSize := 1024;
        end;
        Exit(textureSize);
end;
    

function TTrueTypeFontUtilBase.getCellSize(cellSize: Integer): Integer;
begin
        if (cellSize) <= (16) then begin
            cellSize := 16;
        end else if (cellSize) <= (32) then begin
            cellSize := 32;
        end else if (cellSize) <= (64) then begin
            cellSize := 64;
        end else if (cellSize) <= (128) then begin
            cellSize := 128;
        end else if (cellSize) <= (256) then begin
            cellSize := 256;
        end;
        Exit(cellSize);
end;
    

function TTrueTypeFontUtilBase.getYOffset: Integer;
begin
        Exit(((((Self.scale) - (1))) * (Self.cellSize)));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

