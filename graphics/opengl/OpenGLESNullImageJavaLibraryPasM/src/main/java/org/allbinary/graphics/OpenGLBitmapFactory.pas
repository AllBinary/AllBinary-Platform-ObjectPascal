// Generated Code Do Not Modify
// package org.allbinary.graphics
unit OpenGLBitmapFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, PlatformBitmapBase, PlatformBitmapBaseFactory, Config, OpenGLBitmap;

type
  {AB:TYPES}
  TConfig = class(TObject)
  public
    bitmapConfig: TObject;
    procedure InitFields;
        constructor Create(bitmapConfig: TObject);
  end;
  TOpenGLBitmapFactory = class(TPlatformBitmapBaseFactory)
  public
    ARGB_8888: TConfig;
    class var instance: TOpenGLBitmapFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TOpenGLBitmapFactory; static;
        function createBitmap(width: Integer; height: Integer; config_: TConfig): TOpenGLBitmap; overload; virtual;
        function decodeStream(inputStream_: TInputStream): TOpenGLBitmap; virtual;
        function createBitmap(image_: TImage): TPlatformBitmapBase; overload; override;
  end;

implementation
uses
  NullUtil;


{AB:CODE}

procedure TConfig.InitFields;
begin
  
end;
    

    constructor TConfig.Create(bitmapConfig: TObject);
begin
        inherited Create;
        InitFields;
            Self.bitmapConfig := TJava.Box(bitmapConfig);
end;

procedure TOpenGLBitmapFactory.InitFields;
begin
  Self.ARGB_8888 := TConfig.Create(TJava.Box(TNullUtil.getInstance().NULL_OBJECT));
end;

constructor TOpenGLBitmapFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TOpenGLBitmapFactory.getInstance: TOpenGLBitmapFactory;
begin
        Exit(TOpenGLBitmapFactory.instance);
end;
    

function TOpenGLBitmapFactory.createBitmap(width: Integer; height: Integer; config_: TConfig): TOpenGLBitmap;
begin
        Exit(TOpenGLBitmap.Create(TJava.Box(TNullUtil.getInstance().NULL_OBJECT)));
end;
    

// throws IOException
function TOpenGLBitmapFactory.decodeStream(inputStream_: TInputStream): TOpenGLBitmap;
begin
        Exit(TOpenGLBitmap.Create(TJava.Box(TNullUtil.getInstance().NULL_OBJECT)));
end;
    

function TOpenGLBitmapFactory.createBitmap(image_: TImage): TPlatformBitmapBase;
begin
        Exit(TOpenGLBitmap.Create(TJava.Box(TNullUtil.getInstance().NULL_OBJECT)));
end;

initialization
  {AB:INITIALIZATION}
  TOpenGLBitmapFactory.instance := TOpenGLBitmapFactory.Create();
  {AB:END}

end.

