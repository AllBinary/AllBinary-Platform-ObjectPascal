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
// package org.allbinary.media.image
unit ImageScaleUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, ImageCache;

type
  {AB:TYPES}
  TImageScaleUtil = class(TObject)
  public
    class var instance: TImageScaleUtil;
        class function getInstance: TImageScaleUtil; static;
        constructor Create;
        function createImage2(imageCache_: TImageCache; originalImage: TImage; scaleNominatorX: Single; scaleDenominatorX: Single; scaleNominatorY: Single; scaleDenominatorY: Single; cached: Boolean): TImage; virtual;
        function createImage3(imageCache_: TImageCache; originalImage: TImage; scaleNominatorX: Single; scaleDenominatorX: Single; scaleNominatorY: Single; scaleDenominatorY: Single; cached: Boolean; mutable: Boolean): TImage; virtual;
  end;

implementation

{AB:CODE}
    

class function TImageScaleUtil.getInstance: TImageScaleUtil;
begin
        Exit(TImageScaleUtil.instance);
end;
    

constructor TImageScaleUtil.Create;
begin
    inherited Create;
end;
    

// throws Exception
function TImageScaleUtil.createImage2(imageCache_: TImageCache; originalImage: TImage; scaleNominatorX: Single; scaleDenominatorX: Single; scaleNominatorY: Single; scaleDenominatorY: Single; cached: Boolean): TImage;
begin
        Exit(Self.createImage3(imageCache_, originalImage, scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached, True));
end;
    

// throws Exception
function TImageScaleUtil.createImage3(imageCache_: TImageCache; originalImage: TImage; scaleNominatorX: Single; scaleDenominatorX: Single; scaleNominatorY: Single; scaleDenominatorY: Single; cached: Boolean; mutable: Boolean): TImage;
begin
        Exit(originalImage);
end;

initialization
  {AB:INITIALIZATION}
  TImageScaleUtil.instance := TImageScaleUtil.Create();
  {AB:END}

end.

