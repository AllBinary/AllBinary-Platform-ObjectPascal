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
unit RecordStoreHighScores;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, RecordComparator, TsUtil, GameInfo, LogUtil, AbeClientInformationInterface, PlatformRecordIdUtil, CommonStrings, ABHashtable, HighScores, HighScore;

type
  {AB:TYPES}
  TRecordStoreHighScores = class(THighScores)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    platformRecordIdUtil: TPlatformRecordIdUtil;
    tsUtil: TTsUtil;
    RECORD_ID: string;
    MAXHIGHSCORES: Integer;
    gameInfo: TGameInfo;
    abeClientInformation: IAbeClientInformationInterface;
    recordComparatorInterface: IRecordComparator;
    class var hashTable: TABHashtable<TObject, TObject>;
    procedure InitFields;
        constructor Create(abeClientInformation: IAbeClientInformationInterface; gameInfo_: TGameInfo; name: string; heading: string; columnTwoHeading: string; recordComparatorInterface: IRecordComparator);
        class function getInstance(abeClientInformation: IAbeClientInformationInterface; gameInfo_: TGameInfo; highScoreName: string; heading: string; columnTwoHeading: string; recordComparatorInterface: IRecordComparator): THighScores; static;
        function getRecordId(abeClientInformation: IAbeClientInformationInterface): string;
        procedure addHighScore(newHighScore: THighScore); override;
        procedure removeLowestHighScore;
        procedure load;
        function isTooManyHighScores: Boolean;
        function isBestScore(newHighScore: THighScore): Boolean; override;
        function toString: string; override;
  end;

implementation
uses
  ScoreComparator, RecordEnumeration, RecordStore, RecordStoreException, RecordStoreNotFoundException, NullRecordComparator, NullRecordFilter, NullRecordStore, StdUtil, PreLogUtil, StringMaker, CommonSeps, BasicArrayList, BasicArrayListD;


{AB:CODE}

procedure TRecordStoreHighScores.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.platformRecordIdUtil := TPlatformRecordIdUtil.getInstance();
  Self.tsUtil := TTsUtil.getInstance();
  Self.RECORD_ID := '_HS';
  Self.MAXHIGHSCORES := 100;
  
  
  
end;
    

constructor TRecordStoreHighScores.Create(abeClientInformation: IAbeClientInformationInterface; gameInfo_: TGameInfo; name: string; heading: string; columnTwoHeading: string; recordComparatorInterface: IRecordComparator);
begin
        inherited Create(name, heading, columnTwoHeading);
        InitFields;
        Self.abeClientInformation := abeClientInformation;
        Self.gameInfo := gameInfo_;
        Self.recordComparatorInterface := recordComparatorInterface;
        Self.load();
end;
    

class function TRecordStoreHighScores.getInstance(abeClientInformation: IAbeClientInformationInterface; gameInfo_: TGameInfo; highScoreName: string; heading: string; columnTwoHeading: string; recordComparatorInterface: IRecordComparator): THighScores;
var
  highScoresCanBeNull: TObject;
  highScores_: THighScores;
begin
    TJava.MonitorEnter(nil);
    try
        highScoresCanBeNull := TJava.Box(TRecordStoreHighScores.hashTable.get(TJava.Box(TJava.Box(highScoreName))));
        if (highScoresCanBeNull) = (nil) then begin
            highScores_ := TRecordStoreHighScores.Create(abeClientInformation, gameInfo_, highScoreName, heading, columnTwoHeading, recordComparatorInterface);
            TRecordStoreHighScores.hashTable.put(TJava.Box(highScores_.getName()), TJava.Box(highScores_));
            Exit(highScores_);
        end;
        Exit(THighScores(TJava.ToObject(highScoresCanBeNull)));
    finally
    TJava.MonitorExit(nil);
    end;
end;
    

function TRecordStoreHighScores.getRecordId(abeClientInformation: IAbeClientInformationInterface): string;
begin
        Exit(Self.platformRecordIdUtil.getRecordId(abeClientInformation, TStringMaker.Create().append(TCommonSeps.getInstance().UNDERSCORE).append(Self.getName()).append(Self.RECORD_ID).toString()));
end;
    

