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
// package org.allbinary.game.ag.ai
unit InputProbability;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TimeDelayHelper, ABHashtable;

type
  {AB:TYPES}
  TInputProbability = class(TObject)
  public
    likelyhoodIntegerArray: TArray<TArray<Integer>>;
    repeatLikelyhoodIntegerArray: TArray<Integer>;
    max: Integer;
    timeDelayHelper: TTimeDelayHelper;
    class var INPUT_PROBABILITY: Integer;
    procedure InitFields;
        constructor Create(likelyhoodIntegerArray: TArray<TArray<Integer>>; repeatLikelyhoodIntegerArray: TArray<Integer>; max: Integer; timeDelayHelper_: TTimeDelayHelper);
        function getLikelyhoodIntegerArray: TArray<TArray<Integer>>; virtual;
        function getRepeatLikelyhoodIntegerArray: TArray<Integer>; virtual;
        function getMax: Integer; virtual;
        function getTimeDelayHelper: TTimeDelayHelper; virtual;
        function toHashtable: TABHashtable<TObject, TObject>; virtual;
  end;

implementation
uses
  StdUtil, SmallIntegerSingletonFactory;


{AB:CODE}

procedure TInputProbability.InitFields;
begin
  
  
  
  
end;
    

constructor TInputProbability.Create(likelyhoodIntegerArray: TArray<TArray<Integer>>; repeatLikelyhoodIntegerArray: TArray<Integer>; max: Integer; timeDelayHelper_: TTimeDelayHelper);
begin
    inherited Create;
    InitFields;
        Self.likelyhoodIntegerArray := likelyhoodIntegerArray;
        Self.repeatLikelyhoodIntegerArray := repeatLikelyhoodIntegerArray;
        Self.max := max;
        Self.timeDelayHelper := timeDelayHelper_;
end;
    

function TInputProbability.getLikelyhoodIntegerArray: TArray<TArray<Integer>>;
begin
        Exit(Self.likelyhoodIntegerArray);
end;
    

function TInputProbability.getRepeatLikelyhoodIntegerArray: TArray<Integer>;
begin
        Exit(Self.repeatLikelyhoodIntegerArray);
end;
    

function TInputProbability.getMax: Integer;
begin
        Exit(Self.max);
end;
    

function TInputProbability.getTimeDelayHelper: TTimeDelayHelper;
begin
        Exit(Self.timeDelayHelper);
end;
    

function TInputProbability.toHashtable: TABHashtable<TObject, TObject>;
var
  hashtable: TABHashtable<TObject, TObject>;
begin
        hashtable := TStdUtil.getInstance().createHashtable();
        hashtable.put(TJava.Box(TInputProbability.INPUT_PROBABILITY), TJava.Box(Self));
        Exit(hashtable);
end;

initialization
  {AB:INITIALIZATION}
  TInputProbability.INPUT_PROBABILITY := TSmallIntegerSingletonFactory.getInstance().getAt(0);
  {AB:END}

end.

