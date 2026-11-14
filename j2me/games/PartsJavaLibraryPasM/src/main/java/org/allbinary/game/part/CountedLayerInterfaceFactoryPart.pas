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
// package org.allbinary.game.part
unit CountedLayerInterfaceFactoryPart;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Animation, CountedPickedUpLayerInterfaceFactory, MyFontProcessor, UpdateMyFontInterface, AllBinaryLayer, PrimitiveLongUtil, ABHashtable, PartInterface, AnimationInterfaceCompositeInterface, PaintableInterface;

type
  {AB:TYPES}
  TCountedLayerInterfaceFactoryPart = class(TInterfacedObject, IPartInterface, IUpdateMyFontInterface, IAnimationInterfaceCompositeInterface, IPaintableInterface)
  public
    updateMyFontProcessor: TMyFontProcessor;
    myFontProcessor: TMyFontProcessor;
    animationInterface: TAnimation;
    total: Integer;
    totalString: TArray<WideChar>;
    xOffset: Integer;
    countedPickedUpLayerInterfaceFactory: TCountedPickedUpLayerInterfaceFactory;
    primitiveLongUtil: TPrimitiveLongUtil;
    class var NULL_COUNTED_LAYER_INTERFACE_FACTORY: TCountedLayerInterfaceFactoryPart;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(total: Integer; countedPickedUpLayerInterfaceFactory_: TCountedPickedUpLayerInterfaceFactory);
        procedure updateMeasurement(graphics_: TGraphics); virtual;
        procedure init(total: Integer; countedPickedUpLayerInterfaceFactory_: TCountedPickedUpLayerInterfaceFactory);
        function getInstance(hashtable: TABHashtable<TObject, TObject>; x: Integer; y: Integer; z: Integer): TAllBinaryLayer; virtual;
        function getTotal: Integer; virtual;
        procedure setTotal(total: Integer); virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure paintThreed(graphics_: TGraphics); virtual;
        function getAnimationInterface: TAnimation; virtual;
        procedure setAnimationInterface(animationInterface: TAnimation); virtual;
        function getXOffset: Integer; virtual;
        procedure setXOffset(totalStringWidth: Integer);
        function getTotalString: TArray<WideChar>; virtual;
        function getCountedPickedUpLayerInterfaceFactory: TCountedPickedUpLayerInterfaceFactory; virtual;
        procedure setCountedPickedUpLayerInterfaceFactory(countedPickedUpLayerInterfaceFactory_: TCountedPickedUpLayerInterfaceFactory); virtual;
  end;

implementation
uses
  Font, NullAnimationFactory, UpdateMyFontProcessor, NullUtil;


{AB:CODE}

procedure TCountedLayerInterfaceFactoryPart.InitFields;
begin
  Self.updateMyFontProcessor := TUpdateMyFontProcessor.Create(Self);
  Self.myFontProcessor := Self.updateMyFontProcessor;
  Self.animationInterface := TNullAnimationFactory.getFactoryInstance().getInstance(0);
  
  Self.totalString := TNullUtil.getInstance().NULL_CHAR_ARRAY;
  
  Self.countedPickedUpLayerInterfaceFactory := TCountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY;
  
end;

function TCountedLayerInterfaceFactoryPart.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCountedLayerInterfaceFactoryPart.Create(total: Integer; countedPickedUpLayerInterfaceFactory_: TCountedPickedUpLayerInterfaceFactory);
begin
    inherited Create;
    InitFields;
        Self.primitiveLongUtil := TPrimitiveLongUtil.createPowerOfTen(1000);
        Self.init(total, countedPickedUpLayerInterfaceFactory_);
end;
    

procedure TCountedLayerInterfaceFactoryPart.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
begin
        font_ := graphics_.getFont();
        Self.setXOffset((font_.charsWidth(Self.totalString, 0, Self.primitiveLongUtil.getCurrentTotalDigits())) + ((TJava.SignedRightShift(font_.getSize(), 1))));
        Self.myFontProcessor := TMyFontProcessor.getInstance();
end;
    

procedure TCountedLayerInterfaceFactoryPart.init(total: Integer; countedPickedUpLayerInterfaceFactory_: TCountedPickedUpLayerInterfaceFactory);
begin
        Self.setCountedPickedUpLayerInterfaceFactory(countedPickedUpLayerInterfaceFactory_);
        Self.total := total;
end;
    

// throws Exception
function TCountedLayerInterfaceFactoryPart.getInstance(hashtable: TABHashtable<TObject, TObject>; x: Integer; y: Integer; z: Integer): TAllBinaryLayer;
begin
        if (Self.total) > (0) then begin
            Self.setTotal((Self.total) - (1));
            Exit(Self.getCountedPickedUpLayerInterfaceFactory().getNextInstance(hashtable, x, y, z));
        end else begin
            raise SysUtils.Exception.Create('No more left. Could use a listener to automatically remove');
        end;
end;
    

function TCountedLayerInterfaceFactoryPart.getTotal: Integer;
begin
        Exit(Self.total);
end;
    

procedure TCountedLayerInterfaceFactoryPart.setTotal(total: Integer);
begin
        Self.total := total;
        Self.totalString := Self.primitiveLongUtil.getCharArray(total);
        Self.myFontProcessor := Self.updateMyFontProcessor;
end;
    

procedure TCountedLayerInterfaceFactoryPart.paint(graphics_: TGraphics);
begin
        Self.myFontProcessor.process(graphics_);
end;
    

procedure TCountedLayerInterfaceFactoryPart.paintThreed(graphics_: TGraphics);
begin
end;
    

function TCountedLayerInterfaceFactoryPart.getAnimationInterface: TAnimation;
begin
        Exit(Self.animationInterface);
end;
    

procedure TCountedLayerInterfaceFactoryPart.setAnimationInterface(animationInterface: TAnimation);
begin
        Self.animationInterface := animationInterface;
end;
    

function TCountedLayerInterfaceFactoryPart.getXOffset: Integer;
begin
        Exit(Self.xOffset);
end;
    

procedure TCountedLayerInterfaceFactoryPart.setXOffset(totalStringWidth: Integer);
begin
        Self.xOffset := totalStringWidth;
end;
    

function TCountedLayerInterfaceFactoryPart.getTotalString: TArray<WideChar>;
begin
        Exit(Self.totalString);
end;
    

function TCountedLayerInterfaceFactoryPart.getCountedPickedUpLayerInterfaceFactory: TCountedPickedUpLayerInterfaceFactory;
begin
        Exit(Self.countedPickedUpLayerInterfaceFactory);
end;
    

procedure TCountedLayerInterfaceFactoryPart.setCountedPickedUpLayerInterfaceFactory(countedPickedUpLayerInterfaceFactory_: TCountedPickedUpLayerInterfaceFactory);
begin
        Self.countedPickedUpLayerInterfaceFactory := countedPickedUpLayerInterfaceFactory_;
end;

initialization
  {AB:INITIALIZATION}
  TCountedLayerInterfaceFactoryPart.NULL_COUNTED_LAYER_INTERFACE_FACTORY := TCountedLayerInterfaceFactoryPart.Create(0, TCountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY);
  {AB:END}

end.