procedure TRecordStoreHighScores.addHighScore(newHighScore: THighScore);
var
  recordStore_: TRecordStore;
  highScoreBytes: TArray<ShortInt>;
  recordId: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        recordStore_ := TNullRecordStore.NULL_RECORD_STORE;
        try
        try
            Self.logUtil.putF(TStringMaker.Create().append('Adding HighScore: ').appendlong(Int64(Trunc(newHighScore.getScore()))).toString(), TJava.Box(Self), Self.commonStrings.ADD);
            if Self.isTooManyHighScores() then begin
                Self.logUtil.putF('Removing Lowest Score', TJava.Box(Self), Self.commonStrings.ADD);
                Self.removeLowestHighScore();
            end;
            recordStore_ := TRecordStore.openRecordStore(Self.getRecordId(Self.abeClientInformation), True);
            highScoreBytes := newHighScore.getAsBytes();
            recordId := recordStore_.addRecord(highScoreBytes, 0, System.Length(highScoreBytes));
            Self.load();
        except
            on e: TRecordStoreException do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.ADD, TJava.Box(e));
            end;
            on e: TIOException do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.ADD, TJava.Box(e));
            end;
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.ADD, TJava.Box(e));
            end;
        end;
        finally
            try
                if (recordStore_) <> (nil) then begin
                    TPreLogUtil.put('Closing RecordStore', TJava.Box(Self), Self.commonStrings.ADD);
                    recordStore_.closeRecordStore();
                end;
            except
                on e: TRecordStoreException do begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.ADD, TJava.Box(e));
                end;
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TRecordStoreHighScores.removeLowestHighScore;
var
  recordStore_: TRecordStore;
  recordEnum: IRecordEnumeration;
  scoreComparator_: TScoreComparator;
  bestHighScore: THighScore;
  recordAsBytes: TArray<ShortInt>;
  byteArrayInputStream_: TByteArrayInputStream;
  inputStream: TDataInputStream;
  id: Integer;
  name: string;
  nextScore: Int64;
  nextCurrentHighScore: THighScore;
begin
        recordStore_ := TNullRecordStore.NULL_RECORD_STORE;
        try
        try
            recordStore_ := TRecordStore.openRecordStore(Self.getRecordId(Self.abeClientInformation), True);
            recordEnum := recordStore_.enumerateRecords(TNullRecordFilter.NULL_RECORD_FILTER, TNullRecordComparator.NULL_RECORD_COMPARATOR, True);
            scoreComparator_ := (TScoreComparator(TJava.ToObject(Self.recordComparatorInterface)));
            bestHighScore := THighScore.Create(-1, 'none', TGameInfo.NONE, scoreComparator_.getBestScore());
            
            
            
            while recordEnum.hasNextElement() do begin
                id := recordEnum.nextRecordId();
                recordAsBytes := Self.tsUtil.getRecord(TJava.Box(recordStore_), id);
                if (recordAsBytes) <> (nil) then begin
                    byteArrayInputStream_ := TByteArrayInputStream.Create(recordAsBytes);
                    inputStream := TDataInputStream.Create(byteArrayInputStream_);
                    name := inputStream.readUTF();
                    nextScore := inputStream.readLong();
                    nextCurrentHighScore := THighScore.Create(id, name, TGameInfo.NONE, nextScore);
                    if (Self.recordComparatorInterface.compare(nextCurrentHighScore.getAsBytes(), bestHighScore.getAsBytes())) = (IRecordComparator.FOLLOWS) then begin
                        bestHighScore := nextCurrentHighScore;
                    end;
                end;
            end;
            if (bestHighScore.getId()) <> (-1) then begin
                Self.logUtil.putF(TStringMaker.Create().append('Removing Lowest HighScore: ').appendlong(Int64(Trunc(bestHighScore.getScore()))).toString(), TJava.Box(Self), Self.commonStrings.LOAD);
                recordStore_.deleteRecord(bestHighScore.getId());
            end;
        except
            on e: TRecordStoreException do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'removeLowestHighScore', TJava.Box(e));
            end;
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'removeLowestHighScore', TJava.Box(e));
            end;
        end;
        finally
            try
                if (recordStore_) <> (nil) then begin
                    TPreLogUtil.put('Closing RecordStore', TJava.Box(Self), 'removeLowestHighScore');
                    recordStore_.closeRecordStore();
                end;
            except
                on e: TRecordStoreException do begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'removeLowestHighScore', TJava.Box(e));
                end;
            end;
        end;
end;
    

procedure TRecordStoreHighScores.load;
var
  recordStore_: TRecordStore;
  recordEnum: IRecordEnumeration;
  recordAsBytes: TArray<ShortInt>;
  byteArrayInputStream_: TByteArrayInputStream;
  inputStream: TDataInputStream;
  id: Integer;
  name: string;
  score: Int64;
  newHighScore: THighScore;
  list: TBasicArrayList;
  size: Integer;
  lastIndex: Integer;
  highScore_: THighScore;
  index: Integer;
