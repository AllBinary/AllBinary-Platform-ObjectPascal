// Generated Code Do Not Modify
// package org.allbinary.graphics
unit OpenGLBitmap;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PlatformBitmapBase;

type
  {AB:TYPES}
  TOpenGLBitmap = class(TPlatformBitmapBase)
  public
    bitmap: TObject;
    procedure InitFields;
        constructor Create(bitmap: TObject);
        procedure getPixels(pixels: TArray<Integer>; offset: Integer; stride: Integer; x: Integer; y: Integer; width: Integer; height: Integer); virtual;
        procedure setPixels(pixels: TArray<Integer>; offset: Integer; stride: Integer; x: Integer; y: Integer; width: Integer; height: Integer); virtual;
        procedure recycle; virtual;
  end;

implementation

{AB:CODE}

procedure TOpenGLBitmap.InitFields;
begin
  
end;
    

constructor TOpenGLBitmap.Create(bitmap: TObject);
begin
    inherited Create;
    InitFields;
        Self.bitmap := TJava.Box(bitmap);
end;
    

procedure TOpenGLBitmap.getPixels(pixels: TArray<Integer>; offset: Integer; stride: Integer; x: Integer; y: Integer; width: Integer; height: Integer);
begin
end;
    

procedure TOpenGLBitmap.setPixels(pixels: TArray<Integer>; offset: Integer; stride: Integer; x: Integer; y: Integer; width: Integer; height: Integer);
begin
end;
    

procedure TOpenGLBitmap.recycle;
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

