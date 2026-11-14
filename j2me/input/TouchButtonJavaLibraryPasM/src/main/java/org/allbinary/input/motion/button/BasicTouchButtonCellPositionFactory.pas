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
unit BasicTouchButtonCellPositionFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CellPosition, LogUtil, CommonStrings;

type
  {AB:TYPES}
  TBasicTouchButtonCellPositionFactory = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    TOP_RIGHT: TCellPosition;
    TOP_LEFT: TCellPosition;
    SECOND_FROM_TOP_LEFT: TCellPosition;
    SECOND_FROM_TOP_RIGHT: TCellPosition;
    TOP_SECOND_FROM_LEFT: TCellPosition;
    TOP_SECOND_FROM_RIGHT: TCellPosition;
    BOTTOM_RIGHT: TCellPosition;
    BOTTOM_SECOND_FROM_RIGHT: TCellPosition;
    SECOND_FROM_BOTTOM_RIGHT: TCellPosition;
    THIRD_FROM_BOTTOM_RIGHT: TCellPosition;
    FOURTH_FROM_BOTTOM_RIGHT: TCellPosition;
    SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT: TCellPosition;
    SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT: TCellPosition;
    SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT: TCellPosition;
    BOTTOM_THIRD_FROM_RIGHT: TCellPosition;
    BOTTOM_FOURTH_FROM_RIGHT: TCellPosition;
    BOTTOM_SECOND_FROM_LEFT: TCellPosition;
    SECOND_FROM_BOTTOM_LEFT: TCellPosition;
    THIRD_FROM_BOTTOM_LEFT: TCellPosition;
    BOTTOM_LEFT: TCellPosition;
    SECOND_FROM_BOTTOM_SECOND_FROM_LEFT: TCellPosition;
    procedure InitFields;
        constructor Create;
  end;

implementation
uses
  TouchButtonLocationHelper, CellPositionFactory;


{AB:CODE}

procedure TBasicTouchButtonCellPositionFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end;
    

constructor TBasicTouchButtonCellPositionFactory.Create;
var
  touchButtonLocationHelper_: TTouchButtonLocationHelper;
  cellPositionFactory_: TCellPositionFactory;
