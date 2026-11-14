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
// package org.allbinary.platform.graphics
unit PlatformBitmapBase;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, BasicColor;

type
  {AB:TYPES}
  TPlatformBitmapBase = class(TObject)
  public
    alpha: Integer;
    basicColor: TBasicColor;
    class var NULL_PLATFORM_BITMAP_BASE: TPlatformBitmapBase;
    procedure InitFields;
    constructor Create;
        function getWidth: Integer; virtual;
        function getHeight: Integer; virtual;
        function getImage: TImage; virtual;
  end;

implementation
uses
  NullImage, BasicColorFactory;


{AB:CODE}

procedure TPlatformBitmapBase.InitFields;
begin
  Self.alpha := 255;
  Self.basicColor := TBasicColorFactory.getInstance().NULL_COLOR;
end;

constructor TPlatformBitmapBase.Create;
begin
  inherited Create;
  InitFields;
end;
    

function TPlatformBitmapBase.getWidth: Integer;
begin
        Exit(0);
end;
    

function TPlatformBitmapBase.getHeight: Integer;
begin
        Exit(0);
end;
    

function TPlatformBitmapBase.getImage: TImage;
begin
        Exit(TNullImage.NULL_IMAGE);
end;

initialization
  {AB:INITIALIZATION}
  TPlatformBitmapBase.NULL_PLATFORM_BITMAP_BASE := TPlatformBitmapBase.Create();
  {AB:END}

end.

