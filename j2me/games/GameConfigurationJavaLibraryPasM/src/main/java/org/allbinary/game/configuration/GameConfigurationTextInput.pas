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
unit GameConfigurationTextInput;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TextField, ABHashtable;

type
  {AB:TYPES}
  TGameConfigurationTextInput = class(TObject)
  public
    label_: string;
    text: string;
    class var hashtable: TABHashtable<TObject, TObject>;
    class var SIMULATOR_IP: TGameConfigurationTextInput;
    class var SIMULATOR_PORT: TGameConfigurationTextInput;
    procedure InitFields;
        constructor Create(label_: string; text: string);
        class procedure update(textField_: TTextField); static;
        procedure setText(text: string); virtual;
        function getText: string; virtual;
        procedure setLabel(label_: string); virtual;
        function getLabel: string; virtual;
        class function getHashtable: TABHashtable<TObject, TObject>; static;
  end;

implementation
uses
  StdUtil, StringUtil;


{AB:CODE}

procedure TGameConfigurationTextInput.InitFields;
begin
  Self.label_ := TStringUtil.getInstance().EMPTY_STRING;
  Self.text := TStringUtil.getInstance().EMPTY_STRING;
end;
    

constructor TGameConfigurationTextInput.Create(label_: string; text: string);
begin
    inherited Create;
    InitFields;
        Self.setText(text);
        Self.setLabel(label_);
        TGameConfigurationTextInput.hashtable.put(TJava.Box(Self.getLabel()), TJava.Box(Self));
end;
    

class procedure TGameConfigurationTextInput.update(textField_: TTextField);
var
  anyType: TObject;
  gameConfigurationTextInput_: TGameConfigurationTextInput;
begin
        anyType := TJava.Box(TJava.Box(textField_.getLabel()));
        gameConfigurationTextInput_ := TGameConfigurationTextInput(TJava.ToObject(TGameConfigurationTextInput.hashtable.get(TJava.Box(anyType))));
        gameConfigurationTextInput_.setText(textField_.getString());
end;
    

procedure TGameConfigurationTextInput.setText(text: string);
begin
        Self.text := text;
end;
    

function TGameConfigurationTextInput.getText: string;
begin
        Exit(Self.text);
end;
    

procedure TGameConfigurationTextInput.setLabel(label_: string);
begin
        Self.label_ := label_;
end;
    

function TGameConfigurationTextInput.getLabel: string;
begin
        Exit(Self.label_);
end;
    

class function TGameConfigurationTextInput.getHashtable: TABHashtable<TObject, TObject>;
begin
        Exit(TGameConfigurationTextInput.hashtable);
end;

initialization
  {AB:INITIALIZATION}
  TGameConfigurationTextInput.hashtable := TStdUtil.getInstance().createHashtable();
  TGameConfigurationTextInput.SIMULATOR_IP := TGameConfigurationTextInput.Create('IP: ', '192.168.1.3');
  TGameConfigurationTextInput.SIMULATOR_PORT := TGameConfigurationTextInput.Create('Port: ', '8010');
  {AB:END}

end.

