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
// package org.allbinary.game.configuration
unit GameConfiguration;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TGameConfiguration = class(TObject)
  public
    name: string;
    defaultValue: Integer;
    value: Integer;
    minValue: Integer;
    maxValue: Integer;
    modifiable: Boolean;
    class var MIN_VALUE: Integer;
    procedure InitFields;
        constructor Create(name: string; defaultValue: Integer; minValue: Integer; maxValue: Integer);
        procedure setValue(value: Integer); virtual;
        function getValue: Integer; virtual;
        procedure setMaxValue(maxValue: Integer); virtual;
        function getMaxValue: Integer; virtual;
        procedure setMinValue(minValue: Integer); virtual;
        function getMinValue: Integer; virtual;
        procedure setName(name: string); virtual;
        function getName: string; virtual;
        procedure setDefaultValue(defaultValue: Integer); virtual;
        function getDefaultValue: Integer; virtual;
        procedure setDefault; virtual;
        function toString: string; virtual;
        procedure setModifiable(modifiable: Boolean); virtual;
        function isModifiable: Boolean; virtual;
  end;

implementation
uses
  GameConfigurationSingleton, GameFeatureEvent, GameFeatureEventHandler, BooleanFactory, SmallIntegerSingletonFactory, StringMaker, StringUtil;


{AB:CODE}

procedure TGameConfiguration.InitFields;
begin
  Self.name := TStringUtil.getInstance().EMPTY_STRING;
  Self.defaultValue := TSmallIntegerSingletonFactory.getInstance().getAt(0);
  Self.value := TGameConfiguration.MIN_VALUE;
  Self.minValue := Self.defaultValue;
  Self.maxValue := Self.defaultValue;
  Self.modifiable := TBooleanFactory.getInstance().TRUE_;
end;
    

constructor TGameConfiguration.Create(name: string; defaultValue: Integer; minValue: Integer; maxValue: Integer);
begin
    inherited Create;
    InitFields;
        Self.setName(name);
        Self.setDefaultValue(defaultValue);
        Self.value := Self.getDefaultValue();
        Self.setMinValue(minValue);
        Self.setMaxValue(maxValue);
        TGameConfigurationSingleton.getInstance().getHashtable().put(TJava.Box(Self.getName()), TJava.Box(Self));
end;
    

// throws Exception
procedure TGameConfiguration.setValue(value: Integer);
var
  oldValue: Integer;
begin
        if (Self.value) <> (value) then begin
            oldValue := Self.value;
            Self.value := value;
            TGameFeatureEventHandler.getInstance().fireEvent(TGameFeatureEvent.Create(TJava.Box(Self), TStringMaker.Create().append(Self.name).append(' value: from: ').appendint((oldValue)).append(' to ').appendint((Self.value)).toString()));
        end;
end;
    

function TGameConfiguration.getValue: Integer;
begin
        Exit(Self.value);
end;
    

procedure TGameConfiguration.setMaxValue(maxValue: Integer);
begin
        Self.maxValue := maxValue;
end;
    

function TGameConfiguration.getMaxValue: Integer;
begin
        Exit(Self.maxValue);
end;
    

procedure TGameConfiguration.setMinValue(minValue: Integer);
begin
        Self.minValue := minValue;
end;
    

function TGameConfiguration.getMinValue: Integer;
begin
        Exit(Self.minValue);
end;
    

procedure TGameConfiguration.setName(name: string);
begin
        Self.name := name;
end;
    

function TGameConfiguration.getName: string;
begin
        Exit(Self.name);
end;
    

procedure TGameConfiguration.setDefaultValue(defaultValue: Integer);
begin
        Self.defaultValue := defaultValue;
end;
    

function TGameConfiguration.getDefaultValue: Integer;
begin
        Exit(Self.defaultValue);
end;
    

// throws Exception
procedure TGameConfiguration.setDefault;
begin
        Self.setValue(Self.getDefaultValue());
end;
    

function TGameConfiguration.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('Name: ');
        stringBuffer.append(Self.name);
        stringBuffer.append(' Min: ');
        stringBuffer.appendint((Self.getMinValue()));
        stringBuffer.append(' Max: ');
        stringBuffer.appendint((Self.getMaxValue()));
        stringBuffer.append(' Value: ');
        stringBuffer.appendint((Self.getValue()));
        stringBuffer.append(' Default: ');
        stringBuffer.appendint((Self.getDefaultValue()));
        stringBuffer.append(' Modifiable: ');
        stringBuffer.appendboolean((Self.isModifiable()));
        Exit(stringBuffer.toString());
end;
    

procedure TGameConfiguration.setModifiable(modifiable: Boolean);
begin
        Self.modifiable := modifiable;
end;
    

function TGameConfiguration.isModifiable: Boolean;
begin
        Exit(Self.modifiable);
end;

initialization
  {AB:INITIALIZATION}
  TGameConfiguration.MIN_VALUE := Low(Integer);
  {AB:END}

end.

