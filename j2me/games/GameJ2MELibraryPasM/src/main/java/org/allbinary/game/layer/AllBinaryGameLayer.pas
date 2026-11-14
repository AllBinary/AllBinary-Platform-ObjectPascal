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
unit AllBinaryGameLayer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL, Graphics, Rectangle, BasicColor, BasicColorSetUtil, Paintable, OpenGLSurfaceChangedInterface, AllBinaryLayer, AllBinaryLayerManager, AllBinaryEventObject, CommonStrings, BasicArrayList, ViewPositionBase, ViewPositionEvent, ViewPositionEventListenerInterface, EventListenerInterface;

type
  {AB:TYPES}
  TAllBinaryGameLayer = class(TAllBinaryLayer, IViewPositionEventListenerInterface, IOpenGLSurfaceChangedInterface, IEventListenerInterface)
  public
    commonStrings: TCommonStrings;
    basicSetColorUtil: TBasicColorSetUtil;
    RED: TBasicColor;
    paintable: TPaintable;
    gameKeyEventList: TBasicArrayList;
    procedure InitFields;
    function JavaObject: TObject;
        class function createPaintable: TPaintable; static;
        constructor Create(name: string; layerInfo: TRectangle; viewPosition: TViewPositionBase);
        procedure set_(gl_: IGL); virtual;
        procedure move; virtual;
        function getGameKeyEventList: TBasicArrayList; virtual;
        procedure processInput(allBinaryLayerManager_: TAllBinaryLayerManager); virtual;
        procedure processTick(allBinaryLayerManager_: TAllBinaryLayerManager); virtual;
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure onViewPositionChangeEvent; virtual;
        procedure onChangeEvent(layerManagerEvent: TViewPositionEvent); virtual;
        procedure paintFirst(graphics_: TGraphics); virtual;
        procedure paintDebug(graphics_: TGraphics); virtual;
        procedure setWidth(width: Integer); virtual;
        procedure setHeight(height: Integer); virtual;
  end;

implementation
uses
  SWTUtil, SWTBlackPaintable, GameLayerUtil, BasicColorFactory, NullPaintable, ForcedLogUtil, EventStrings, BasicArrayListD;


{AB:CODE}

procedure TAllBinaryGameLayer.InitFields;
begin
  Self.commonStrings := TCommonStrings.getInstance();
  Self.basicSetColorUtil := TBasicColorSetUtil.getInstance();
  Self.RED := TBasicColorFactory.getInstance().RED;
  Self.paintable := TAllBinaryGameLayer.createPaintable();
  Self.gameKeyEventList := TBasicArrayListD.Create();
end;

function TAllBinaryGameLayer.JavaObject: TObject;
begin
  Result := Self;
end;
    

class function TAllBinaryGameLayer.createPaintable: TPaintable;
begin
        if TSWTUtil.isSWT then begin
            Exit(TSWTBlackPaintable.Create());
        end;
        Exit(TNullPaintable.getInstance());
end;
    

constructor TAllBinaryGameLayer.Create(name: string; layerInfo: TRectangle; viewPosition: TViewPositionBase);
begin
        inherited Create(name, layerInfo, viewPosition);
        InitFields;
end;
    

// throws Exception
procedure TAllBinaryGameLayer.set_(gl_: IGL);
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

procedure TAllBinaryGameLayer.move;
begin
end;
    

function TAllBinaryGameLayer.getGameKeyEventList: TBasicArrayList;
begin
        Exit(Self.gameKeyEventList);
end;
    

// throws Exception
procedure TAllBinaryGameLayer.processInput(allBinaryLayerManager_: TAllBinaryLayerManager);
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

// throws Exception
procedure TAllBinaryGameLayer.processTick(allBinaryLayerManager_: TAllBinaryLayerManager);
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

procedure TAllBinaryGameLayer.onEvent(eventObject: TAllBinaryEventObject);
begin
        TForcedLogUtil.log(TEventStrings.getInstance().PERFORMANCE_MESSAGE, TJava.Box(Self));
end;
    

// throws Exception
procedure TAllBinaryGameLayer.onViewPositionChangeEvent;
begin
        Self.onChangeEvent(Self.viewPositionEvent);
end;
    

// throws Exception
procedure TAllBinaryGameLayer.onChangeEvent(layerManagerEvent: TViewPositionEvent);
begin
        if TGameLayerUtil.isOnScreen(Self) then begin
            Self.setVisible(True);
        end else begin
            Self.setVisible(False);
        end;
end;
    

procedure TAllBinaryGameLayer.paintFirst(graphics_: TGraphics);
begin
        Self.paintable.paint(graphics_);
end;
    

procedure TAllBinaryGameLayer.paintDebug(graphics_: TGraphics);
var
  viewPosition: TViewPositionBase;
  viewX: Integer;
  viewY: Integer;
begin
        viewPosition := Self.getViewPosition();
        viewX := viewPosition.getX();
        viewY := viewPosition.getY();
        Self.basicSetColorUtil.setBasicColorP(graphics_, Self.RED);
        graphics_.drawRect(viewX, viewY, Self.getWidth(), Self.getHeight());
end;
    

procedure TAllBinaryGameLayer.setWidth(width: Integer);
begin
        inherited setLayerWidth(width);
        Self.setHalfWidth(TJava.SignedRightShift(width, 1));
end;
    

procedure TAllBinaryGameLayer.setHeight(height: Integer);
begin
        inherited setLayerHeight(height);
        Self.setHalfHeight(TJava.SignedRightShift(height, 1));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

