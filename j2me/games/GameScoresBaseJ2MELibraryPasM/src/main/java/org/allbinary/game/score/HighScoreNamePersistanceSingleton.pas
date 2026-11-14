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
// package org.allbinary.game.score
unit HighScoreNamePersistanceSingleton;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TsUtil, GameInfo, LogUtil, AbeClientInformationInterface, PlatformRecordIdUtil, CommonStrings, BasicArrayList;

type
  {AB:TYPES}
  THighScoreNamePersistanceSingleton = class(TObject)
  public
    logUtil: TLogUtil;
    tsUtil: TTsUtil;
    commonStrings: TCommonStrings;
    platformRecordIdUtil: TPlatformRecordIdUtil;
    RECORD_ID: string;
    name: string;
    nameBasicArrayList: TBasicArrayList;
    class var SINGLETON: THighScoreNamePersistanceSingleton;
    procedure InitFields;
    constructor Create;
        class function getInstance: THighScoreNamePersistanceSingleton; static;
        procedure clear; virtual;
        procedure deleteAll(abeClientInformation: IAbeClientInformationInterface; gameInfo_: TGameInfo); virtual;
        function getRecordId(abeClientInformation: IAbeClientInformationInterface): string;
        procedure delete_(abeClientInformation: IAbeClientInformationInterface; gameInfo_: TGameInfo; deleteId: Integer); virtual;
        function getIds: TBasicArrayList; virtual;
        function load(abeClientInformation: IAbeClientInformationInterface; gameInfo_: TGameInfo): string; virtual;
        procedure save(abeClientInformation: IAbeClientInformationInterface; gameInfo_: TGameInfo; name: string); virtual;
  end;

implementation
uses
  RecordEnumeration, RecordStore, RecordStoreException, NullRecordComparator, NullRecordFilter, NullRecordStore, PreLogUtil, ExceptionUtil, SmallIntegerSingletonFactory, StringMaker, StringUtil, BasicArrayListD;


{AB:CODE}

procedure THighScoreNamePersistanceSingleton.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.tsUtil := TTsUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.platformRecordIdUtil := TPlatformRecordIdUtil.getInstance();
  Self.RECORD_ID := '_SN';
  Self.name := TStringUtil.getInstance().EMPTY_STRING;
  Self.nameBasicArrayList := TBasicArrayListD.Create();
end;

constructor THighScoreNamePersistanceSingleton.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function THighScoreNamePersistanceSingleton.getInstance: THighScoreNamePersistanceSingleton;
begin
        Exit(THighScoreNamePersistanceSingleton.SINGLETON);
end;
    

procedure THighScoreNamePersistanceSingleton.clear;
begin
        Self.name := TStringUtil.getInstance().EMPTY_STRING;
end;
    

// throws Exception
procedure THighScoreNamePersistanceSingleton.deleteAll(abeClientInformation: IAbeClientInformationInterface; gameInfo_: TGameInfo);
var
  size: Integer;
  integer_: Integer;
  index: Integer;
begin
        size := Self.nameBasicArrayList.size();
        for index := 0 to size - 1 do begin
            integer_ := Integer(Self.nameBasicArrayList.objectArray[index]);
            Self.delete_(abeClientInformation, gameInfo_, (integer_));
        end;
        Self.clear();
end;
    

function THighScoreNamePersistanceSingleton.getRecordId(abeClientInformation: IAbeClientInformationInterface): string;
begin
        Exit(Self.platformRecordIdUtil.getRecordId(abeClientInformation, Self.RECORD_ID));
end;
    

// throws Exception
procedure THighScoreNamePersistanceSingleton.delete_(abeClientInformation: IAbeClientInformationInterface; gameInfo_: TGameInfo; deleteId: Integer);
var
  recordStore_: TRecordStore;
begin
        recordStore_ := TNullRecordStore.NULL_RECORD_STORE;
        try
        try
            Self.logUtil.putF(TStringMaker.Create().append('Deleting: ').appendint(deleteId).toString(), TJava.Box(Self), Self.commonStrings.delete_);
            recordStore_ := TRecordStore.openRecordStore(Self.getRecordId(abeClientInformation), True);
            recordStore_.deleteRecord(deleteId);
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
        finally
            if (recordStore_) <> (nil) then begin
                TPreLogUtil.put('Closing RecordStore', TJava.Box(Self), Self.commonStrings.delete_);
                recordStore_.closeRecordStore();
            end;
        end;
end;
    

