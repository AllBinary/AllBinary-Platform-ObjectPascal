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
// package org.allbinary.graphics.opengles.renderer
unit AllBinaryRendererBase3;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL10, Image, BasicArrayList;

type
  {AB:TYPES}
  TAllBinaryRendererBase3 = class(TObject)
  public
    list: TBasicArrayList;
    procedure InitFields;
    constructor Create;
        procedure update(gl: IGL10); virtual;
        procedure add(image_: TImage); virtual;
  end;

implementation
uses
  OpenGLESImage, BasicArrayListD;


{AB:CODE}

procedure TAllBinaryRendererBase3.InitFields;
begin
  Self.list := TBasicArrayListD.Create();
end;

constructor TAllBinaryRendererBase3.Create;
begin
  inherited Create;
  InitFields;
end;
    

// throws Exception
procedure TAllBinaryRendererBase3.update(gl: IGL10);
var
  openGLESImage_: TOpenGLESImage;
begin
        while (Self.list.size()) > (0) do begin
            openGLESImage_ := TOpenGLESImage(TJava.ToObject(Self.list.removeAt(0)));
            if (openGLESImage_) <> (nil) then begin
                openGLESImage_.set_(gl);
            end;
        end;
end;
    

procedure TAllBinaryRendererBase3.add(image_: TImage);
begin
        Self.list.add(TJava.Box(image_));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

