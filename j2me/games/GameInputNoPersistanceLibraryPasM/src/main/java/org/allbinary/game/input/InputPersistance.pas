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
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicPersitance, AbeClientInformationInterface, HashtableUtil, ABHashtable;

type
  {AB:TYPES}
  // GameInputNoPersistanceLibrary
  TInputPersistance = class(TBasicPersitance)
  public
    hashtableUtil: THashtableUtil;
    procedure InitFields;
        constructor Create(name: string);
        procedure loadAll(abeClientInformation: IAbeClientInformationInterface); virtual;
        procedure save(abeClientInformation: IAbeClientInformationInterface; hashtable: TABHashtable<TObject, TObject>); virtual;
  end;

implementation
uses
  Input, RecordEnumeration, RecordStore, NullRecordComparator, NullRecordFilter, PreLogUtil, SmallIntegerSingletonFactory, StringMaker, StringUtil, BasicArrayList, StdUtil;


{AB:CODE}

procedure TInputPersistance.InitFields;
begin
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
  hashtable: TABHashtable<TObject, TObject>;
  stringBuffer: TStringMaker;
  smallIntegerSingletonFactory_: TSmallIntegerSingletonFactory;
  id: Integer;
begin
        recordStore_ := TRecordStore.openRecordStore(Self.getRecordId(abeClientInformation), True);
        recordEnum := recordStore_.enumerateRecords(TNullRecordFilter.NULL_RECORD_FILTER, TNullRecordComparator.NULL_RECORD_COMPARATOR, True);
        
        stringBuffer := TStringMaker.Create();
        smallIntegerSingletonFactory_ := TSmallIntegerSingletonFactory.getInstance();
        
        while recordEnum.hasNextElement() do begin
            id := recordEnum.nextRecordId();
            stringBuffer.delete_(0, stringBuffer.length());
            Self.logUtil.putF(stringBuffer.append(Self.persistanceStrings.LOADING_ID).appendint(id).toString(), TJava.Box(Self), Self.persistanceStrings.LOAD_ALL);
            hashtable := TStdUtil.getInstance().createHashtable();
            Self.valueList.add(TJava.Box(hashtable));
            Self.idList.add(TJava.Box(smallIntegerSingletonFactory_.getAt(id)));
        end;
        recordStore_.closeRecordStore();
end;
    

// throws Exception
procedure TInputPersistance.save(abeClientInformation: IAbeClientInformationInterface; hashtable: TABHashtable<TObject, TObject>);
var
  recordStore_: TRecordStore;
  gameActionInput: TInput;
  list: TBasicArrayList;
  input_: TInput;
  inputObjectArray: TArray<TObject>;
  size: Integer;
  index2: Integer;
  index: Integer;
begin
        TPreLogUtil.put(TStringMaker.Create().append(Self.persistanceStrings.NOT_SAVING).append(TStringUtil.getInstance().toString(hashtable)).toString(), TJava.Box(Self), Self.commonStrings.SAVE);
        recordStore_ := TRecordStore.openRecordStore(Self.getRecordId(abeClientInformation), True);
        
        
        
        inputObjectArray := Self.hashtableUtil.getKeysAsArray(hashtable);
        size := System.Length(inputObjectArray);
        for index := 0 to size - 1 do begin
            gameActionInput := TInput(TJava.ToObject(inputObjectArray[index]));
            list := TBasicArrayList(TJava.ToObject(hashtable.get(TJava.Box(inputObjectArray[index]))));
            for index2 := 0 to list.size() - 1 do begin
                input_ := TInput(TJava.ToObject(list.get(index2)));
            end;
        end;
        recordStore_.closeRecordStore();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

