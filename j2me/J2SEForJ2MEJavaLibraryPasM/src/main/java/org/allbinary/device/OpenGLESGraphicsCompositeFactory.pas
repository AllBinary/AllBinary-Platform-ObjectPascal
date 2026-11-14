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
// package org.allbinary.device
unit OpenGLESGraphicsCompositeFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, OpenGLESGraphicsFactory;

type
  {AB:TYPES}
  TOpenGLESGraphicsCompositeFactory = class(TObject)
  public
    openGLESGraphicsFactory: TOpenGLESGraphicsFactory;
    class var instance: TOpenGLESGraphicsCompositeFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TOpenGLESGraphicsCompositeFactory; static;
        procedure set_(openGLESGraphicsFactory_: TOpenGLESGraphicsFactory); virtual;
        function get: TOpenGLESGraphicsFactory; virtual;
  end;

implementation

{AB:CODE}

procedure TOpenGLESGraphicsCompositeFactory.InitFields;
begin
  Self.openGLESGraphicsFactory := TOpenGLESGraphicsFactory.Create();
end;

constructor TOpenGLESGraphicsCompositeFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TOpenGLESGraphicsCompositeFactory.getInstance: TOpenGLESGraphicsCompositeFactory;
begin
        Exit(TOpenGLESGraphicsCompositeFactory.instance);
end;
    

procedure TOpenGLESGraphicsCompositeFactory.set_(openGLESGraphicsFactory_: TOpenGLESGraphicsFactory);
begin
        Self.openGLESGraphicsFactory := openGLESGraphicsFactory_;
end;
    

function TOpenGLESGraphicsCompositeFactory.get: TOpenGLESGraphicsFactory;
begin
        Exit(Self.openGLESGraphicsFactory);
end;

initialization
  {AB:INITIALIZATION}
  TOpenGLESGraphicsCompositeFactory.instance := TOpenGLESGraphicsCompositeFactory.Create();
  {AB:END}

end.

