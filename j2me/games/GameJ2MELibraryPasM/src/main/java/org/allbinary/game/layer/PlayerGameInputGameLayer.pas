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
// package org.allbinary.game.layer
unit PlayerGameInputGameLayer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, PlayerGameInput, PlayerGameInputCompositeInterface, AllBinaryLayerManager, AllBinaryGameLayer, GameInputInterface, NamedInterface;

type
  {AB:TYPES}
  TPlayerGameInputGameLayer = class(TAllBinaryGameLayer, IPlayerGameInputCompositeInterface, IGameInputInterface, INamedInterface)
  public
    playerGameInput: TPlayerGameInput;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(playerInputId: Integer);
        function getPlayerGameInput: TPlayerGameInput; virtual;
        procedure initInputProcessors; virtual;
        procedure processInput(myManager: TAllBinaryLayerManager); virtual;
        procedure paint(graphics_: TGraphics); virtual;
  end;

implementation
uses
  PointFactory, Rectangle, CanvasStrings, StringUtil, BasicArrayListD, StaticViewPosition;


{AB:CODE}

procedure TPlayerGameInputGameLayer.InitFields;
begin
  
end;

function TPlayerGameInputGameLayer.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TPlayerGameInputGameLayer.Create(playerInputId: Integer);
var
  canvasStrings_: TCanvasStrings;
begin
        inherited Create(TStringUtil.getInstance().EMPTY_STRING, TRectangle.Create(TPointFactory.getInstance().ZERO_ZERO, 0, 0), TStaticViewPosition.Create(0, 0, 0));
        InitFields;
        Self.playerGameInput := TPlayerGameInput.Create(Self.getGameKeyEventList(), TBasicArrayListD.Create(), playerInputId);
        canvasStrings_ := TCanvasStrings.getInstance();
        Self.logUtil.putF('Danger Danger Danger: Should Not Be Called Except For Testing Input', TJava.Box(Self), canvasStrings_.PAINT);
end;
    

function TPlayerGameInputGameLayer.getPlayerGameInput: TPlayerGameInput;
begin
        Exit(Self.playerGameInput);
end;
    

procedure TPlayerGameInputGameLayer.initInputProcessors;
begin
end;
    

// throws Exception
procedure TPlayerGameInputGameLayer.processInput(myManager: TAllBinaryLayerManager);
begin
end;
    

procedure TPlayerGameInputGameLayer.paint(graphics_: TGraphics);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

