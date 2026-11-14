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
unit OpenGLImageSpecificFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, OpenGLImageFactory;

type
  {AB:TYPES}
  TOpenGLImageSpecificFactory = class(TObject)
  public
    imageFactory: TOpenGLImageFactory;
    updating: Boolean;
    class var instance: TOpenGLImageSpecificFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TOpenGLImageSpecificFactory; static;
        procedure setImageFactory(imageFactory: TOpenGLImageFactory); virtual;
        function getImageFactory: TOpenGLImageFactory; virtual;
  end;

implementation
uses
  PreLogUtil, StringMaker, StringUtil;


{AB:CODE}

procedure TOpenGLImageSpecificFactory.InitFields;
begin
  Self.imageFactory := TOpenGLImageFactory.NULL_OPENGL_IMAGE_FACTORY;
  Self.updating := False;
end;

constructor TOpenGLImageSpecificFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TOpenGLImageSpecificFactory.getInstance: TOpenGLImageSpecificFactory;
begin
        Exit(TOpenGLImageSpecificFactory.instance);
end;
    

procedure TOpenGLImageSpecificFactory.setImageFactory(imageFactory: TOpenGLImageFactory);
begin
        Self.imageFactory := imageFactory;
        TPreLogUtil.put(TStringMaker.Create().append('Selected Image Factory: ').append(TStringUtil.getInstance().toString(Self.imageFactory)).toString(), TJava.Box(Self), 'setImageFactory');
end;
    

function TOpenGLImageSpecificFactory.getImageFactory: TOpenGLImageFactory;
begin
        Exit(Self.imageFactory);
end;

initialization
  {AB:INITIALIZATION}
  TOpenGLImageSpecificFactory.instance := TOpenGLImageSpecificFactory.Create();
  {AB:END}

end.

