{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.media.image
unit ImageModifierUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, BasicColor;

type
  {AB:TYPES}
  TImageModifierUtil = class(TObject)
  public
    class var instance: TImageModifierUtil;
    constructor Create;
        class function getInstanceOrCreate: TImageModifierUtil; static;
        procedure setColor(unusedOriginalImage: TImage; image_: TImage; imageIndex: Integer; basicColor_: TBasicColor); virtual;
        procedure changeColor(unusedOriginalImage: TImage; image_: TImage; imageIndex: Integer; basicColor_: TBasicColor); virtual;
        procedure setAlpha(originalImage: TImage; image_: TImage; imageIndex: Integer; alphaInt: Integer); virtual;
        function getImageArray(originalImageArray: TArray<TImage>): TArray<TImage>; virtual;
        procedure handleImage(imageArray: TArray<TImage>; index: Integer; image_: TImage); virtual;
        procedure reset; virtual;
  end;

implementation

{AB:CODE}

constructor TImageModifierUtil.Create;
begin
  inherited Create;
end;
    

class function TImageModifierUtil.getInstanceOrCreate: TImageModifierUtil;
begin
        Exit(TImageModifierUtil.instance);
end;
    

procedure TImageModifierUtil.setColor(unusedOriginalImage: TImage; image_: TImage; imageIndex: Integer; basicColor_: TBasicColor);
begin
end;
    

procedure TImageModifierUtil.changeColor(unusedOriginalImage: TImage; image_: TImage; imageIndex: Integer; basicColor_: TBasicColor);
begin
end;
    

procedure TImageModifierUtil.setAlpha(originalImage: TImage; image_: TImage; imageIndex: Integer; alphaInt: Integer);
begin
end;
    

function TImageModifierUtil.getImageArray(originalImageArray: TArray<TImage>): TArray<TImage>;
begin
        Exit(originalImageArray);
end;
    

procedure TImageModifierUtil.handleImage(imageArray: TArray<TImage>; index: Integer; image_: TImage);
begin
end;
    

procedure TImageModifierUtil.reset;
begin
end;

initialization
  {AB:INITIALIZATION}
  TImageModifierUtil.instance := TImageModifierUtil.Create();
  {AB:END}

end.

