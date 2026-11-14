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
// package org.allbinary.game.configuration.persistance
unit KeyValuePersistance;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TsUtil, AbeClientInformationInterface, ABHashtable, BasicPersitance;

type
  {AB:TYPES}
  TKeyValuePersistance = class(TBasicPersitance)
  public
    tsUtil: TTsUtil;
    procedure InitFields;
        constructor Create(recordId: string);
        procedure loadAll(abeClientInformation: IAbeClientInformationInterface); virtual;
        procedure loadAllSize(abeClientInformation: IAbeClientInformationInterface; size: Integer); virtual;
        procedure save(abeClientInformation: IAbeClientInformationInterface; hashtable: TABHashtable<TObject, TObject>); virtual;
        function get(index: Integer): TABHashtable<TObject, TObject>; virtual;
  end;

implementation
uses
  NullRecordStore, NullRecordFilter, NullRecordComparator, RecordEnumeration, RecordStore, PreLogUtil, SmallIntegerSingletonFactory, StringMaker, StringUtil, CommonSeps, HashtableUtil;


{AB:CODE}

procedure TKeyValuePersistance.InitFields;
begin
  Self.tsUtil := TTsUtil.getInstance();
end;
    

constructor TKeyValuePersistance.Create(recordId: string);
begin
        inherited Create(recordId);
        InitFields;
end;
    

// throws Exception
procedure TKeyValuePersistance.loadAll(abeClientInformation: IAbeClientInformationInterface);
begin
        Self.loadAllSize(abeClientInformation, 1);
end;
    

// throws Exception
procedure TKeyValuePersistance.loadAllSize(abeClientInformation: IAbeClientInformationInterface; size: Integer);
var
  recordStore_: TRecordStore;
  recordEnum: IRecordEnumeration;
  hashtable: TABHashtable<string, string>;
  name: string;
  value: string;
  smallIntegerSingletonFactory_: TSmallIntegerSingletonFactory;
  stringBuffer: TStringMaker;
  recordAsBytes: TArray<ShortInt>;
  byteArrayInputStream_: TByteArrayInputStream;
  inputStream: TDataInputStream;
  id: Integer;
  index: Integer;
begin
        recordStore_ := TNullRecordStore.NULL_RECORD_STORE;
        try
        try
            recordStore_ := TRecordStore.openRecordStore(Self.getRecordId(abeClientInformation), True);
            recordEnum := recordStore_.enumerateRecords(TNullRecordFilter.NULL_RECORD_FILTER, TNullRecordComparator.NULL_RECORD_COMPARATOR, True);
            
            
            
            smallIntegerSingletonFactory_ := TSmallIntegerSingletonFactory.getInstance();
            stringBuffer := TStringMaker.Create();
            
            
            
            while recordEnum.hasNextElement() do begin
                id := recordEnum.nextRecordId();
                stringBuffer.delete_(0, stringBuffer.length());
                Self.logUtil.putF(stringBuffer.append(Self.persistanceStrings.LOADING_ID).appendint(id).toString(), TJava.Box(Self), Self.persistanceStrings.LOAD_ALL);
                recordAsBytes := Self.tsUtil.getRecord(TJava.Box(recordStore_), id);
                if (recordAsBytes) <> (nil) then begin
                    byteArrayInputStream_ := TByteArrayInputStream.Create(recordAsBytes);
                    inputStream := TDataInputStream.Create(byteArrayInputStream_);
                    hashtable := TABHashtable<string, string>.Create();
                    for index := 0 to size - 1 do begin
                        name := inputStream.readUTF();
                        inputStream.readUTF();
                        value := inputStream.readUTF();
                        hashtable.put(name, value);
                    end;
                    Self.valueList.add(TJava.Box(hashtable));
                    Self.idList.add(TJava.Box(smallIntegerSingletonFactory_.getAt(id)));
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
procedure TKeyValuePersistance.save(abeClientInformation: IAbeClientInformationInterface; hashtable: TABHashtable<TObject, TObject>);
var
  recordStore_: TRecordStore;
  byteArrayOutputStream: TByteArrayOutputStream;
  outputStream: TDataOutputStream;
  value: string;
  commonSeps_: TCommonSeps;
  objectArray: TArray<TObject>;
  anyType: TObject;
  size: Integer;
  index: Integer;
  tsUtil_: TTsUtil;
  savedGameBytes: TArray<ShortInt>;
begin
        recordStore_ := TNullRecordStore.NULL_RECORD_STORE;
        try
        try
            Self.logUtil.putF(TStringMaker.Create().append(Self.persistanceStrings.SAVING).append(TStringUtil.getInstance().toString(hashtable)).toString(), TJava.Box(Self), Self.commonStrings.SAVE);
            recordStore_ := TRecordStore.openRecordStore(Self.getRecordId(abeClientInformation), True);
            byteArrayOutputStream := TByteArrayOutputStream.Create;
            outputStream := TDataOutputStream.Create(byteArrayOutputStream);
            
            commonSeps_ := TCommonSeps.getInstance();
            objectArray := THashtableUtil.getInstance().getKeysAsArray(hashtable);
            
            size := System.Length(objectArray);
            for index := 0 to size - 1 do begin
                outputStream.writeUTF(TJava.UnboxString(TJava.ToObject(objectArray[index])));
                outputStream.writeUTF(commonSeps_.EQUALS);
                anyType := TJava.Box(TJava.Box(objectArray[index]));
                value := TJava.UnboxString(TJava.ToObject(hashtable.get(TJava.Box(anyType))));
                outputStream.writeUTF(value);
            end;
            tsUtil_ := TTsUtil.getInstance();
            savedGameBytes := tsUtil_.getByteArray(byteArrayOutputStream.toString());
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
    

function TKeyValuePersistance.get(index: Integer): TABHashtable<TObject, TObject>;
var
  hashtable: TABHashtable<TObject, TObject>;
begin
        hashtable := TABHashtable<TObject, TObject>(TJava.ToObject(Self.valueList.objectArray[index]));
        Exit(hashtable);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

