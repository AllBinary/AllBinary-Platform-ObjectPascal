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
// package org.allbinary.game.combat.damage
unit PtsDamageFloaters;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, MyRandomFactory, BasicColorArrayIndexer, BasicColorSetUtil, AllBinaryLayer, PrimitiveLongUtil, CircularIndexUtil, DamageFloaters;

type
  {AB:TYPES}
  TPtsDamageFloaters = class(TDamageFloaters)
  public
    basicSetColorUtil: TBasicColorSetUtil;
    layerInterface: TAllBinaryLayer;
    lastDamage: TArray<Integer>;
    lastDamageString: TArray<TArray<WideChar>>;
    lastDamageStringSizeArray: TArray<Integer>;
    circularIndexUtil: TCircularIndexUtil;
    primitiveLongUtil: TPrimitiveLongUtil;
    myRandomFactory: TMyRandomFactory;
    class var basicColorArrayIndexer: TBasicColorArrayIndexer;
    procedure InitFields;
        constructor Create(layerInterface: TAllBinaryLayer);
        procedure add(damage: Integer); override;
        procedure paint(graphics_: TGraphics); override;
  end;

implementation
uses
  BasicColor, BasicColorFactory, CharArrayFactory, ViewPosition, ViewPositionBase;


{AB:CODE}

procedure TPtsDamageFloaters.InitFields;
begin
  Self.basicSetColorUtil := TBasicColorSetUtil.getInstance();
  
  Self.lastDamage := TJava.NewArray<Integer>(5);
  Self.lastDamageString := TJava.NewArray2<WideChar>(5, 0);
  Self.lastDamageStringSizeArray := TJava.NewArray<Integer>(5);
  Self.circularIndexUtil := TCircularIndexUtil.createInstance(5);
  
  Self.myRandomFactory := TMyRandomFactory.getInstance();
end;
    

constructor TPtsDamageFloaters.Create(layerInterface: TAllBinaryLayer);
var
  CHAR_ARRAY: TArray<WideChar>;
  index: Integer;
begin
    inherited Create;
    InitFields;
        Self.primitiveLongUtil := TPrimitiveLongUtil.createPowerOfTen(100000);
        Self.layerInterface := layerInterface;
        CHAR_ARRAY := TCharArrayFactory.getInstance().getZeroCharArray();
        for index := (System.Length(Self.lastDamageString)) - (1) downto 0 do begin
            Self.lastDamageString[index] := CHAR_ARRAY;
        end;
end;
    

procedure TPtsDamageFloaters.add(damage: Integer);
var
  index: Integer;
begin
        index := Self.circularIndexUtil.getIndex();
        Self.lastDamage[index] := damage;
        Self.lastDamageString[index] := Self.primitiveLongUtil.getCharArray(Self.lastDamage[index]);
        Self.lastDamageStringSizeArray[index] := Self.primitiveLongUtil.getCurrentTotalDigits();
        Self.circularIndexUtil.next();
end;
    

procedure TPtsDamageFloaters.paint(graphics_: TGraphics);
var
  viewPosition: TViewPositionBase;
  x: Integer;
  y: Integer;
  delta: Integer;
  index: Integer;
begin
        viewPosition := Self.layerInterface.getViewPosition();
        x := viewPosition.getX();
        y := viewPosition.getY();
        for index := (System.Length(Self.lastDamage)) - (1) downto 0 do begin
            if (Self.lastDamage[index]) <> (0) then begin
                delta := (10) * (((index) + (2)));
                Self.basicSetColorUtil.setBasicColorP(graphics_, TPtsDamageFloaters.basicColorArrayIndexer.get());
                graphics_.drawChars(Self.lastDamageString[index], 0, Self.lastDamageStringSizeArray[index], (x) - (Self.myRandomFactory.getNextInt(delta)), (y) - (delta), 0);
                TPtsDamageFloaters.basicColorArrayIndexer.next();
            end;
            Self.lastDamage[index] := 0;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TPtsDamageFloaters.basicColorArrayIndexer := TBasicColorArrayIndexer.Create(TArray<TBasicColor>.Create(TBasicColorFactory.getInstance().WHITE, TBasicColorFactory.getInstance().RED, TBasicColorFactory.getInstance().YELLOW, TBasicColorFactory.getInstance().BLUE));
  {AB:END}

end.

