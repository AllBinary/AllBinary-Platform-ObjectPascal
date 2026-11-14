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
// package org.allbinary.game.input
unit InputPersistance;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TsUtil, BasicPersitance, AbeClientInformationInterface, HashtableUtil, ABHashtable;

type
  {AB:TYPES}
  // GameInputPersistanceLibrary
  TInputPersistance = class(TBasicPersitance)
  public
    tsUtil: TTsUtil;
    hashtableUtil: THashtableUtil;
    procedure InitFields;
        constructor Create(name: string);
        procedure loadAll(abeClientInformation: IAbeClientInformationInterface); virtual;
        procedure save(abeClientInformation: IAbeClientInformationInterface; hashtable: TABHashtable<TObject, TObject>); virtual;
  end;

implementation
uses
  Input, GameKeyMappingFactory, InputFactory, RecordEnumeration, RecordStore, NullRecordComparator, NullRecordFilter, NullRecordStore, PreLogUtil, SmallIntegerSingletonFactory, StringMaker, StringUtil, CommonSeps, BasicArrayList, StdUtil;


{AB:CODE}

procedure TInputPersistance.InitFields;
begin
  Self.tsUtil := TTsUtil.getInstance();
  Self.hashtableUtil := THashtableUtil.getInstance();
end;
    

constructor TInputPersistance.Create(name: string);
begin
        inherited Create(name);
        InitFields;
end;
    

// throws Exception
procedure TInputPersistance.loadAll(abeClientInformation: IAbeClientInformationInterface);
var
  recordStore_: TRecordStore;
  recordEnum: IRecordEnumeration;
  gameActionInputId: Int64;
  inputId: Int64;
  gameActionInput: TInput;
  input_: TInput;
  hashtable: TABHashtable<TObject, TObject>;
  gameKeyFactory: TGameKeyMappingFactory;
  stringBuffer: TStringMaker;
  inputFactory_: TInputFactory;
  smallIntegerSingletonFactory_: TSmallIntegerSingletonFactory;
  stdUtil_: TStdUtil;
  recordAsBytes: TArray<ShortInt>;
  byteArrayInputStream_: TByteArrayInputStream;
  inputStream: TDataInputStream;
  id: Integer;
  value: Integer;
  gameActionInputIdAsString: string;
begin
        recordStore_ := TNullRecordStore.NULL_RECORD_STORE;
        try
        try
            recordStore_ := TRecordStore.openRecordStore(Self.getRecordId(abeClientInformation), True);
            recordEnum := recordStore_.enumerateRecords(TNullRecordFilter.NULL_RECORD_FILTER, TNullRecordComparator.NULL_RECORD_COMPARATOR, True);
            
            
            
            
            
            gameKeyFactory := TGameKeyMappingFactory.getInstance();
            stringBuffer := TStringMaker.Create();
            inputFactory_ := TInputFactory.getInstance();
            smallIntegerSingletonFactory_ := TSmallIntegerSingletonFactory.getInstance();
            stdUtil_ := TStdUtil.getInstance();
            
            
            
            while recordEnum.hasNextElement() do begin
                id := recordEnum.nextRecordId();
                stringBuffer.delete_(0, stringBuffer.length());
                Self.logUtil.putF(stringBuffer.append(Self.persistanceStrings.LOADING_ID).appendint(id).toString(), TJava.Box(Self), Self.persistanceStrings.LOAD_ALL);
                recordAsBytes := Self.tsUtil.getRecord(TJava.Box(recordStore_), id);
                if (recordAsBytes) <> (nil) then begin
                    byteArrayInputStream_ := TByteArrayInputStream.Create(recordAsBytes);
                    inputStream := TDataInputStream.Create(byteArrayInputStream_);
                    hashtable := stdUtil_.createHashtable();
                    
                    while (inputStream.available()) > (0) do begin
                        gameActionInputIdAsString := inputStream.readUTF();
                        value := StrToInt(gameActionInputIdAsString);
                        gameActionInputId := Int64(value);
                        inputStream.readUTF();
                        value := StrToInt(inputStream.readUTF());
                        inputId := Int64(value);
                        gameActionInput := gameKeyFactory.getGameKey(Integer(gameActionInputId));
                        input_ := inputFactory_.getInstanceById(Integer(inputId));
                        if ((input_) = (inputFactory_.NO_INPUT)) or ((gameActionInput) = (nil)) then begin
                            stringBuffer.delete_(0, stringBuffer.length());
                            if (input_) = (inputFactory_.NO_INPUT) then begin
                                stringBuffer.append(Self.persistanceStrings.ERROR_LOADING_ID);
                                stringBuffer.appendlong(inputId);
                                stringBuffer.append(Self.persistanceStrings.GAME_ACTION_INPUT);
                                stringBuffer.appendlong(gameActionInputId);
                                TPreLogUtil.put(stringBuffer.toString(), TJava.Box(Self), Self.persistanceStrings.LOAD_ALL);
                            end;
                            if (gameActionInput) = (nil) then begin
                                stringBuffer.delete_(0, stringBuffer.length());
                                stringBuffer.append(Self.persistanceStrings.ERROR_LOADING);
                                stringBuffer.appendlong(gameActionInputId);
                                stringBuffer.append(Self.persistanceStrings.ID);
                                stringBuffer.appendlong(inputId);
                                TPreLogUtil.put(stringBuffer.toString(), TJava.Box(Self), Self.persistanceStrings.LOAD_ALL);
                            end;
                        end else begin
                        end;
                        hashtable.put(TJava.Box(input_), TJava.Box(gameActionInput));
                    end;
                    Self.valueList.add(TJava.Box(hashtable));
                    Self.idList.add(TJava.Box(smallIntegerSingletonFactory_.getAt(id)));
                end else begin
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
        finally
            if (recordStore_) <> (nil) then begin
                TPreLogUtil.put(Self.persistanceStrings.CLOSING_RECORDSTORE, TJava.Box(Self), Self.persistanceStrings.LOAD_ALL);
                recordStore_.closeRecordStore();
            end;
        end;
