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
// package org.allbinary.business.advertisement
unit Advertisements;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MyRandomFactory, BasicArrayList, AdvertisementProcessorInterface;

type
  {AB:TYPES}
  TAdvertisements = class(TObject)
  public
    bannerList: TBasicArrayList;
    pageList: TBasicArrayList;
    myRandomFactory: TMyRandomFactory;
    procedure InitFields;
    constructor Create;
        procedure addPage(advertisementProcessorInterface_: IAdvertisementProcessorInterface); virtual;
        procedure startRandomPage; virtual;
        procedure processRandomPage; virtual;
        procedure stopAllPage; virtual;
        procedure addBanner(advertisementProcessorInterface_: IAdvertisementProcessorInterface); virtual;
        procedure startAll; virtual;
        procedure stopAllBanner; virtual;
        function getBanner(index: Integer): IAdvertisementProcessorInterface; virtual;
        procedure stopAll; virtual;
  end;

implementation
uses
  LockedUtil, BasicArrayListD;


{AB:CODE}

procedure TAdvertisements.InitFields;
begin
  Self.bannerList := TBasicArrayListD.Create();
  Self.pageList := TBasicArrayListD.Create();
  Self.myRandomFactory := TMyRandomFactory.getInstance();
end;

constructor TAdvertisements.Create;
begin
  inherited Create;
  InitFields;
end;
    

procedure TAdvertisements.addPage(advertisementProcessorInterface_: IAdvertisementProcessorInterface);
begin
        if not (Self.pageList.contains(TJava.Box(advertisementProcessorInterface_))) then begin
            Self.pageList.add(TJava.Box(advertisementProcessorInterface_));
        end;
end;
    

procedure TAdvertisements.startRandomPage;
var
  size: Integer;
  random: Integer;
  advertisementProcessorInterface_: IAdvertisementProcessorInterface;
begin
        size := Self.pageList.size();
        if (size) > (0) then begin
            random := Self.myRandomFactory.getAbsoluteNextInt(size);
            advertisementProcessorInterface_ := (TJava.ToObject(Self.pageList.objectArray[random]) as IAdvertisementProcessorInterface);
            advertisementProcessorInterface_.start();
        end;
end;
    

procedure TAdvertisements.processRandomPage;
var
  size: Integer;
  random: Integer;
  advertisementProcessorInterface_: IAdvertisementProcessorInterface;
begin
        if TLockedUtil.getInstance().isLocked() then begin
            size := Self.pageList.size();
            if (size) > (0) then begin
                random := Self.myRandomFactory.getAbsoluteNextInt(size);
                advertisementProcessorInterface_ := (TJava.ToObject(Self.pageList.objectArray[random]) as IAdvertisementProcessorInterface);
                advertisementProcessorInterface_.process();
            end;
        end;
end;
    

procedure TAdvertisements.stopAllPage;
var
  advertisementProcessorInterface_: IAdvertisementProcessorInterface;
  index: Integer;
begin
        index := Self.pageList.size();
        while (TJava.PreDec(index)) >= (0) do begin
            advertisementProcessorInterface_ := (TJava.ToObject(Self.pageList.objectArray[index]) as IAdvertisementProcessorInterface);
            advertisementProcessorInterface_.stop();
        end;
end;
    

procedure TAdvertisements.addBanner(advertisementProcessorInterface_: IAdvertisementProcessorInterface);
begin
        if not (Self.bannerList.contains(TJava.Box(advertisementProcessorInterface_))) then begin
            Self.bannerList.add(TJava.Box(advertisementProcessorInterface_));
        end;
end;
    

procedure TAdvertisements.startAll;
var
  advertisementProcessorInterface_: IAdvertisementProcessorInterface;
  index: Integer;
begin
        index := Self.bannerList.size();
        while (TJava.PreDec(index)) >= (0) do begin
            advertisementProcessorInterface_ := (TJava.ToObject(Self.bannerList.objectArray[index]) as IAdvertisementProcessorInterface);
            advertisementProcessorInterface_.start();
        end;
end;
    

procedure TAdvertisements.stopAllBanner;
var
  advertisementProcessorInterface_: IAdvertisementProcessorInterface;
  index: Integer;
begin
        index := Self.bannerList.size();
        while (TJava.PreDec(index)) >= (0) do begin
            advertisementProcessorInterface_ := (TJava.ToObject(Self.bannerList.objectArray[index]) as IAdvertisementProcessorInterface);
            advertisementProcessorInterface_.stop();
        end;
end;
    

function TAdvertisements.getBanner(index: Integer): IAdvertisementProcessorInterface;
var
  advertisementProcessorInterface_: IAdvertisementProcessorInterface;
begin
        advertisementProcessorInterface_ := (TJava.ToObject(Self.bannerList.objectArray[index]) as IAdvertisementProcessorInterface);
        Exit(advertisementProcessorInterface_);
end;
    

procedure TAdvertisements.stopAll;
begin
        Self.stopAllBanner();
        Self.stopAllPage();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

