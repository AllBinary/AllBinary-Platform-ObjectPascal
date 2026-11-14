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
unit IndexedAnimationToImageArrayUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, IndexedAnimation;

type
  {AB:TYPES}
  TIndexedAnimationToImageArrayUtil = class(TObject)
  public
    constructor Create;
        class function getInstance(width: Integer; height: Integer; sequentialAnimationInterface: TIndexedAnimation): TArray<TImage>; static;
  end;

implementation
uses
  AnimationFrameToImageUtil;


{AB:CODE}

constructor TIndexedAnimationToImageArrayUtil.Create;
begin
  inherited Create;
end;
    

// throws Exception
class function TIndexedAnimationToImageArrayUtil.getInstance(width: Integer; height: Integer; sequentialAnimationInterface: TIndexedAnimation): TArray<TImage>;
var
  size: Integer;
  imageArray: TArray<TImage>;
  index: Integer;
begin
        size := sequentialAnimationInterface.getAnimationSize();
        imageArray := TJava.NewArray<TImage>(size);
        for index := 0 to size - 1 do begin
            sequentialAnimationInterface.setFrame(index);
            imageArray[index] := TAnimationFrameToImageUtil.getInstance().getInstanceWH(width, height, sequentialAnimationInterface);
        end;
        Exit(imageArray);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

