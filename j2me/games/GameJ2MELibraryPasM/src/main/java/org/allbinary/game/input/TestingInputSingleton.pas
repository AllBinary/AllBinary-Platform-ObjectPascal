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
// package org.allbinary.game.input
unit TestingInputSingleton;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, AllBinaryGameLayer, PaintableInterface, AllBinaryLayerManager, BasicArrayList, TestInputInterface, GameInputProcessor, GameInputInterface, NamedInterface;

type
  {AB:TYPES}
  TTestingInputSingleton = class(TAllBinaryGameLayer, IGameInputInterface, INamedInterface)
  public
    inputProcessorArray: TArray<TGameInputProcessor>;
    testInputPaintable: IPaintableInterface;
    class var instance: TTestingInputSingleton;
    procedure InitFields;
    function JavaObject: TObject;
        class function getInstance: TTestingInputSingleton; static;
        constructor Create;
        procedure initInputProcessors; virtual;
        procedure initInputProcessorsForTestInput(aTestInputInterface: ITestInputInterface); virtual;
        procedure processInputList(allbinaryLayerManager_: TAllBinaryLayerManager; list: TBasicArrayList); virtual;
        procedure processInput(allbinaryLayerManager_: TAllBinaryLayerManager); virtual;
        procedure paint(graphics_: TGraphics); virtual;
        function implmentsGameInputInterface: Boolean; virtual;
  end;

implementation
uses
  InputFactory, GameInputProcessorUtil, Canvas, GameKeyEvent, RectangleFactory, NullPaintable, StringUtil, ViewPosition;


{AB:CODE}

procedure TTestingInputSingleton.InitFields;
begin
  Self.inputProcessorArray := TJava.NewArray<TGameInputProcessor>(TInputFactory.getInstance().MAX);
  Self.testInputPaintable := TNullPaintable.getInstance();
end;

function TTestingInputSingleton.JavaObject: TObject;
begin
  Result := Self;
end;
    

class function TTestingInputSingleton.getInstance: TTestingInputSingleton;
begin
        Exit(TTestingInputSingleton.instance);
end;
    

constructor TTestingInputSingleton.Create;
begin
        inherited Create(TStringUtil.getInstance().EMPTY_STRING, TRectangleFactory.SINGLETON, TViewPosition.getInstanceD());
        InitFields;
        TGameInputProcessorUtil.init(Self.inputProcessorArray);
end;
    

procedure TTestingInputSingleton.initInputProcessors;
begin
end;
    

procedure TTestingInputSingleton.initInputProcessorsForTestInput(aTestInputInterface: ITestInputInterface);
var
  testInputInterface_: ITestInputInterface;
begin
        testInputInterface_ := aTestInputInterface;
        Self.testInputPaintable := testInputInterface_;
        Self.inputProcessorArray[TCanvas.UP] := TGameInputProcessor.Create() (* Java anonymous class body: implement it as a named class
            

        // throws Exception
        procedure T.processEvent(allbinaryLayerManager: TAllBinaryLayerManager; gameKeyEvent: TGameKeyEvent);
begin
                testInputInterface_.up();
end;
*);
        Self.inputProcessorArray[TCanvas.DOWN] := TGameInputProcessor.Create() (* Java anonymous class body: implement it as a named class
            

        // throws Exception
        procedure T.processEvent(allbinaryLayerManager: TAllBinaryLayerManager; gameKeyEvent: TGameKeyEvent);
begin
                testInputInterface_.down();
end;
*);
        Self.inputProcessorArray[TCanvas.LEFT] := TGameInputProcessor.Create() (* Java anonymous class body: implement it as a named class
            

        // throws Exception
        procedure T.processEvent(allbinaryLayerManager: TAllBinaryLayerManager; gameKeyEvent: TGameKeyEvent);
begin
                testInputInterface_.left();
end;
*);
        Self.inputProcessorArray[TCanvas.RIGHT] := TGameInputProcessor.Create() (* Java anonymous class body: implement it as a named class
            

        // throws Exception
        procedure T.processEvent(allbinaryLayerManager: TAllBinaryLayerManager; gameKeyEvent: TGameKeyEvent);
begin
                testInputInterface_.right();
end;
*);
        Self.inputProcessorArray[TCanvas.KEY_NUM7] := TGameInputProcessor.Create() (* Java anonymous class body: implement it as a named class
            

        // throws Exception
        procedure T.processEvent(allbinaryLayerManager: TAllBinaryLayerManager; gameKeyEvent: TGameKeyEvent);
begin
                testInputInterface_.strafeLeft();
end;
*);
        Self.inputProcessorArray[TCanvas.KEY_NUM9] := TGameInputProcessor.Create() (* Java anonymous class body: implement it as a named class
            

        // throws Exception
        procedure T.processEvent(allbinaryLayerManager: TAllBinaryLayerManager; gameKeyEvent: TGameKeyEvent);
begin
                testInputInterface_.strafeRight();
end;
*);
        TGameInputProcessorUtil.init(Self.inputProcessorArray);
end;
    

// throws Exception
procedure TTestingInputSingleton.processInputList(allbinaryLayerManager_: TAllBinaryLayerManager; list: TBasicArrayList);
var
  key: Integer;
  gameKeyEvent_: TGameKeyEvent;
  size: Integer;
  index: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        key := 0;
        
        size := list.size();
        for index := 0 to size - 1 do begin
            gameKeyEvent_ := (TGameKeyEvent(TJava.ToObject(list.objectArray[index])));
            key := gameKeyEvent_.getKey();
            Self.inputProcessorArray[key].processEvent(allbinaryLayerManager_, TGameKeyEvent.NONE);
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
procedure TTestingInputSingleton.processInput(allbinaryLayerManager_: TAllBinaryLayerManager);
begin
    TJava.MonitorEnter(Self);
    try
        Self.processInputList(allbinaryLayerManager_, Self.getGameKeyEventList());
        Self.getGameKeyEventList().clear();
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TTestingInputSingleton.paint(graphics_: TGraphics);
begin
        Self.testInputPaintable.paint(graphics_);
end;
    

function TTestingInputSingleton.implmentsGameInputInterface: Boolean;
begin
        Exit(True);
end;

initialization
  {AB:INITIALIZATION}
  TTestingInputSingleton.instance := TTestingInputSingleton.Create();
  {AB:END}

end.

