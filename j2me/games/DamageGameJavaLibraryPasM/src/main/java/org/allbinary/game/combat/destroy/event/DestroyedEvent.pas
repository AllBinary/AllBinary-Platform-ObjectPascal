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
// package org.allbinary.game.combat.destroy.event
unit DestroyedEvent;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryGameCanvas, AllBinaryLayer, AllBinaryEventObject;

type
  {AB:TYPES}
  TDestroyedEvent = class(TAllBinaryEventObject)
  public
    allBinaryGameCanvas: TAllBinaryGameCanvas;
    allBinaryLayerInterface: TAllBinaryLayer;
    procedure InitFields;
        constructor Create(combatGameCanvas: TAllBinaryGameCanvas);
        function getAllBinaryGameCanvas: TAllBinaryGameCanvas; virtual;
        function getLayerInterface: TAllBinaryLayer; virtual;
        procedure setAllBinaryGameCanvas(allBinaryGameCanvas_: TAllBinaryGameCanvas);
        procedure setLayerInterfaceForCircularStaticPool(allBinaryLayerInterface: TAllBinaryLayer); virtual;
        function toString: string; override;
  end;

implementation
uses
  DestroyedEventHandler, NullGameCanvas, StringMaker, StringUtil;


{AB:CODE}

procedure TDestroyedEvent.InitFields;
begin
  Self.allBinaryGameCanvas := TNullGameCanvas.getInstance();
  Self.allBinaryLayerInterface := TAllBinaryLayer.NULL_ALLBINARY_LAYER;
end;
    

constructor TDestroyedEvent.Create(combatGameCanvas: TAllBinaryGameCanvas);
begin
        inherited Create(TDestroyedEventHandler.getInstance());
        InitFields;
        Self.setAllBinaryGameCanvas(combatGameCanvas);
end;
    

function TDestroyedEvent.getAllBinaryGameCanvas: TAllBinaryGameCanvas;
begin
        Exit(Self.allBinaryGameCanvas);
end;
    

function TDestroyedEvent.getLayerInterface: TAllBinaryLayer;
begin
        Exit(Self.allBinaryLayerInterface);
end;
    

procedure TDestroyedEvent.setAllBinaryGameCanvas(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
        Self.allBinaryGameCanvas := allBinaryGameCanvas_;
end;
    

procedure TDestroyedEvent.setLayerInterfaceForCircularStaticPool(allBinaryLayerInterface: TAllBinaryLayer);
begin
        Self.allBinaryLayerInterface := allBinaryLayerInterface;
end;
    

function TDestroyedEvent.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('DestroyedEvent: '#10'');
        stringBuffer.append('AllBinaryLayerInterface: ');
        stringBuffer.append(Self.allBinaryLayerInterface.toString());
        stringBuffer.append(''#10'AllBinaryGameCanvas: ');
        stringBuffer.append(TStringUtil.getInstance().toString(Self.getAllBinaryGameCanvas()));
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

