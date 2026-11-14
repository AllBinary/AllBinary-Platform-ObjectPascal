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
unit BasicTouchButtonsBuilder;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, BasicArrayList, BaseTouchInput;

type
  {AB:TYPES}
  TBasicTouchButtonsBuilder = class(TBaseTouchInput)
  public
    logUtil: TLogUtil;
    procedure InitFields;
    constructor Create;
        function getList: TBasicArrayList; override;
  end;

implementation
uses
  CommonButtons, TouchButtonLocationHelper, BasicTouchButtonCellPositionFactory, BasicTouchInputFactory, TouchButtonUpResource, TouchButton, TouchButtonDownResource, TouchButtonTurnLeftResource, TouchButtonTurnRightResource, BasicArrayListD, BasicArrayListUtil;


{AB:CODE}

procedure TBasicTouchButtonsBuilder.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

constructor TBasicTouchButtonsBuilder.Create;
begin
  inherited Create;
  InitFields;
end;
    

function TBasicTouchButtonsBuilder.getList: TBasicArrayList;
var
  list: TBasicArrayList;
  commonButtons_: TCommonButtons;
  touchButtonLocationHelper_: TTouchButtonLocationHelper;
  basicTouchButtonCellPositionFactory_: TBasicTouchButtonCellPositionFactory;
  UP: TTouchButton;
  DOWN: TTouchButton;
  LEFT: TTouchButton;
  RIGHT: TTouchButton;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
            list := TBasicArrayListD.Create();
            commonButtons_ := TCommonButtons.getInstance();
            touchButtonLocationHelper_ := TTouchButtonLocationHelper.Create();
            basicTouchButtonCellPositionFactory_ := TBasicTouchButtonCellPositionFactory.Create();
            UP := TTouchButton.createButton(TBasicTouchInputFactory.getInstance().UP, TTouchButtonUpResource.getInstance(), commonButtons_.NORMAL_BUTTON, basicTouchButtonCellPositionFactory_.SECOND_FROM_BOTTOM_LEFT, touchButtonLocationHelper_.getColumnsRemainderHalf(), touchButtonLocationHelper_.getRowsRemainderHalf());
            DOWN := TTouchButton.createButton(TBasicTouchInputFactory.getInstance().DOWN, TTouchButtonDownResource.getInstance(), commonButtons_.NORMAL_BUTTON, basicTouchButtonCellPositionFactory_.BOTTOM_LEFT, touchButtonLocationHelper_.getColumnsRemainderHalf(), touchButtonLocationHelper_.getRowsRemainderHalf());
            LEFT := TTouchButton.createButton(TBasicTouchInputFactory.getInstance().SPECIAL_BUTTON_FOUR, TTouchButtonTurnLeftResource.getInstance(), commonButtons_.NORMAL_BUTTON, basicTouchButtonCellPositionFactory_.BOTTOM_SECOND_FROM_RIGHT, touchButtonLocationHelper_.getColumnsRemainderHalf(), touchButtonLocationHelper_.getRowsRemainderHalf());
            RIGHT := TTouchButton.createButton(TBasicTouchInputFactory.getInstance().SPECIAL_BUTTON_THREE, TTouchButtonTurnRightResource.getInstance(), commonButtons_.NORMAL_BUTTON, basicTouchButtonCellPositionFactory_.BOTTOM_RIGHT, touchButtonLocationHelper_.getColumnsRemainderHalf(), touchButtonLocationHelper_.getRowsRemainderHalf());
            list.add(TJava.Box(UP));
            list.add(TJava.Box(LEFT));
            list.add(TJava.Box(RIGHT));
            list.add(TJava.Box(DOWN));
            Exit(list);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.GET_LIST, TJava.Box(e));
            Exit(TBasicArrayListUtil.getInstance().getImmutableInstance());
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

