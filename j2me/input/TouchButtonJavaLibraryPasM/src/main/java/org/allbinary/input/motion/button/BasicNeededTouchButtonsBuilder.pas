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
unit BasicNeededTouchButtonsBuilder;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, BasicArrayList, BaseTouchInput;

type
  {AB:TYPES}
  TBasicNeededTouchButtonsBuilder = class(TBaseTouchInput)
  public
    logUtil: TLogUtil;
    procedure InitFields;
    constructor Create;
        function getList: TBasicArrayList; override;
  end;

implementation
uses
  TouchButtonLocationHelper, BasicTouchButtonCellPositionFactory, CommonButtons, TouchButton, BasicTouchInputFactory, Animation, NullAnimationFactory, BasicArrayListD, BasicArrayListUtil;


{AB:CODE}

procedure TBasicNeededTouchButtonsBuilder.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

constructor TBasicNeededTouchButtonsBuilder.Create;
begin
  inherited Create;
  InitFields;
end;
    

function TBasicNeededTouchButtonsBuilder.getList: TBasicArrayList;
var
  list: TBasicArrayList;
  touchButtonLocationHelper_: TTouchButtonLocationHelper;
  basicTouchButtonCellPositionFactory_: TBasicTouchButtonCellPositionFactory;
  commonButtons_: TCommonButtons;
  animationInterface: TAnimation;
  UP: TTouchButton;
  DOWN: TTouchButton;
  LEFT: TTouchButton;
  RIGHT: TTouchButton;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
            list := TBasicArrayListD.Create();
            touchButtonLocationHelper_ := TTouchButtonLocationHelper.Create();
            basicTouchButtonCellPositionFactory_ := TBasicTouchButtonCellPositionFactory.Create();
            commonButtons_ := TCommonButtons.getInstance();
            animationInterface := TNullAnimationFactory.getFactoryInstance().getInstance(0);
            UP := TTouchButton.Create(TBasicTouchInputFactory.getInstance().UP, animationInterface, animationInterface, commonButtons_.NORMAL_BUTTON, basicTouchButtonCellPositionFactory_.SECOND_FROM_BOTTOM_LEFT, touchButtonLocationHelper_.getColumnsRemainderHalf(), touchButtonLocationHelper_.getRowsRemainderHalf());
            DOWN := TTouchButton.Create(TBasicTouchInputFactory.getInstance().DOWN, animationInterface, animationInterface, commonButtons_.NORMAL_BUTTON, basicTouchButtonCellPositionFactory_.BOTTOM_LEFT, touchButtonLocationHelper_.getColumnsRemainderHalf(), touchButtonLocationHelper_.getRowsRemainderHalf());
            LEFT := TTouchButton.Create(TBasicTouchInputFactory.getInstance().LEFT, animationInterface, animationInterface, commonButtons_.NORMAL_BUTTON, basicTouchButtonCellPositionFactory_.BOTTOM_SECOND_FROM_RIGHT, touchButtonLocationHelper_.getColumnsRemainderHalf(), touchButtonLocationHelper_.getRowsRemainderHalf());
            RIGHT := TTouchButton.Create(TBasicTouchInputFactory.getInstance().RIGHT, animationInterface, animationInterface, commonButtons_.NORMAL_BUTTON, basicTouchButtonCellPositionFactory_.BOTTOM_RIGHT, touchButtonLocationHelper_.getColumnsRemainderHalf(), touchButtonLocationHelper_.getRowsRemainderHalf());
            list.add(TJava.Box(UP));
            list.add(TJava.Box(DOWN));
            list.add(TJava.Box(LEFT));
            list.add(TJava.Box(RIGHT));
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

