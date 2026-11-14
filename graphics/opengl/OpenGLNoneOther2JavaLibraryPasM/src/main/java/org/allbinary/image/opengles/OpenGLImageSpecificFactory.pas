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
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TOpenGLImageSpecificFactory = class(TObject)
  public
    updating: Boolean;
    class var instance: TOpenGLImageSpecificFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TOpenGLImageSpecificFactory; static;
  end;

implementation
uses
  PreLogUtil, StringMaker, StringUtil;


{AB:CODE}

procedure TOpenGLImageSpecificFactory.InitFields;
begin
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

initialization
  {AB:INITIALIZATION}
  TOpenGLImageSpecificFactory.instance := TOpenGLImageSpecificFactory.Create();
  {AB:END}

end.

