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
// package javax.microedition.lcdui
unit PlatformImage;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, Graphics;

type
  {AB:TYPES}
  // PlatformNullImageJavaLibrary
  TPlatformImage = class(TObject)
  public
    constructor Create;
        function getImage(graphicsSurface2: TObject): TObject; virtual;
        function getSurfaceWidth(graphicsSurface2: TObject; width: Integer): Integer; virtual;
        function getSurfaceHeight(graphicsSurface2: TObject; height: Integer): Integer; virtual;
        function getWidth(image_: TImage; width: Integer): Integer; virtual;
        function getHeight(image_: TImage; height: Integer): Integer; virtual;
        function getGraphics(graphicsSurface: TObject; width: Integer; height: Integer; image_: TImage): TGraphics; virtual;
        procedure drawImage(image_: TImage; x: Integer; y: Integer; anchor: Integer; g2: TGraphics; g: TObject); virtual;
        procedure drawRegion(image_: TImage; x_src: Integer; y_src: Integer; width: Integer; height: Integer; transform: Integer; x_dst: Integer; y_dst: Integer; anchor: Integer; g: TGraphics); virtual;
        procedure getRGB(argb: TArray<Integer>; offset: Integer; scanlength: Integer; x: Integer; y: Integer; width: Integer; height: Integer; image_: TImage); virtual;
        procedure setRGB(argb: TArray<Integer>; offset: Integer; scanlength: Integer; x: Integer; y: Integer; width: Integer; height: Integer; image_: TImage); virtual;
        function getData(image_: TImage): TArray<Integer>; virtual;
  end;

implementation
uses
  NullImage, NullUtil;


{AB:CODE}

constructor TPlatformImage.Create;
begin
  inherited Create;
end;
    

function TPlatformImage.getImage(graphicsSurface2: TObject): TObject;
begin
        Exit(TJava.Box(TNullImage.NULL_IMAGE));
end;
    

function TPlatformImage.getSurfaceWidth(graphicsSurface2: TObject; width: Integer): Integer;
begin
        Exit(width);
end;
    

function TPlatformImage.getSurfaceHeight(graphicsSurface2: TObject; height: Integer): Integer;
begin
        Exit(height);
end;
    

function TPlatformImage.getWidth(image_: TImage; width: Integer): Integer;
begin
        Exit(width);
end;
    

function TPlatformImage.getHeight(image_: TImage; height: Integer): Integer;
begin
        Exit(height);
end;
    

function TPlatformImage.getGraphics(graphicsSurface: TObject; width: Integer; height: Integer; image_: TImage): TGraphics;
begin
        raise SysUtils.Exception.Create('');
end;
    

procedure TPlatformImage.drawImage(image_: TImage; x: Integer; y: Integer; anchor: Integer; g2: TGraphics; g: TObject);
begin
end;
    

procedure TPlatformImage.drawRegion(image_: TImage; x_src: Integer; y_src: Integer; width: Integer; height: Integer; transform: Integer; x_dst: Integer; y_dst: Integer; anchor: Integer; g: TGraphics);
begin
end;
    

procedure TPlatformImage.getRGB(argb: TArray<Integer>; offset: Integer; scanlength: Integer; x: Integer; y: Integer; width: Integer; height: Integer; image_: TImage);
begin
end;
    

procedure TPlatformImage.setRGB(argb: TArray<Integer>; offset: Integer; scanlength: Integer; x: Integer; y: Integer; width: Integer; height: Integer; image_: TImage);
begin
end;
    

function TPlatformImage.getData(image_: TImage): TArray<Integer>;
begin
        Exit(TNullUtil.getInstance().NULL_INT_ARRAY);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

