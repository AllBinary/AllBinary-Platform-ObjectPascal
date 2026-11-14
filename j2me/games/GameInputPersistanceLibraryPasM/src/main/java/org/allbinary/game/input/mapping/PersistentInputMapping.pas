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
// package org.allbinary.game.input.mapping
unit PersistentInputMapping;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Input, InputPersistance, InputMappingEvent, InputMappingEventListenerInterface, LogUtil, AbeClientInformationInterface, CommonStrings, EnumerationUtil, InputToGameKeyMapping;

type
  {AB:TYPES}
  // GameInputPersistanceLibrary
  TPersistentInputMapping = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    enumerationUtil: TEnumerationUtil;
    inputMapping: TInputToGameKeyMapping;
    inputMappingEventListenerInterface: IInputMappingEventListenerInterface;
    inputPersistance: TInputPersistance;
    inputMappingEvent: TInputMappingEvent;
    class var instance: TObject;
    procedure InitFields;
        class function getNullInstance: TPersistentInputMapping; static;
        constructor Create(name: string);
        function getTotalMapped: Integer; virtual;
        function isDefaultNew: Boolean; virtual;
        function getDefault: TInputToGameKeyMapping; virtual;
        procedure setDefault(abeClientInformation: IAbeClientInformationInterface); virtual;
        procedure update(abeClientInformation: IAbeClientInformationInterface); virtual;
        procedure save(abeClientInformation: IAbeClientInformationInterface); virtual;
        procedure init(abeClientInformation: IAbeClientInformationInterface); virtual;
        procedure setInputMappingEventListenerInterface(inputMappingEventListenerInterface_: IInputMappingEventListenerInterface); virtual;
        function getInputMappingEventListenerInterface: IInputMappingEventListenerInterface;
        function getInputMapping: TInputToGameKeyMapping; virtual;
        function isDelete(input_: TInput): Boolean; virtual;
        function isSystemInput(input_: TInput): Boolean; virtual;
  end;

implementation
uses
  GamePersistanceStrings, NullInputMappingEventListener, NullUtil, PreLogUtil, StringMaker, ABHashtable, BasicArrayList;


{AB:CODE}

procedure TPersistentInputMapping.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.enumerationUtil := TEnumerationUtil.getInstance();
  Self.inputMapping := TInputToGameKeyMapping.Create();
  Self.inputMappingEventListenerInterface := TNullInputMappingEventListener.NULL_INPUT_MAPPING_EVENT_LISTENER;
  
  Self.inputMappingEvent := TInputMappingEvent.Create(TJava.Box(Self));
end;
    

class function TPersistentInputMapping.getNullInstance: TPersistentInputMapping;
begin
        if (TPersistentInputMapping.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TPersistentInputMapping.instance := TPersistentInputMapping.Create(TGamePersistanceStrings.getInstance().SAVED_INPUT_CONFIGURATION_RECORD_ID);
        end;
        Exit(TPersistentInputMapping(TJava.ToObject(TPersistentInputMapping.instance)));
end;
    

constructor TPersistentInputMapping.Create(name: string);
begin
    inherited Create;
    InitFields;
        Self.inputPersistance := TInputPersistance.Create(name);
end;
    

function TPersistentInputMapping.getTotalMapped: Integer;
begin
        Exit(Self.getInputMapping().getHashtable().size());
end;
    

function TPersistentInputMapping.isDefaultNew: Boolean;
begin
        Exit(False);
end;
    

function TPersistentInputMapping.getDefault: TInputToGameKeyMapping;
begin
        Exit(TInputToGameKeyMapping.getNullInstance());
end;
    

// throws Exception
procedure TPersistentInputMapping.setDefault(abeClientInformation: IAbeClientInformationInterface);
begin
        Self.getInputMapping().removeAll();
        Self.getInputMapping().addMapping(Self.getDefault());
        Self.save(abeClientInformation);
end;
    

// throws Exception
procedure TPersistentInputMapping.update(abeClientInformation: IAbeClientInformationInterface);
begin
        Self.inputPersistance.deleteAll(abeClientInformation);
        Self.save(abeClientInformation);
end;
    

// throws Exception
procedure TPersistentInputMapping.save(abeClientInformation: IAbeClientInformationInterface);
begin
        Self.inputPersistance.save(abeClientInformation, Self.getInputMapping().getHashtable());
        Self.inputMappingEvent.setInputToGameKeyMapping(Self.getInputMapping());
        if (Self.getInputMappingEventListenerInterface()) <> (nil) then begin
            Self.getInputMappingEventListenerInterface().onInputMappingEvent(Self.inputMappingEvent);
        end;
end;
    

// throws Exception
procedure TPersistentInputMapping.init(abeClientInformation: IAbeClientInformationInterface);
var
  list: TBasicArrayList;
  totalMappedTo: Integer;
  size: Integer;
  hashtable: TABHashtable<TObject, TObject>;
  enumeration: TObject;
  mappedToInput: TInput;
  gameActionInput: TInput;
  index: Integer;
  stringBuffer: TStringMaker;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.INIT);
        try
            Self.inputPersistance.loadAll(abeClientInformation);
        except
            on e: SysUtils.Exception do begin
            TPreLogUtil.putOE(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.INIT, TJava.Box(e));
            Self.inputPersistance.deleteRecoreStore(abeClientInformation);
            Self.setDefault(abeClientInformation);
            Self.inputPersistance.loadAll(abeClientInformation);
            end;
        end;
        list := Self.inputPersistance.getList();
        totalMappedTo := 0;
        size := list.size();
        
        
        
        
        for index := 0 to size - 1 do begin
            hashtable := TABHashtable<TObject, TObject>(TJava.ToObject(list.objectArray[index]));
            enumeration := hashtable.keys();
            while Self.enumerationUtil.hasMoreElements(enumeration) do begin
                mappedToInput := TInput(TJava.ToObject(Self.enumerationUtil.nextElement(enumeration)));
                gameActionInput := TInput(TJava.ToObject(hashtable.get(TJava.Box(mappedToInput))));
                Inc(totalMappedTo);
                Self.getInputMapping().add(gameActionInput, mappedToInput);
            end;
        end;
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('End - Total Loaded Keys Mapped: ');
        stringBuffer.appendint(Self.getTotalMapped());
        stringBuffer.append(' to: ');
        stringBuffer.appendint(totalMappedTo);
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.commonStrings.INIT);
end;
    

procedure TPersistentInputMapping.setInputMappingEventListenerInterface(inputMappingEventListenerInterface_: IInputMappingEventListenerInterface);
begin
        Self.inputMappingEventListenerInterface := inputMappingEventListenerInterface_;
end;
    

function TPersistentInputMapping.getInputMappingEventListenerInterface: IInputMappingEventListenerInterface;
begin
        Exit(Self.inputMappingEventListenerInterface);
end;
    

function TPersistentInputMapping.getInputMapping: TInputToGameKeyMapping;
begin
        Exit(Self.inputMapping);
end;
    

// throws Exception
function TPersistentInputMapping.isDelete(input_: TInput): Boolean;
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

// throws Exception
function TPersistentInputMapping.isSystemInput(input_: TInput): Boolean;
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;

initialization
  {AB:INITIALIZATION}
  TPersistentInputMapping.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

