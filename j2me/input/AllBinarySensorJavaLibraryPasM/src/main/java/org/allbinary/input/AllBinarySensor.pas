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
unit AllBinarySensor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings, AllBinarySensorListener;

type
  {AB:TYPES}
  TAllBinarySensor = class(TInterfacedObject, IAllBinarySensorListener)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    class var NULL_ALLBINARY_SENSOR: TAllBinarySensor;
    class var max: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure init; virtual;
        procedure update; virtual;
        class procedure setMax(max: Integer); static;
        class function getMax: Integer; static;
        function getId: Integer; virtual;
        procedure shutdown; virtual;
        procedure onSensorChange; virtual;
  end;

implementation
uses
  ForcedLogUtil;


{AB:CODE}

procedure TAllBinarySensor.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
end;

function TAllBinarySensor.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAllBinarySensor.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TAllBinarySensor.init;
begin
end;
    

// throws Exception
procedure TAllBinarySensor.update;
begin
end;
    

class procedure TAllBinarySensor.setMax(max: Integer);
begin
        TAllBinarySensor.max := max;
end;
    

class function TAllBinarySensor.getMax: Integer;
begin
        Exit(TAllBinarySensor.max);
end;
    

function TAllBinarySensor.getId: Integer;
begin
        Exit(TAllBinarySensor.getMax());
end;
    

procedure TAllBinarySensor.shutdown;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'shutdown');
end;
    

procedure TAllBinarySensor.onSensorChange;
begin
        TForcedLogUtil.log(Self.commonStrings.NOT_IMPLEMENTED, TJava.Box(Self));
end;

initialization
  {AB:INITIALIZATION}
  TAllBinarySensor.NULL_ALLBINARY_SENSOR := TAllBinarySensor.Create();
  TAllBinarySensor.max := 100;
  {AB:END}

end.

