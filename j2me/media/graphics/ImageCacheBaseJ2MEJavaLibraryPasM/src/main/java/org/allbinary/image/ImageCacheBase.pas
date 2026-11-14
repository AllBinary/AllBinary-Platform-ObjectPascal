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
// package org.allbinary.image
unit ImageCacheBase;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, LogUtil, ABHashtable, BasicArrayList, ImageFactory;

type
  {AB:TYPES}
  TImageCacheBase = class(TObject)
  public
    logUtil: TLogUtil;
    imageFactory: TImageFactory;
    hashtable: TABHashtable<TObject, TObject>;
    SIZE: Integer;
    widths: TArray<Integer>;
    heights: TArray<Integer>;
    listOfList: TArray<TBasicArrayList>;
    availableListOfList: TArray<TBasicArrayList>;
    volume: Integer;
    nextIndex: Integer;
    procedure InitFields;
        constructor Create;
        function getImage(resourceId: TObject): TImage; virtual;
        procedure releaseAll; virtual;
        function getIndexWH(width: Integer; height: Integer): Integer; virtual;
        function getFromAvailable(foundIndex: Integer; width: Integer; height: Integer): TImage; virtual;
        function get(caller: string; width: Integer; height: Integer): TImage; virtual;
        function getWithKey(key: TObject): TImage; virtual;
        function createImage(caller: string; width: Integer; height: Integer): TImage; virtual;
        function createImageFromInputStream(key: TObject; inputStream_: TInputStream): TImage; virtual;
        function toString: string; virtual;
        function getHashtableP: TABHashtable<TObject, TObject>; virtual;
        procedure init(image_: TImage); virtual;
        procedure initProgress; virtual;
  end;

implementation
uses
  NullImage, StdUtil, StringMaker, CommonLabels, CommonSeps, BasicArrayListD;


{AB:CODE}

procedure TImageCacheBase.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.imageFactory := TImageFactory.getInstance();
  Self.hashtable := TStdUtil.getInstance().createHashtable();
  Self.SIZE := 128;
  Self.widths := TJava.NewArray<Integer>(Self.SIZE);
  Self.heights := TJava.NewArray<Integer>(Self.SIZE);
  Self.listOfList := TJava.NewArray<TBasicArrayList>(Self.SIZE);
  Self.availableListOfList := TJava.NewArray<TBasicArrayList>(Self.SIZE);
  Self.volume := 0;
  Self.nextIndex := 0;
end;
    

constructor TImageCacheBase.Create;
var
  index: Integer;
begin
    inherited Create;
    InitFields;
        for index := (System.Length(Self.listOfList)) - (1) downto 0 do begin
            Self.listOfList[index] := TBasicArrayListD.Create();
        end;
        for index := (System.Length(Self.availableListOfList)) - (1) downto 0 do begin
            Self.availableListOfList[index] := TBasicArrayListD.Create();
        end;
end;
    

function TImageCacheBase.getImage(resourceId: TObject): TImage;
var
  imageCanBeNull: TObject;
begin
        imageCanBeNull := TJava.Box(Self.hashtable.get(TJava.Box(resourceId)));
        if (imageCanBeNull) = (nil) then begin
            Exit(TNullImage.NULL_IMAGE);
        end;
        Exit(TImage(TJava.ToObject(imageCanBeNull)));
end;
    

procedure TImageCacheBase.releaseAll;
var
  index: Integer;
begin
        for index := (System.Length(Self.listOfList)) - (1) downto 0 do begin
            Self.availableListOfList[index].clear();
            Self.availableListOfList[index].addAllList(Self.listOfList[index]);
        end;
        Self.logUtil.putF(TStringMaker.Create().append('ImageCache: ').append(Self.toString()).toString(), TJava.Box(Self), 'releaseAll');
end;
    

function TImageCacheBase.getIndexWH(width: Integer; height: Integer): Integer;
var
  foundIndex: Integer;
  size: Integer;
  index: Integer;
begin
        foundIndex := -1;
        size := System.Length(Self.widths);
        for index := 0 to size - 1 do begin
            if ((Self.widths[index]) = (width)) and ((Self.heights[index]) = (height)) then begin
                foundIndex := index;
                Exit(foundIndex);
            end;
        end;
        Exit(foundIndex);
end;
    

function TImageCacheBase.getFromAvailable(foundIndex: Integer; width: Integer; height: Integer): TImage;
var
  list: TBasicArrayList;
begin
        if (foundIndex) <> (-1) then begin
            if (Self.availableListOfList[foundIndex].size()) > (0) then begin
                list := Self.availableListOfList[foundIndex];
                Exit(TImage(TJava.ToObject(list.removeAt((list.size()) - (1)))));
            end;
        end;
        Exit(TNullImage.NULL_IMAGE);
end;
    

// throws Exception
function TImageCacheBase.get(caller: string; width: Integer; height: Integer): TImage;
begin
        raise SysUtils.Exception.Create('');
end;
    

// throws Exception
function TImageCacheBase.getWithKey(key: TObject): TImage;
begin
        raise SysUtils.Exception.Create('');
end;
    

// throws Exception
function TImageCacheBase.createImage(caller: string; width: Integer; height: Integer): TImage;
begin
        Exit(Self.imageFactory.createImage(caller, width, height));
end;
    

// throws Exception
function TImageCacheBase.createImageFromInputStream(key: TObject; inputStream_: TInputStream): TImage;
begin
        Exit(Self.imageFactory.createImageFromInputStream(TJava.Box(key), inputStream_));
end;
    

function TImageCacheBase.toString: string;
var
  stringBuffer: TStringMaker;
  width: Integer;
  height: Integer;
  total: Integer;
  totalAvailable: Integer;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        for index := (Self.nextIndex) - (1) downto 0 do begin
            width := Self.widths[index];
            height := Self.heights[index];
            total := Self.listOfList[index].size();
            totalAvailable := Self.availableListOfList[index].size();
            stringBuffer.append(' w: ');
            stringBuffer.appendint(width);
            stringBuffer.append(' h: ');
            stringBuffer.appendint(height);
            stringBuffer.append(TCommonSeps.getInstance().SPACE);
            stringBuffer.append(TCommonLabels.getInstance().TOTAL_LABEL);
            stringBuffer.appendint(total);
            stringBuffer.append(' available: ');
            stringBuffer.appendint(totalAvailable);
        end;
        Exit(stringBuffer.toString());
end;
    

function TImageCacheBase.getHashtableP: TABHashtable<TObject, TObject>;
begin
        Exit(Self.hashtable);
end;
    

procedure TImageCacheBase.init(image_: TImage);
begin
end;
    

procedure TImageCacheBase.initProgress;
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