begin
    inherited Create;
    InitFields;
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        touchButtonLocationHelper_ := TTouchButtonLocationHelper.Create();
        cellPositionFactory_ := TCellPositionFactory.getInstance();
        cellPositionFactory_.init(touchButtonLocationHelper_.getTotalColumns(), touchButtonLocationHelper_.getTotalRows());
        Self.TOP_LEFT := cellPositionFactory_.getInstanceColRow(0, 0);
        Self.TOP_RIGHT := cellPositionFactory_.getInstanceColRow((touchButtonLocationHelper_.getTotalColumns()) - (1), 0);
        Self.BOTTOM_LEFT := cellPositionFactory_.getInstanceColRow(0, (touchButtonLocationHelper_.getTotalRows()) - (1));
        Self.BOTTOM_RIGHT := cellPositionFactory_.getInstanceColRow((touchButtonLocationHelper_.getTotalColumns()) - (1), (touchButtonLocationHelper_.getTotalRows()) - (1));
        Self.BOTTOM_SECOND_FROM_RIGHT := cellPositionFactory_.getInstanceColRow((touchButtonLocationHelper_.getTotalColumns()) - (2), (touchButtonLocationHelper_.getTotalRows()) - (1));
        Self.SECOND_FROM_BOTTOM_RIGHT := cellPositionFactory_.getInstanceColRow((touchButtonLocationHelper_.getTotalColumns()) - (1), (touchButtonLocationHelper_.getTotalRows()) - (2));
        Self.SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT := cellPositionFactory_.getInstanceColRow((touchButtonLocationHelper_.getTotalColumns()) - (2), (touchButtonLocationHelper_.getTotalRows()) - (2));
        Self.BOTTOM_SECOND_FROM_LEFT := cellPositionFactory_.getInstanceColRow(1, (touchButtonLocationHelper_.getTotalRows()) - (1));
        Self.SECOND_FROM_BOTTOM_LEFT := cellPositionFactory_.getInstanceColRow(0, (touchButtonLocationHelper_.getTotalRows()) - (2));
        Self.SECOND_FROM_BOTTOM_SECOND_FROM_LEFT := cellPositionFactory_.getInstanceColRow(1, (touchButtonLocationHelper_.getTotalRows()) - (2));
        if (touchButtonLocationHelper_.getTotalRows()) > (2) then begin
            Self.SECOND_FROM_TOP_LEFT := cellPositionFactory_.getInstanceColRow(0, 1);
            Self.SECOND_FROM_TOP_RIGHT := cellPositionFactory_.getInstanceColRow((touchButtonLocationHelper_.getTotalColumns()) - (1), 1);
        end else begin
            Self.SECOND_FROM_TOP_LEFT := cellPositionFactory_.NONE;
            Self.SECOND_FROM_TOP_RIGHT := cellPositionFactory_.NONE;
        end;
        if (touchButtonLocationHelper_.getTotalRows()) >= (4) then begin
            Self.THIRD_FROM_BOTTOM_RIGHT := cellPositionFactory_.getInstanceColRow((touchButtonLocationHelper_.getTotalColumns()) - (1), (touchButtonLocationHelper_.getTotalRows()) - (3));
            Self.FOURTH_FROM_BOTTOM_RIGHT := cellPositionFactory_.getInstanceColRow((touchButtonLocationHelper_.getTotalColumns()) - (1), (touchButtonLocationHelper_.getTotalRows()) - (4));
            Self.THIRD_FROM_BOTTOM_LEFT := cellPositionFactory_.getInstanceColRow(0, (touchButtonLocationHelper_.getTotalRows()) - (3));
        end else begin
            Self.THIRD_FROM_BOTTOM_RIGHT := cellPositionFactory_.NONE;
            Self.FOURTH_FROM_BOTTOM_RIGHT := cellPositionFactory_.NONE;
            Self.THIRD_FROM_BOTTOM_LEFT := cellPositionFactory_.NONE;
        end;
        if (touchButtonLocationHelper_.getTotalColumns()) >= (4) then begin
            Self.SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT := cellPositionFactory_.getInstanceColRow((touchButtonLocationHelper_.getTotalColumns()) - (3), (touchButtonLocationHelper_.getTotalRows()) - (2));
            Self.SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT := cellPositionFactory_.getInstanceColRow((touchButtonLocationHelper_.getTotalColumns()) - (4), (touchButtonLocationHelper_.getTotalRows()) - (2));
            Self.BOTTOM_THIRD_FROM_RIGHT := cellPositionFactory_.getInstanceColRow((touchButtonLocationHelper_.getTotalColumns()) - (3), (touchButtonLocationHelper_.getTotalRows()) - (1));
            Self.BOTTOM_FOURTH_FROM_RIGHT := cellPositionFactory_.getInstanceColRow((touchButtonLocationHelper_.getTotalColumns()) - (4), (touchButtonLocationHelper_.getTotalRows()) - (1));
            Self.TOP_SECOND_FROM_LEFT := cellPositionFactory_.getInstanceColRow(1, 0);
            Self.TOP_SECOND_FROM_RIGHT := cellPositionFactory_.getInstanceColRow((touchButtonLocationHelper_.getTotalColumns()) - (2), 0);
        end else begin
            Self.SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT := cellPositionFactory_.NONE;
            Self.SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT := cellPositionFactory_.NONE;
            Self.BOTTOM_THIRD_FROM_RIGHT := cellPositionFactory_.NONE;
            Self.BOTTOM_FOURTH_FROM_RIGHT := cellPositionFactory_.NONE;
            Self.TOP_SECOND_FROM_LEFT := cellPositionFactory_.NONE;
            Self.TOP_SECOND_FROM_RIGHT := cellPositionFactory_.NONE;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