begin
        recordStore_ := TNullRecordStore.NULL_RECORD_STORE;
        try
        try
            recordStore_ := TRecordStore.openRecordStore(Self.getRecordId(Self.abeClientInformation), True);
            Self.setList(TBasicArrayListD.Create());
            recordEnum := recordStore_.enumerateRecords(TNullRecordFilter.NULL_RECORD_FILTER, TNullRecordComparator.NULL_RECORD_COMPARATOR, True);
            
            
            
            while recordEnum.hasNextElement() do begin
                id := recordEnum.nextRecordId();
                recordAsBytes := Self.tsUtil.getRecord(TJava.Box(recordStore_), id);
                if (recordAsBytes) <> (nil) then begin
                    byteArrayInputStream_ := TByteArrayInputStream.Create(recordAsBytes);
                    inputStream := TDataInputStream.Create(byteArrayInputStream_);
                    try
                        name := inputStream.readUTF();
                        score := inputStream.readLong();
                        newHighScore := THighScore.Create(id, name, TGameInfo.NONE, score);
                        list := Self.getList();
                        size := list.size();
                        lastIndex := size;
                        for index := 0 to size - 1 do begin
                            highScore_ := THighScore(TJava.ToObject(list.objectArray[index]));
                            if (Self.recordComparatorInterface.compare(newHighScore.getAsBytes(), highScore_.getAsBytes())) = (IRecordComparator.PRECEDES) then begin
                                lastIndex := index;
                                Break;
                            end;
                        end;
                        list.addAt(lastIndex, TJava.Box(newHighScore));
                    except
                        on e: TEOFException do begin
                        Self.logUtil.put('EOF', TJava.Box(Self), Self.commonStrings.LOAD, TJava.Box(e));
                        raise e;
                        end;
                    end;
                end;
            end;
        except
            on e: TRecordStoreNotFoundException do begin
            Self.logUtil.put('No High Scores', TJava.Box(Self), Self.commonStrings.LOAD, TJava.Box(e));
            end;
            on e: TRecordStoreException do begin
            Self.logUtil.put(Self.commonStrings.UNKNOWN, TJava.Box(Self), Self.commonStrings.LOAD, TJava.Box(e));
            end;
            on e: TIOException do begin
            Self.logUtil.put(Self.commonStrings.UNKNOWN, TJava.Box(Self), Self.commonStrings.LOAD, TJava.Box(e));
            end;
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.UNKNOWN, TJava.Box(Self), Self.commonStrings.LOAD, TJava.Box(e));
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
end;
    

function TRecordStoreHighScores.isTooManyHighScores: Boolean;
begin
        if (not TJava.IsNull(Self.getList())) and ((Self.getList().size()) < (Self.MAXHIGHSCORES)) then begin
            Exit(False);
        end else begin
            Self.logUtil.putF(TStringMaker.Create().append('HighScores RecordStore Max Reached: ').appendint(Self.MAXHIGHSCORES).toString(), TJava.Box(Self), 'isTooManyHighScores');
            Exit(True);
        end;
end;
    

// throws Exception
function TRecordStoreHighScores.isBestScore(newHighScore: THighScore): Boolean;
var
  list: TBasicArrayList;
  size: Integer;
  highScore_: THighScore;
  index: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        try
            if not (Self.isTooManyHighScores()) then begin
                Self.logUtil.putF('Slot Available for a High Score', TJava.Box(Self), 'isBestScore');
                Exit(True);
            end else begin
                list := Self.getList();
                size := list.size();
                for index := 0 to size - 1 do begin
                    highScore_ := THighScore(TJava.ToObject(list.objectArray[index]));
                    if (Self.recordComparatorInterface.compare(newHighScore.getAsBytes(), highScore_.getAsBytes())) = (IRecordComparator.FOLLOWS) then begin
                        Self.logUtil.putF('Obtained a High Score', TJava.Box(Self), 'isBestScore');
                        Exit(True);
                    end;
                end;
            end;
            Self.logUtil.putF('Not a High Score', TJava.Box(Self), 'isBestScore');
            Exit(False);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.ADD, TJava.Box(e));
            raise e;
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

function TRecordStoreHighScores.toString: string;
var
  stringBuffer: TStringMaker;
  list: TBasicArrayList;
  size: Integer;
  highScore_: THighScore;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(inherited toString());
        list := Self.getList();
        size := list.size();
        for index := 0 to size - 1 do begin
            highScore_ := THighScore(TJava.ToObject(list.objectArray[index]));
            stringBuffer.append(highScore_.getScoreString());
            stringBuffer.append(TCommonSeps.getInstance().COMMA_SEP);
        end;
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  TRecordStoreHighScores.hashTable := TStdUtil.getInstance().createHashtable();
  {AB:END}

end.

