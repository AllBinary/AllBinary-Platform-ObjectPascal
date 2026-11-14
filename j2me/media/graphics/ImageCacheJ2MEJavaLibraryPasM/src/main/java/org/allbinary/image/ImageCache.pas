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
unit ImageCache;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, TsUtil, CommonStrings, ImageCacheBase;

type
  {AB:TYPES}
  TImageCache = class(TImageCacheBase)
  public
    commonStrings: TCommonStrings;
    tsUtil: TTsUtil;
    class var NULL_IMAGE_CACHE: TImageCache;
    procedure InitFields;
        constructor Create;
        procedure addListener(renderer: TObject); virtual;
        function getIndex(key: TObject): Integer; virtual;
        function get(caller: string; width: Integer; height: Integer): TImage; override;
        function getWithKey(key: TObject): TImage; override;
        procedure loadImageForAnimation; virtual;
        procedure progressEnded; virtual;
        procedure runTask; virtual;
        function isLazy: Boolean; virtual;
  end;

implementation
uses
  NullImage, J2MEUtil, ResourceUtil, GDResources, ABSystemWrapper, StringMaker, StringUtil, Memory;


{AB:CODE}

procedure TImageCache.InitFields;
begin
  Self.commonStrings := TCommonStrings.getInstance();
  Self.tsUtil := TTsUtil.getInstance();
end;
    

constructor TImageCache.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TImageCache.addListener(renderer: TObject);
begin
end;
    

function TImageCache.getIndex(key: TObject): Integer;
var
  gdResources_: TGDResources;
  resourceStringArray: TArray<string>;
  size: Integer;
  index: Integer;
begin
        gdResources_ := TGDResources.getInstance();
        resourceStringArray := gdResources_.resourceStringArray;
        size := System.Length(resourceStringArray);
        for index := 0 to size - 1 do begin
            if TJava.Equals(resourceStringArray[index], key) then begin
                Exit(index);
            end;
        end;
        Self.logUtil.putF(TStringMaker.Create().append('unable to find key: ').append(TStringUtil.getInstance().toString(key)).toString(), TJava.Box(Self), Self.commonStrings.RUN);
        raise SysUtils.Exception.Create('');
end;
    

// throws Exception
function TImageCache.get(caller: string; width: Integer; height: Integer): TImage;
var
  foundIndex: Integer;
  image_: TImage;
  widths: TArray<Integer>;
begin
        foundIndex := Self.getIndexWH(width, height);
        image_ := Self.getFromAvailable(foundIndex, width, height);
        if (image_) = (TNullImage.NULL_IMAGE) then begin
            Self.volume := (Self.volume) + ((width) * (height));
            if (Self.volume) > (32000) then begin
                Self.tsUtil.gc();
                Self.volume := 0;
            end;
            image_ := Self.createImage(caller, width, height);
            widths := Self.widths;
            if (Self.nextIndex) > ((System.Length(widths)) - (1)) then begin
                if (foundIndex) = (-1) then begin
                    foundIndex := Self.nextIndex;
                    widths[Self.nextIndex] := width;
                    Self.heights[Self.nextIndex] := height;
                    Inc(Self.nextIndex);
                end;
                Self.listOfList[foundIndex].add(image_);
            end;
        end;
        Exit(image_);
end;
    

// throws Exception
function TImageCache.getWithKey(key: TObject): TImage;
var
  image_: TImage;
  resourceUtil_: TResourceUtil;
  resourceInputStream: TInputStream;
begin
        image_ := Self.getImage(key);
        if (image_) = (TNullImage.NULL_IMAGE) then begin
            resourceUtil_ := TResourceUtil.getInstance();
            resourceInputStream := resourceUtil_.getResourceAsStream(TJava.UnboxString(TJava.ToObject(key)));
            if (resourceInputStream) = (nil) then begin
                raise SysUtils.Exception.Create(TStringMaker.Create().append('Image resource is not available for key: ').append(TStringUtil.getInstance().toString(key)).toString());
            end;
            try
                image_ := Self.createImageFromInputStream(TJava.Box(key), resourceInputStream);
            except
                on e: SysUtils.Exception do begin
                Self.logUtil.put('Exception: Trying Again After GC', TJava.Box(Self), Self.commonStrings.GET, TJava.Box(e));
                Self.logUtil.putF(TStringMaker.Create().append('InputStream: ').append(TStringUtil.getInstance().toString(resourceInputStream)).toString(), TJava.Box(Self), Self.commonStrings.GET);
                Self.tsUtil.gc();
                Self.tsUtil.gc();
                Self.logUtil.putF(TMemory.getInfo(), TJava.Box(Self), Self.commonStrings.GET);
                SysUtils.Sleep(100);
                image_ := Self.createImageFromInputStream(TJava.Box(key), resourceInputStream);
                end;
            end;
            if TJ2MEUtil.isHTML() then begin
            end else begin
                resourceInputStream.close();
            end;
            Self.hashtable.put(TJava.Box(key), TJava.Box(image_));
        end;
        Exit(image_);
end;
    

// throws Exception
procedure TImageCache.loadImageForAnimation;
begin
end;
    

procedure TImageCache.progressEnded;
begin
end;
    

procedure TImageCache.runTask;
begin
end;
    

function TImageCache.isLazy: Boolean;
begin
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  TImageCache.NULL_IMAGE_CACHE := TImageCache.Create();
  {AB:END}

end.

