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
// package org.allbinary.image.opengles
unit OpenGLESImageExclusionUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, BasicArrayList;

type
  {AB:TYPES}
  TOpenGLESImageExclusionUtil = class(TObject)
  public
    list: TBasicArrayList;
    class var instance: TOpenGLESImageExclusionUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TOpenGLESImageExclusionUtil; static;
        function isCustomScaling(image_: TImage): Boolean; virtual;
  end;

implementation
uses
  BasicArrayListD;


{AB:CODE}

procedure TOpenGLESImageExclusionUtil.InitFields;
begin
  Self.list := TBasicArrayListD.Create();
end;

constructor TOpenGLESImageExclusionUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TOpenGLESImageExclusionUtil.getInstance: TOpenGLESImageExclusionUtil;
begin
        Exit(TOpenGLESImageExclusionUtil.instance);
end;
    

function TOpenGLESImageExclusionUtil.isCustomScaling(image_: TImage): Boolean;
begin
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  TOpenGLESImageExclusionUtil.instance := TOpenGLESImageExclusionUtil.Create();
  {AB:END}

end.

