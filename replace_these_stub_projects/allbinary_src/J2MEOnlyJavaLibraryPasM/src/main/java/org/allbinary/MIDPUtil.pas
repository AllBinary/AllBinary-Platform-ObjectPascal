{

  AllBinary Open License Version 1
  Copyright (c) 2026 AllBinary
 
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
 
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
 
  Created By: Travis Berthelot
  
}
// Generated Code Do Not Modify
// package org.allbinary
unit MIDPUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Form, Image, Item, Player;

type
  {AB:TYPES}
  // like microemu-playn, so the languages without overloading can be generated. J2ME uses the MIDP overloads.
  TMIDPUtil = class(TObject)
  public
    class var instance: TMIDPUtil;
    constructor Create;
        class function getInstance: TMIDPUtil; static;
        function createImageWH(width: Integer; height: Integer): TImage; virtual;
        function createImageFromByteArray(imageData: TArray<ShortInt>; imageOffset: Integer; imageLength: Integer): TImage; virtual;
        function createImageFromInputStream(inputStream_: TInputStream): TImage; virtual;
        function createPlayerFromInputStream(inputStream_: TInputStream; type_: string): IPlayer; virtual;
        function appendItem(form_: TForm; item_: TItem): Integer; virtual;
  end;

implementation
uses
  Manager, MediaException;


{AB:CODE}

constructor TMIDPUtil.Create;
begin
  inherited Create;
end;
    

class function TMIDPUtil.getInstance: TMIDPUtil;
begin
        Exit(TMIDPUtil.instance);
end;
    

function TMIDPUtil.createImageWH(width: Integer; height: Integer): TImage;
begin
        Exit(TImage.createImage(width, height));
end;
    

function TMIDPUtil.createImageFromByteArray(imageData: TArray<ShortInt>; imageOffset: Integer; imageLength: Integer): TImage;
begin
        Exit(TImage.createImage(imageData, imageOffset, imageLength));
end;
    

// throws IOException
function TMIDPUtil.createImageFromInputStream(inputStream_: TInputStream): TImage;
begin
        Exit(TImage.createImage(inputStream_));
end;
    

// throws IOException, MediaException
function TMIDPUtil.createPlayerFromInputStream(inputStream_: TInputStream; type_: string): IPlayer;
begin
        Exit(TManager.createPlayer(inputStream_, type_));
end;
    

function TMIDPUtil.appendItem(form_: TForm; item_: TItem): Integer;
begin
        Exit(form_.append(item_));
end;

initialization
  {AB:INITIALIZATION}
  TMIDPUtil.instance := TMIDPUtil.Create();
  {AB:END}

end.

