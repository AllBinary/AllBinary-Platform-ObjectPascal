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
unit ScoreComparator;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, RecordComparator, LogUtil;

type
  {AB:TYPES}
  TScoreComparator = class(TInterfacedObject, IRecordComparator)
  public
    logUtil: TLogUtil;
    isHighestBest: Boolean;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(isHighestBest: Boolean);
        function getBestScore: Int64; virtual;
        function compare(recordOne: TArray<ShortInt>; recordTwo: TArray<ShortInt>): Integer; virtual;
        function getHighTooLow(scoreOne: Int64; scoreTwo: Int64): Integer; virtual;
        function getLowTooHigh(scoreOne: Int64; scoreTwo: Int64): Integer; virtual;
  end;

implementation
uses
  CommonStrings;


{AB:CODE}

procedure TScoreComparator.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TScoreComparator.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TScoreComparator.Create(isHighestBest: Boolean);
begin
    inherited Create;
    InitFields;
        Self.isHighestBest := isHighestBest;
end;
    

function TScoreComparator.getBestScore: Int64;
begin
        Exit(TJava.IfThen<Variant>(Self.isHighestBest, High(Int64), 0));
end;
    

function TScoreComparator.compare(recordOne: TArray<ShortInt>; recordTwo: TArray<ShortInt>): Integer;
var
  byteArrayInputStreamOne: TByteArrayInputStream;
  inputStreamOne: TDataInputStream;
  byteArrayInputStreamTwo: TByteArrayInputStream;
  inputStreamTwo: TDataInputStream;
  scoreOne: Int64;
  scoreTwo: Int64;
  commonStrings_: TCommonStrings;
begin
        byteArrayInputStreamOne := TByteArrayInputStream.Create(recordOne);
        inputStreamOne := TDataInputStream.Create(byteArrayInputStreamOne);
        byteArrayInputStreamTwo := TByteArrayInputStream.Create(recordTwo);
        inputStreamTwo := TDataInputStream.Create(byteArrayInputStreamTwo);
        scoreOne := 0;
        scoreTwo := 0;
        try
            inputStreamOne.readUTF();
            inputStreamTwo.readUTF();
            scoreOne := inputStreamOne.readLong();
            scoreTwo := inputStreamTwo.readLong();
        except
            on e: TEOFException do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), 'compare', TJava.Box(e));
            end;
            on e: TIOException do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), 'compare', TJava.Box(e));
            end;
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), 'compare', TJava.Box(e));
            end;
        end;
        if Self.isHighestBest then begin
            Exit(Self.getHighTooLow(scoreOne, scoreTwo));
        end else begin
            Exit(Self.getLowTooHigh(scoreOne, scoreTwo));
        end;
end;
    

function TScoreComparator.getHighTooLow(scoreOne: Int64; scoreTwo: Int64): Integer;
begin
        if (scoreOne) > (scoreTwo) then begin
            Exit(IRecordComparator.PRECEDES);
        end else if (scoreOne) < (scoreTwo) then begin
            Exit(IRecordComparator.FOLLOWS);
        end else begin
            Exit(IRecordComparator.EQUIVALENT);
        end;
end;
    

function TScoreComparator.getLowTooHigh(scoreOne: Int64; scoreTwo: Int64): Integer;
begin
        if (scoreOne) < (scoreTwo) then begin
            Exit(IRecordComparator.PRECEDES);
        end else if (scoreOne) > (scoreTwo) then begin
            Exit(IRecordComparator.FOLLOWS);
        end else begin
            Exit(IRecordComparator.EQUIVALENT);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

