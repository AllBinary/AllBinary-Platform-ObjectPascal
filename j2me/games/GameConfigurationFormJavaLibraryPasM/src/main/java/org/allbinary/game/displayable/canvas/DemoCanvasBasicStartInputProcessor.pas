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
// package org.allbinary.game.displayable.canvas
unit DemoCanvasBasicStartInputProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, RunnableCanvas, BasicArrayList, BasicMenuInputProcessor;

type
  {AB:TYPES}
  TDemoCanvasBasicStartInputProcessor = class(TBasicMenuInputProcessor)
  public
        constructor Create(gameKeyEventList: TBasicArrayList; gameCanvas: TRunnableCanvas);
        function processInputList: Integer; override;
  end;

implementation
uses
  NullCanvas, GameCommandsFactory, GameInputStrings, GameKeyEvent, StringMaker, StringUtil;


{AB:CODE}
    

constructor TDemoCanvasBasicStartInputProcessor.Create(gameKeyEventList: TBasicArrayList; gameCanvas: TRunnableCanvas);
begin
        inherited Create(gameKeyEventList, -1, gameCanvas);
end;
    

// throws Exception
function TDemoCanvasBasicStartInputProcessor.processInputList: Integer;
var
  list: TBasicArrayList;
  size: Integer;
  gameKeyEvent_: TGameKeyEvent;
  index: Integer;
begin
        list := Self.getGameKeyEventList();
        size := list.size();
        
        for index := 0 to size - 1 do begin
            gameKeyEvent_ := TGameKeyEvent(TJava.ToObject(list.objectArray[index]));
            Self.logUtil.putF(TStringMaker.Create().append('Start GameKey: ').append(TStringUtil.getInstance().toString(gameKeyEvent_)).toString(), TJava.Box(Self), TGameInputStrings.getInstance().PROCESS_INPUT);
        end;
        Self.getCanvas().getCustomCommandListener().commandAction(TGameCommandsFactory.getInstance().START_COMMAND, TNullCanvas.NULL_CANVAS);
        Exit(size);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

