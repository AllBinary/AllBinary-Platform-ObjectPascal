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
unit CommonButtons;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Rectangle;

type
  {AB:TYPES}
  TCommonButtons = class(TObject)
  public
    STANDARD_BUTTON_SIZE: Integer;
    NORMAL_BUTTON: TRectangle;
    LARGE_BUTTON: TRectangle;
    class var instance: TCommonButtons;
    procedure InitFields;
        class function getInstance: TCommonButtons; static;
        constructor Create;
  end;

implementation
uses
  PointFactory, DisplayInfoSingleton;


{AB:CODE}

procedure TCommonButtons.InitFields;
begin
  
  
  
end;
    

class function TCommonButtons.getInstance: TCommonButtons;
begin
        Exit(TCommonButtons.instance);
end;
    

constructor TCommonButtons.Create;
var
  displayInfo: TDisplayInfoSingleton;
  commonButtonSize: Integer;
  totalColumns: Integer;
  totalRows: Integer;
  max: Integer;
begin
    inherited Create;
    InitFields;
        displayInfo := TDisplayInfoSingleton.getInstance();
        commonButtonSize := 128;
        while (commonButtonSize) > (64) do begin
            totalColumns := (displayInfo.getLastWidth()) div (commonButtonSize);
            totalRows := (displayInfo.getLastHeight()) div (commonButtonSize);
            max := totalColumns;
            if (totalRows) > (max) then begin
                max := totalRows;
            end;
            if (max) > (9) then begin
                Break;
            end;
            commonButtonSize := TJava.SignedRightShift(commonButtonSize, 1);
        end;
        Self.STANDARD_BUTTON_SIZE := commonButtonSize;
        Self.NORMAL_BUTTON := TRectangle.Create(TPointFactory.getInstance().ZERO_ZERO, Self.STANDARD_BUTTON_SIZE, Self.STANDARD_BUTTON_SIZE);
        Self.LARGE_BUTTON := TRectangle.Create(TPointFactory.getInstance().ZERO_ZERO, (Self.STANDARD_BUTTON_SIZE) shl (1), (Self.STANDARD_BUTTON_SIZE) shl (1));
end;

initialization
  {AB:INITIALIZATION}
  TCommonButtons.instance := TCommonButtons.Create();
  {AB:END}

end.

