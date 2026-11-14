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
// package org.allbinary.image.opengles
unit OpenGLESImage;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL, GL10, Image, PlatformBitmapBase, PlatformBitmapBaseFactory, PlatformTextureBaseFactory, CommonStrings, BasicArrayList, OpenGLESImageProperties, OpenGLSurfaceChangedInterface;

type
  {AB:TYPES}
  // OpenGLESNullImageJ2MEJavaLibrary
  TOpenGLESImage = class(TInterfacedObject, IOpenGLSurfaceChangedInterface)
  public
    commonStrings: TCommonStrings;
    textureFactory: TPlatformTextureBaseFactory;
    openGLBitmap: TPlatformBitmapBase;
    openGLESImageProperties: TOpenGLESImageProperties;
    class var NULL_OPENGL_IMAGE: TOpenGLESImage;
    class var texture2dList: TBasicArrayList;
    class var TYPE_: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(image_: TImage; bitmapFactory: TPlatformBitmapBaseFactory; textureFactory: TPlatformTextureBaseFactory);
        procedure set_(gl_: IGL); virtual;
        function initTexture(gl_: IGL10): Boolean; virtual;
        procedure drawRegion(gl_: IGL10; viewHeight: Integer; x_src: Single; y_src: Single; width: Single; height: Single; x: Integer; y: Integer; z: Integer); virtual;
        procedure draw(gl_: IGL10; x: Integer; y: Integer; z: Integer); virtual;
        function getType: Integer; virtual;
  end;

implementation
uses
  NullImage, BasicArrayListD;


{AB:CODE}

procedure TOpenGLESImage.InitFields;
begin
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  Self.openGLESImageProperties := TOpenGLESImageProperties.Create();
end;

function TOpenGLESImage.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TOpenGLESImage.Create(image_: TImage; bitmapFactory: TPlatformBitmapBaseFactory; textureFactory: TPlatformTextureBaseFactory);
begin
    inherited Create;
    InitFields;
        Self.openGLBitmap := bitmapFactory.createBitmap(image_);
        Self.textureFactory := textureFactory;
end;
    

// throws Exception
procedure TOpenGLESImage.set_(gl_: IGL);
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

function TOpenGLESImage.initTexture(gl_: IGL10): Boolean;
begin
        Exit(False);
end;
    

procedure TOpenGLESImage.drawRegion(gl_: IGL10; viewHeight: Integer; x_src: Single; y_src: Single; width: Single; height: Single; x: Integer; y: Integer; z: Integer);
begin
end;
    

procedure TOpenGLESImage.draw(gl_: IGL10; x: Integer; y: Integer; z: Integer);
begin
end;
    

function TOpenGLESImage.getType: Integer;
begin
        Exit(TOpenGLESImage.TYPE_);
end;

initialization
  {AB:INITIALIZATION}
  TOpenGLESImage.NULL_OPENGL_IMAGE := TOpenGLESImage.Create(TNullImage.NULL_IMAGE, TPlatformBitmapBaseFactory.NULL_PLATFORM_BITMAP_BASE_FACTORY, TPlatformTextureBaseFactory.NULL_PLATFORM_TEXTURE_BASE_FACTORY);
  TOpenGLESImage.texture2dList := TBasicArrayListD.Create();
  TOpenGLESImage.TYPE_ := 4;
  {AB:END}

end.

