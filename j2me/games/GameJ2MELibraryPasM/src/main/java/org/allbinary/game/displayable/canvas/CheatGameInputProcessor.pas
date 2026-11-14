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
unit CheatGameInputProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameKeyFactory, PlayerGameInput, SpecialGameInputInterface, AllBinaryGameCanvas;

type
  {AB:TYPES}
  TCheatGameInputProcessor = class(TPlayerGameInput)
  public
    PROCESS_GAME: string;
    gameCanvas: TAllBinaryGameCanvas;
    gameKeyFactory: TGameKeyFactory;
    class var inputProcessor: ISpecialGameInputInterface;
    procedure InitFields;
        constructor Create(gameCanvas: TAllBinaryGameCanvas);
        procedure update; override;
  end;

implementation
uses
  GameKeyEvent, GameKeyEventUtil, AllBinaryGameLayerManager, SpecialGameInputFactory, StringMaker, BasicArrayList, BasicArrayListD;


{AB:CODE}

procedure TCheatGameInputProcessor.InitFields;
begin
  Self.PROCESS_GAME := 'processGame';
  
  Self.gameKeyFactory := TGameKeyFactory.getInstance();
end;
    

constructor TCheatGameInputProcessor.Create(gameCanvas: TAllBinaryGameCanvas);
begin
        inherited Create(TBasicArrayListD.Create(), TBasicArrayListD.Create(), -1);
        InitFields;
        Self.gameCanvas := gameCanvas;
end;
    

procedure TCheatGameInputProcessor.update;
var
  gameLayerManager: TAllBinaryGameLayerManager;
  list: TBasicArrayList;
  size: Integer;
  anyType: TObject;
  key: Integer;
  index: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        try
            gameLayerManager := Self.gameCanvas.getLayerManager();
            list := Self.getGameKeyEventList();
            size := list.size();
            for index := 0 to size - 1 do begin
                anyType := TJava.Box(list.objectArray[index]);
                key := TGameKeyEventUtil.getKey(TJava.Box(anyType));
                if (key) = (Self.gameKeyFactory.LEVEL_DOWN.getId()) then begin
                    TCheatGameInputProcessor.inputProcessor.strafeLeft();
                    Break;
                end else if (key) = (Self.gameKeyFactory.LEVEL_UP.getId()) then begin
                    TCheatGameInputProcessor.inputProcessor.strafeRight();
                    Break;
                end;
                if (key) = (Self.gameKeyFactory.LEFT.getId()) then begin
                    TCheatGameInputProcessor.inputProcessor.left();
                    Break;
                end else if (key) = (Self.gameKeyFactory.RIGHT.getId()) then begin
                    TCheatGameInputProcessor.inputProcessor.right();
                    Break;
                end else if (key) = (Self.gameKeyFactory.UP.getId()) then begin
                    TCheatGameInputProcessor.inputProcessor.up();
                    Break;
                end else if (key) = (Self.gameKeyFactory.DOWN.getId()) then begin
                    TCheatGameInputProcessor.inputProcessor.down();
                    Break;
                end else if (key) = (Self.gameKeyFactory.KEY_NUM1.getId()) then begin
                    TCheatGameInputProcessor.inputProcessor.special1(gameLayerManager, TGameKeyEvent.NONE);
                    Break;
                end else if (key) = (Self.gameKeyFactory.KEY_NUM3.getId()) then begin
                    TCheatGameInputProcessor.inputProcessor.special2(gameLayerManager, TGameKeyEvent.NONE);
                    Break;
                end;
            end;
            list.clear();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.UPDATE, TJava.Box(e));
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  TCheatGameInputProcessor.inputProcessor := TSpecialGameInputFactory.NO_SPECIAL_GAME_INPUT;
  {AB:END}

end.

