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
// package org.allbinary.input
unit AllBinarySensorManager;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList;

type
  {AB:TYPES}
  TAllBinarySensorManager = class(TObject)
  public
    ORIENTATION_SENSOR_INPUT: string;
    ORIENTATION_TYPE: string;
    list: TBasicArrayList;
    class var instance: TObject;
    procedure InitFields;
        class function getInstance: TAllBinarySensorManager; static;
        constructor Create;
        procedure init; virtual;
        function getSensorNamesList: TBasicArrayList; virtual;
        procedure shutdown; virtual;
  end;

implementation
uses
  NullUtil, BasicArrayListD;


{AB:CODE}

procedure TAllBinarySensorManager.InitFields;
begin
  Self.ORIENTATION_SENSOR_INPUT := 'Orientation Sensor Input';
  Self.ORIENTATION_TYPE := 'Orientation Type';
  Self.list := TBasicArrayListD.Create();
end;
    

class function TAllBinarySensorManager.getInstance: TAllBinarySensorManager;
begin
        if (TAllBinarySensorManager.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TAllBinarySensorManager.instance := TAllBinarySensorManager.Create();
        end;
        Exit(TAllBinarySensorManager(TJava.ToObject(TAllBinarySensorManager.instance)));
end;
    

constructor TAllBinarySensorManager.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TAllBinarySensorManager.init;
begin
end;
    

function TAllBinarySensorManager.getSensorNamesList: TBasicArrayList;
begin
        Exit(Self.list);
end;
    

procedure TAllBinarySensorManager.shutdown;
begin
end;

initialization
  {AB:INITIALIZATION}
  TAllBinarySensorManager.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

