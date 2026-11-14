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
unit ImageRotationUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image;

type
  {AB:TYPES}
  TImageRotationUtil = class(TObject)
  public
    anchor: Integer;
    class var instance: TImageRotationUtil;
    procedure InitFields;
        class function getInstance: TImageRotationUtil; static;
        constructor Create;
        function createRotatedImage(originalImage: TImage; rotationInDegrees: Integer): TImage; virtual;
  end;

implementation
uses
  Anchor;


{AB:CODE}

procedure TImageRotationUtil.InitFields;
begin
  Self.anchor := TAnchor.TOP_LEFT;
end;
    

class function TImageRotationUtil.getInstance: TImageRotationUtil;
begin
        Exit(TImageRotationUtil.instance);
end;
    

constructor TImageRotationUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TImageRotationUtil.createRotatedImage(originalImage: TImage; rotationInDegrees: Integer): TImage;
begin
        Exit(originalImage);
end;

initialization
  {AB:INITIALIZATION}
  TImageRotationUtil.instance := TImageRotationUtil.Create();
  {AB:END}

end.

