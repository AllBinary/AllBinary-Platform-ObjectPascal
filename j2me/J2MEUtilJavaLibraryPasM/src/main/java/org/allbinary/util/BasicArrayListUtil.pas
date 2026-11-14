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
// package org.allbinary.util
unit BasicArrayListUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MyRandomFactory, BasicArrayList;

type
  {AB:TYPES}
  TBasicArrayListUtil = class(TObject)
  public
    NULL_ARRAY_OF_ARRAY: TArray<TArray<TBasicArrayList>>;
    myRandomFactory: TMyRandomFactory;
    immutableInstance: TBasicArrayList;
    class var instance: TBasicArrayListUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TBasicArrayListUtil; static;
        function getRandom(list: TBasicArrayList): TObject; virtual;
        function getRandomIndex(list: TBasicArrayList): Integer; virtual;
        procedure reverse(list: TBasicArrayList); virtual;
        function log(list: TBasicArrayList): string; virtual;
        function getImmutableInstance: TBasicArrayList; virtual;
        class procedure main(args: TArray<string>); static;
  end;

implementation
uses
  ImmutableBasicArrayList, BasicArrayListD, JsType, StringMaker, CommonLabels, CommonPhoneStrings, JsMethod, JsProperty;


{AB:CODE}

procedure TBasicArrayListUtil.InitFields;
begin
  Self.NULL_ARRAY_OF_ARRAY := TJava.NewArray2<TBasicArrayList>(0, 0);
  Self.myRandomFactory := TMyRandomFactory.getInstance();
  Self.immutableInstance := TImmutableBasicArrayList.Create('Immutable', 0);
end;

constructor TBasicArrayListUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TBasicArrayListUtil.getInstance: TBasicArrayListUtil;
begin
        Exit(TBasicArrayListUtil.instance);
end;
    

function TBasicArrayListUtil.getRandom(list: TBasicArrayList): TObject;
var
  i_random: Integer;
begin
        i_random := Self.getRandomIndex(list);
        Exit(TJava.Box(list.objectArray[i_random]));
end;
    

function TBasicArrayListUtil.getRandomIndex(list: TBasicArrayList): Integer;
begin
        Exit(Self.myRandomFactory.getAbsoluteNextInt(list.size()));
end;
    

procedure TBasicArrayListUtil.reverse(list: TBasicArrayList);
var
  lastMinusOneIndex: Integer;
  temp: TObject;
  size: Integer;
  secondSwapIndex: Integer;
  index: Integer;
begin
        lastMinusOneIndex := (list.size()) - (2);
        
        size := (lastMinusOneIndex) div (2);
        
        for index := 0 to size do begin
            secondSwapIndex := (lastMinusOneIndex) - (index);
            temp := TJava.Box(list.removeAt(index));
            list.addAt(index, TJava.Box(list.removeAt(secondSwapIndex)));
            list.addAt((secondSwapIndex) + (1), TJava.Box(temp));
        end;
end;
    

function TBasicArrayListUtil.log(list: TBasicArrayList): string;
var
  S_LABEL: string;
  size: Integer;
  stringBuffer: TStringMaker;
  usedList: TBasicArrayList;
  index: Integer;
begin
        S_LABEL := ' s: ';
        size := list.size();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(TCommonLabels.getInstance().TOTAL_LABEL);
        stringBuffer.appendint(size);
        for index := (size) - (1) downto 0 do begin
            usedList := TBasicArrayList(TJava.ToObject(list.objectArray[index]));
            stringBuffer.append(S_LABEL);
            stringBuffer.appendint(usedList.size());
        end;
        Exit(stringBuffer.toString());
end;
    

function TBasicArrayListUtil.getImmutableInstance: TBasicArrayList;
begin
        Exit(Self.immutableInstance);
end;
    

class procedure TBasicArrayListUtil.main(args: TArray<string>);
var
  commonPhoneStrings_: TCommonPhoneStrings;
  list: TBasicArrayList;
begin
        commonPhoneStrings_ := TCommonPhoneStrings.getInstance();
        list := TBasicArrayListD.Create();
        list.add(TJava.Box(commonPhoneStrings_.ONE));
        list.add(TJava.Box(commonPhoneStrings_.TWO));
        list.add(TJava.Box(commonPhoneStrings_.THREE));
        list.add(TJava.Box(commonPhoneStrings_.FOUR));
        list.add(TJava.Box(commonPhoneStrings_.FIVE));
        list.add(TJava.Box(commonPhoneStrings_.SIX));
        list.add(TJava.Box(commonPhoneStrings_.SEVEN));
        list.add(TJava.Box(commonPhoneStrings_.EIGHT));
        list.add(TJava.Box(commonPhoneStrings_.NINE));
        TBasicArrayListUtil.getInstance().reverse(list);
        WriteLn(list.toString());
end;

initialization
  {AB:INITIALIZATION}
  TBasicArrayListUtil.instance := TBasicArrayListUtil.Create();
  {AB:END}

end.

