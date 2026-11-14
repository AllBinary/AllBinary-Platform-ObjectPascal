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
unit ImageToRotationImageArrayUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image;

type
  {AB:TYPES}
  TImageToRotationImageArrayUtil = class(TObject)
  public
    class var instance: TImageToRotationImageArrayUtil;
        class function getInstance: TImageToRotationImageArrayUtil; static;
        constructor Create;
        function generate(image_: TImage; angleIncrement: Integer; totalAngle: Integer): TArray<TImage>; virtual;
  end;

implementation
uses
  ImageRotationUtil;


{AB:CODE}
    

class function TImageToRotationImageArrayUtil.getInstance: TImageToRotationImageArrayUtil;
begin
        Exit(TImageToRotationImageArrayUtil.instance);
end;
    

constructor TImageToRotationImageArrayUtil.Create;
begin
    inherited Create;
end;
    

// throws Exception
function TImageToRotationImageArrayUtil.generate(image_: TImage; angleIncrement: Integer; totalAngle: Integer): TArray<TImage>;
var
  imageRotationUtil_: TImageRotationUtil;
  totalFrames: Integer;
  imageArray: TArray<TImage>;
  index: Integer;
begin
        imageRotationUtil_ := TImageRotationUtil.getInstance();
        totalFrames := (totalAngle) div (angleIncrement);
        imageArray := TJava.NewArray<TImage>(totalFrames);
        imageArray[0] := image_;
        for index := 1 to totalFrames - 1 do begin
            imageArray[index] := imageRotationUtil_.createRotatedImage(image_, (index) * (angleIncrement));
        end;
        Exit(imageArray);
end;

initialization
  {AB:INITIALIZATION}
  TImageToRotationImageArrayUtil.instance := TImageToRotationImageArrayUtil.Create();
  {AB:END}

end.

