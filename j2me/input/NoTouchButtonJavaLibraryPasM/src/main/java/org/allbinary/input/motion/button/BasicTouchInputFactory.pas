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
unit BasicTouchInputFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, InputToGameKeyMapping, LogUtil, BasicArrayList, TouchButtonInput;

type
  {AB:TYPES}
  TBasicTouchInputFactory = class(TObject)
  public
    logUtil: TLogUtil;
    SPECIAL_BUTTON_SIX: TTouchButtonInput;
    SPECIAL_BUTTON_FIVE: TTouchButtonInput;
    SPECIAL_BUTTON_FOUR: TTouchButtonInput;
    SPECIAL_BUTTON_THREE: TTouchButtonInput;
    SPECIAL_BUTTON_TWO: TTouchButtonInput;
    SPECIAL_BUTTON_ONE: TTouchButtonInput;
    UP: TTouchButtonInput;
    LEFT: TTouchButtonInput;
    RIGHT: TTouchButtonInput;
    DOWN: TTouchButtonInput;
    NONE: TTouchButtonInput;
    initialized: Boolean;
    list: TBasicArrayList;
    class var instance: TObject;
    procedure InitFields;
    constructor Create;
        class function getInstance: TBasicTouchInputFactory; static;
        procedure init(inputToGameKeyMapping_: TInputToGameKeyMapping); virtual;
        procedure updateAll(inputToGameKeyMapping_: TInputToGameKeyMapping); virtual;
        procedure updateAllList(list: TBasicArrayList; inputToGameKeyMapping_: TInputToGameKeyMapping); virtual;
        function getList: TBasicArrayList; virtual;
  end;

implementation
uses
  InputFactory, NullUtil, StringMaker, CommonLabels, BasicArrayListD;


{AB:CODE}

procedure TBasicTouchInputFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.SPECIAL_BUTTON_SIX := TTouchButtonInput.Create((TInputFactory.getInstance().MAX) - (30), 'Button 6');
  Self.SPECIAL_BUTTON_FIVE := TTouchButtonInput.Create((TInputFactory.getInstance().MAX) - (31), 'Button 5');
  Self.SPECIAL_BUTTON_FOUR := TTouchButtonInput.Create((TInputFactory.getInstance().MAX) - (32), 'Button 4');
  Self.SPECIAL_BUTTON_THREE := TTouchButtonInput.Create((TInputFactory.getInstance().MAX) - (33), 'Button 3');
  Self.SPECIAL_BUTTON_TWO := TTouchButtonInput.Create((TInputFactory.getInstance().MAX) - (34), 'Button 2');
  Self.SPECIAL_BUTTON_ONE := TTouchButtonInput.Create((TInputFactory.getInstance().MAX) - (35), 'Button 1');
  Self.UP := TTouchButtonInput.Create((TInputFactory.getInstance().MAX) - (36), 'Up Button');
  Self.LEFT := TTouchButtonInput.Create((TInputFactory.getInstance().MAX) - (37), 'Left Button');
  Self.RIGHT := TTouchButtonInput.Create((TInputFactory.getInstance().MAX) - (38), 'Right Button');
  Self.DOWN := TTouchButtonInput.Create((TInputFactory.getInstance().MAX) - (39), 'Down Button');
  Self.NONE := TTouchButtonInput.Create((TInputFactory.getInstance().MAX) - (40), 'No Button');
  Self.initialized := False;
  Self.list := TBasicArrayListD.Create();
end;

constructor TBasicTouchInputFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TBasicTouchInputFactory.getInstance: TBasicTouchInputFactory;
begin
        if (TBasicTouchInputFactory.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TBasicTouchInputFactory.instance := TBasicTouchInputFactory.Create();
        end;
        Exit(TBasicTouchInputFactory(TJava.ToObject(TBasicTouchInputFactory.instance)));
end;
    

procedure TBasicTouchInputFactory.init(inputToGameKeyMapping_: TInputToGameKeyMapping);
begin
    TJava.MonitorEnter(Self);
    try
        if not (Self.initialized) then begin
            Self.initialized := True;
            Self.list.add(TJava.Box(Self.UP));
            Self.list.add(TJava.Box(Self.LEFT));
            Self.list.add(TJava.Box(Self.RIGHT));
            Self.list.add(TJava.Box(Self.DOWN));
            Self.list.add(TJava.Box(Self.SPECIAL_BUTTON_TWO));
            Self.list.add(TJava.Box(Self.SPECIAL_BUTTON_FOUR));
            Self.list.add(TJava.Box(Self.SPECIAL_BUTTON_THREE));
            Self.list.add(TJava.Box(Self.SPECIAL_BUTTON_ONE));
            Self.list.add(TJava.Box(Self.SPECIAL_BUTTON_FIVE));
            Self.list.add(TJava.Box(Self.SPECIAL_BUTTON_SIX));
            Self.updateAllList(Self.list, inputToGameKeyMapping_);
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TBasicTouchInputFactory.updateAll(inputToGameKeyMapping_: TInputToGameKeyMapping);
begin
        Self.updateAllList(Self.getList(), inputToGameKeyMapping_);
end;
    

procedure TBasicTouchInputFactory.updateAllList(list: TBasicArrayList; inputToGameKeyMapping_: TInputToGameKeyMapping);
var
  touchButtonInput_: TTouchButtonInput;
  index: Integer;
begin
        Self.logUtil.putF(TStringMaker.Create().append(TCommonLabels.getInstance().START).appendint(list.size()).toString(), TJava.Box(Self), 'updateAll');
        for index := (list.size()) - (1) downto 0 do begin
            touchButtonInput_ := TTouchButtonInput(TJava.ToObject(list.get(index)));
            touchButtonInput_.update(inputToGameKeyMapping_);
        end;
end;
    

function TBasicTouchInputFactory.getList: TBasicArrayList;
begin
        Exit(Self.list);
end;

initialization
  {AB:INITIALIZATION}
  TBasicTouchInputFactory.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