end;
    

// throws Exception
procedure TInputPersistance.save(abeClientInformation: IAbeClientInformationInterface; hashtable: TABHashtable<TObject, TObject>);
var
  recordStore_: TRecordStore;
  stringBuffer: TStringMaker;
  byteArrayOutputStream: TByteArrayOutputStream;
  outputStream: TDataOutputStream;
  gameActionInput: TInput;
  list: TBasicArrayList;
  input_: TInput;
  savedGameBytes: TArray<ShortInt>;
  commonSeps_: TCommonSeps;
  smallIntegerSingletonFactory_: TSmallIntegerSingletonFactory;
  inputObjectArray: TArray<TObject>;
  size: Integer;
  gameActionInputIdAsString: string;
  inputIdAsString: string;
  index2: Integer;
  index: Integer;
begin
        recordStore_ := TNullRecordStore.NULL_RECORD_STORE;
        try
        try
            stringBuffer := TStringMaker.Create();
            TPreLogUtil.put(stringBuffer.append(Self.persistanceStrings.SAVING).append(TStringUtil.getInstance().toString(hashtable)).toString(), TJava.Box(Self), Self.commonStrings.SAVE);
            recordStore_ := TRecordStore.openRecordStore(Self.getRecordId(abeClientInformation), True);
            byteArrayOutputStream := TByteArrayOutputStream.Create;
            outputStream := TDataOutputStream.Create(byteArrayOutputStream);
            
            
            
            
            commonSeps_ := TCommonSeps.getInstance();
            smallIntegerSingletonFactory_ := TSmallIntegerSingletonFactory.getInstance();
            inputObjectArray := Self.hashtableUtil.getKeysAsArray(hashtable);
            size := System.Length(inputObjectArray);
            for index := 0 to size - 1 do begin
                gameActionInput := TInput(TJava.ToObject(inputObjectArray[index]));
                list := TBasicArrayList(TJava.ToObject(hashtable.get(TJava.Box(TJava.Box(inputObjectArray[index])))));
                for index2 := 0 to list.size() - 1 do begin
                    gameActionInputIdAsString := smallIntegerSingletonFactory_.getAt(Integer(Trunc(gameActionInput.getId()))).toString();
                    outputStream.writeUTF(gameActionInputIdAsString);
                    outputStream.writeUTF(commonSeps_.EQUALS);
                    input_ := TInput(TJava.ToObject(list.objectArray[index2]));
                    inputIdAsString := smallIntegerSingletonFactory_.getAt(Integer(Trunc(input_.getId()))).toString();
                    outputStream.writeUTF(inputIdAsString);
                end;
            end;
            savedGameBytes := byteArrayOutputStream.toByteArray();
            recordStore_.addRecord(savedGameBytes, 0, System.Length(savedGameBytes));
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
        finally
            if (recordStore_) <> (nil) then begin
                TPreLogUtil.put(Self.persistanceStrings.CLOSING_RECORDSTORE, TJava.Box(Self), Self.commonStrings.SAVE);
                recordStore_.closeRecordStore();
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

