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
// package org.allbinary.graphics.color
unit SmallBasicColorCacheFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicColor;

type
  {AB:TYPES}
  TSmallBasicColorCacheFactory = class(TObject)
  public
    SIZE: Integer;
    INDEX_TO_COLOR: TArray<Integer>;
    BASIC_COLOR_ARRAY: TArray<TBasicColor>;
    colorIndex: Integer;
    class var instance: TSmallBasicColorCacheFactory;
    procedure InitFields;
        class function getInstance: TSmallBasicColorCacheFactory; static;
        constructor Create;
        procedure add(basicDefaultColor: TBasicColor); virtual;
        function getAndOrCreate(colorAsInt: Integer): TBasicColor; virtual;
  end;

implementation
uses
  BasicColorFactory, StringUtil;


{AB:CODE}

procedure TSmallBasicColorCacheFactory.InitFields;
begin
  Self.SIZE := 255;
  Self.INDEX_TO_COLOR := TJava.NewArray<Integer>(Self.SIZE);
  Self.BASIC_COLOR_ARRAY := TJava.NewArray<TBasicColor>(Self.SIZE);
  Self.colorIndex := 0;
end;
    

class function TSmallBasicColorCacheFactory.getInstance: TSmallBasicColorCacheFactory;
begin
        Exit(TSmallBasicColorCacheFactory.instance);
end;
    

constructor TSmallBasicColorCacheFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TSmallBasicColorCacheFactory.add(basicDefaultColor: TBasicColor);
begin
        Self.BASIC_COLOR_ARRAY[Self.colorIndex] := basicDefaultColor;
        Self.INDEX_TO_COLOR[Self.colorIndex] := basicDefaultColor.intValue();
        Inc(Self.colorIndex);
end;
    

function TSmallBasicColorCacheFactory.getAndOrCreate(colorAsInt: Integer): TBasicColor;
var
  basicColor_: TBasicColor;
  index: Integer;
  ALPHA_MASK: Integer;
begin
        
        for index := 0 to Self.SIZE - 1 do begin
            if (Self.INDEX_TO_COLOR[index]) = (colorAsInt) then begin
                Exit(Self.BASIC_COLOR_ARRAY[index]);
            end;
        end;
        ALPHA_MASK := $FF000000;
        basicColor_ := TBasicColorFactory.getInstance().createInstanceAN((colorAsInt) and (ALPHA_MASK), (colorAsInt) and ($00FFFFFF), TStringUtil.getInstance().EMPTY_STRING);
        Self.add(basicColor_);
        Exit(basicColor_);
end;

initialization
  {AB:INITIALIZATION}
  TSmallBasicColorCacheFactory.instance := TSmallBasicColorCacheFactory.Create();
  {AB:END}

end.

