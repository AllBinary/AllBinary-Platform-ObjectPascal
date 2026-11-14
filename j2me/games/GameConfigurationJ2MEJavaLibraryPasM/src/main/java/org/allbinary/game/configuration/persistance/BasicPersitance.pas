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
unit BasicPersitance;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbeClientInformationInterface, PlatformRecordIdUtil, CommonStrings, BasicArrayList, PersistanceStrings;

type
  {AB:TYPES}
  TBasicPersitance = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    persistanceStrings: TPersistanceStrings;
    platformRecordIdUtil: TPlatformRecordIdUtil;
    recordId: string;
    valueList: TBasicArrayList;
    idList: TBasicArrayList;
    procedure InitFields;
        constructor Create(recordId: string);
        procedure deleteRecoreStore(abeClientInformation: IAbeClientInformationInterface); virtual;
        procedure deleteAll(abeClientInformation: IAbeClientInformationInterface); virtual;
        procedure delete_(abeClientInformation: IAbeClientInformationInterface; deleteId: Integer); virtual;
        function getRecordId(abeClientInformation: IAbeClientInformationInterface): string; virtual;
        function getList: TBasicArrayList; virtual;
        function getIds: TBasicArrayList; virtual;
        procedure clear; virtual;
  end;

implementation
uses
  NullRecordStore, RecordStore, PreLogUtil, StringMaker, BasicArrayListD;


{AB:CODE}

procedure TBasicPersitance.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.persistanceStrings := TPersistanceStrings.getInstance();
  Self.platformRecordIdUtil := TPlatformRecordIdUtil.getInstance();
  
  Self.valueList := TBasicArrayListD.Create();
  Self.idList := TBasicArrayListD.Create();
end;
    

constructor TBasicPersitance.Create(recordId: string);
begin
    inherited Create;
    InitFields;
        Self.recordId := recordId;
end;
    

// throws Exception
procedure TBasicPersitance.deleteRecoreStore(abeClientInformation: IAbeClientInformationInterface);
begin
        TRecordStore.deleteRecordStore(Self.getRecordId(abeClientInformation));
end;
    

// throws Exception
procedure TBasicPersitance.deleteAll(abeClientInformation: IAbeClientInformationInterface);
var
  size: Integer;
  integer_: Integer;
  index: Integer;
begin
        size := Self.idList.size();
        for index := 0 to size - 1 do begin
            integer_ := Integer(Self.idList.objectArray[index]);
            Self.delete_(abeClientInformation, (integer_));
        end;
        Self.clear();
end;
    

// throws Exception
procedure TBasicPersitance.delete_(abeClientInformation: IAbeClientInformationInterface; deleteId: Integer);
var
  recordStore_: TRecordStore;
begin
        recordStore_ := TNullRecordStore.NULL_RECORD_STORE;
        try
        try
            Self.logUtil.putF(TStringMaker.Create().append(Self.persistanceStrings.DELETING_WITH_ID).appendint(deleteId).toString(), TJava.Box(Self), Self.commonStrings.delete_);
            recordStore_ := TRecordStore.openRecordStore(Self.getRecordId(abeClientInformation), True);
            recordStore_.deleteRecord(deleteId);
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
        finally
            if (recordStore_) <> (nil) then begin
                TPreLogUtil.put(Self.persistanceStrings.CLOSING_RECORDSTORE, TJava.Box(Self), Self.commonStrings.delete_);
                recordStore_.closeRecordStore();
            end;
        end;
end;
    

function TBasicPersitance.getRecordId(abeClientInformation: IAbeClientInformationInterface): string;
begin
        Exit(Self.platformRecordIdUtil.getRecordId(abeClientInformation, Self.recordId));
end;
    

function TBasicPersitance.getList: TBasicArrayList;
begin
        Exit(Self.valueList);
end;
    

function TBasicPersitance.getIds: TBasicArrayList;
begin
        Exit(Self.idList);
end;
    

procedure TBasicPersitance.clear;
begin
        Self.valueList.clear();
        Self.idList.clear();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

