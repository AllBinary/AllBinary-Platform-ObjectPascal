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
// package org.allbinary.game.layer.weapon
unit WeaponLayerArrayLayerCircularStaticPool;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CircularIndexUtil, WeaponLayer;

type
  {AB:TYPES}
  TWeaponLayerArrayLayerCircularStaticPool = class(TObject)
  public
    MAX: Integer;
    circularIndexUtil: TCircularIndexUtil;
    WEAPONLAYER_ARRAY: TArray<TArray<TWeaponLayer>>;
    TWO_WEAPONLAYER_ARRAY: TArray<TArray<TWeaponLayer>>;
    THREE_WEAPONLAYER_ARRAY: TArray<TArray<TWeaponLayer>>;
    class var instance: TWeaponLayerArrayLayerCircularStaticPool;
    procedure InitFields;
    constructor Create;
        class function getInstance: TWeaponLayerArrayLayerCircularStaticPool; static;
        procedure init; virtual;
        function getWeaponLayerArrays(size: Integer): TArray<TArray<TWeaponLayer>>;
        function getInstanceArray(size: Integer): TArray<TWeaponLayer>; virtual;
  end;

implementation

{AB:CODE}

procedure TWeaponLayerArrayLayerCircularStaticPool.InitFields;
begin
  Self.MAX := 5;
  Self.circularIndexUtil := TCircularIndexUtil.createInstance(Self.MAX);
  
  
  
end;

constructor TWeaponLayerArrayLayerCircularStaticPool.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TWeaponLayerArrayLayerCircularStaticPool.getInstance: TWeaponLayerArrayLayerCircularStaticPool;
begin
        Exit(TWeaponLayerArrayLayerCircularStaticPool.instance);
end;
    

procedure TWeaponLayerArrayLayerCircularStaticPool.init;
var
  WEAPONLAYER_ARRAY: TArray<TArray<TWeaponLayer>>;
  TWO_WEAPONLAYER_ARRAY: TArray<TArray<TWeaponLayer>>;
  THREE_WEAPONLAYER_ARRAY: TArray<TArray<TWeaponLayer>>;
  index: Integer;
begin
        WEAPONLAYER_ARRAY := TJava.NewArray2<TWeaponLayer>((Self.MAX) * (2), 0);
        TWO_WEAPONLAYER_ARRAY := TJava.NewArray2<TWeaponLayer>(Self.MAX, 0);
        THREE_WEAPONLAYER_ARRAY := TJava.NewArray2<TWeaponLayer>(Self.MAX, 0);
        for index := 0 to Self.MAX - 1 do begin
            WEAPONLAYER_ARRAY[index] := TJava.NewArray<TWeaponLayer>(1);
            TWO_WEAPONLAYER_ARRAY[index] := TJava.NewArray<TWeaponLayer>(2);
            THREE_WEAPONLAYER_ARRAY[index] := TJava.NewArray<TWeaponLayer>(3);
        end;
        Self.WEAPONLAYER_ARRAY := WEAPONLAYER_ARRAY;
        Self.TWO_WEAPONLAYER_ARRAY := TWO_WEAPONLAYER_ARRAY;
        Self.THREE_WEAPONLAYER_ARRAY := THREE_WEAPONLAYER_ARRAY;
end;
    

function TWeaponLayerArrayLayerCircularStaticPool.getWeaponLayerArrays(size: Integer): TArray<TArray<TWeaponLayer>>;
begin
        if (size) = (1) then begin
            Exit(Self.WEAPONLAYER_ARRAY);
        end else if (size) = (2) then begin
            Exit(Self.TWO_WEAPONLAYER_ARRAY);
        end else if (size) = (3) then begin
            Exit(Self.THREE_WEAPONLAYER_ARRAY);
        end;
        raise SysUtils.Exception.Create('');
end;
    

// throws Exception
function TWeaponLayerArrayLayerCircularStaticPool.getInstanceArray(size: Integer): TArray<TWeaponLayer>;
var
  weaponLayerArray: TArray<TWeaponLayer>;
begin
        weaponLayerArray := Self.getWeaponLayerArrays(size)[Self.circularIndexUtil.getIndex()];
        Self.circularIndexUtil.next();
        Exit(weaponLayerArray);
end;

initialization
  {AB:INITIALIZATION}
  TWeaponLayerArrayLayerCircularStaticPool.instance := TWeaponLayerArrayLayerCircularStaticPool.Create();
  {AB:END}

end.