function THighScoreNamePersistanceSingleton.getIds: TBasicArrayList;
begin
        Exit(Self.nameBasicArrayList);
end;
    

function THighScoreNamePersistanceSingleton.load(abeClientInformation: IAbeClientInformationInterface; gameInfo_: TGameInfo): string;
var
  recordStore_: TRecordStore;
  LOADING_ID: string;
  recordEnum: IRecordEnumeration;
  smallIntegerSingletonFactory_: TSmallIntegerSingletonFactory;
  recordAsBytes: TArray<ShortInt>;
  byteArrayInputStream_: TByteArrayInputStream;
  inputStream: TDataInputStream;
  id: Integer;
begin
        recordStore_ := TNullRecordStore.NULL_RECORD_STORE;
        try
        try
            if TJava.Equals(Self.name, TStringUtil.getInstance().EMPTY_STRING) then begin
                LOADING_ID := 'Loading id: ';
                recordStore_ := TRecordStore.openRecordStore(Self.getRecordId(abeClientInformation), True);
                recordEnum := recordStore_.enumerateRecords(TNullRecordFilter.NULL_RECORD_FILTER, TNullRecordComparator.NULL_RECORD_COMPARATOR, True);
                smallIntegerSingletonFactory_ := TSmallIntegerSingletonFactory.getInstance();
                
                
                
                while recordEnum.hasNextElement() do begin
                    id := recordEnum.nextRecordId();
                    Self.logUtil.putF(TStringMaker.Create().append(LOADING_ID).appendint(id).toString(), TJava.Box(Self), Self.commonStrings.LOAD);
                    recordAsBytes := Self.tsUtil.getRecord(TJava.Box(recordStore_), id);
                    byteArrayInputStream_ := TByteArrayInputStream.Create(recordAsBytes);
                    inputStream := TDataInputStream.Create(byteArrayInputStream_);
                    while (inputStream.available()) > (0) do begin
                        Self.name := inputStream.readUTF();
                    end;
                    Self.nameBasicArrayList.add(TJava.Box(smallIntegerSingletonFactory_.getAt(id)));
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            Self.save(abeClientInformation, gameInfo_, Self.name);
            Self.logUtil.putF(TStringMaker.Create().append(Self.commonStrings.EXCEPTION_LABEL).append(TExceptionUtil.getInstance().getStackTrace(e)).toString(), TJava.Box(Self), Self.commonStrings.LOAD);
            end;
        end;
        finally
            try
                if (recordStore_) <> (nil) then begin
                    TPreLogUtil.put('Closing RecordStore', TJava.Box(Self), Self.commonStrings.LOAD);
                    recordStore_.closeRecordStore();
                end;
            except
                on e: TRecordStoreException do begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.LOAD, TJava.Box(e));
                end;
            end;
        end;
        Exit(Self.name);
end;
    

procedure THighScoreNamePersistanceSingleton.save(abeClientInformation: IAbeClientInformationInterface; gameInfo_: TGameInfo; name: string);
var
  recordStore_: TRecordStore;
  byteArrayOutputStream: TByteArrayOutputStream;
  outputStream: TDataOutputStream;
  savedGameBytes: TArray<ShortInt>;
begin
        recordStore_ := TNullRecordStore.NULL_RECORD_STORE;
        try
        try
            Self.logUtil.putF(TStringMaker.Create().append('Saving: ').append(name).toString(), TJava.Box(Self), Self.commonStrings.SAVE);
            recordStore_ := TRecordStore.openRecordStore(Self.getRecordId(abeClientInformation), True);
            byteArrayOutputStream := TByteArrayOutputStream.Create;
            outputStream := TDataOutputStream.Create(byteArrayOutputStream);
            outputStream.writeUTF(name);
            savedGameBytes := byteArrayOutputStream.toByteArray();
            recordStore_.addRecord(savedGameBytes, 0, System.Length(savedGameBytes));
            Self.name := name;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.SAVE, TJava.Box(e));
            end;
        end;
        finally
            try
                if (recordStore_) <> (nil) then begin
                    TPreLogUtil.put('Closing RecordStore', TJava.Box(Self), Self.commonStrings.SAVE);
                    recordStore_.closeRecordStore();
                end;
            except
                on e: TRecordStoreException do begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.SAVE, TJava.Box(e));
                end;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  THighScoreNamePersistanceSingleton.SINGLETON := THighScoreNamePersistanceSingleton.Create();
  {AB:END}

end.

