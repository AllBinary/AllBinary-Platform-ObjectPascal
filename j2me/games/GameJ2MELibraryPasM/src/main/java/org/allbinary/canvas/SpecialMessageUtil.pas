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
// package org.allbinary.canvas
unit SpecialMessageUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TSpecialMessageUtil = class(TObject)
  public
    class var SINGLETON: TSpecialMessageUtil;
    constructor Create;
        class function getInstance: TSpecialMessageUtil; static;
        function get: string; virtual;
  end;

implementation
uses
  GameStatisticsFactory, Features, OpenGLFeatureFactory, StringMaker, CommonSeps, Memory;


{AB:CODE}

constructor TSpecialMessageUtil.Create;
begin
  inherited Create;
end;
    

class function TSpecialMessageUtil.getInstance: TSpecialMessageUtil;
begin
        Exit(TSpecialMessageUtil.SINGLETON);
end;
    

function TSpecialMessageUtil.get: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(TMemory.getInfo());
        stringBuffer.append(TCommonSeps.getInstance().SPACE);
        stringBuffer.append(TGameStatisticsFactory.getInstance().toString());
        stringBuffer.append(TCommonSeps.getInstance().SPACE);
        stringBuffer.append(' Option: ');
        if TFeatures.getInstance().isDefault(TOpenGLFeatureFactory.getInstance().OPENGL_AUTO_SELECT) then begin
            stringBuffer.append(TOpenGLFeatureFactory.getInstance().OPENGL_AUTO_SELECT.getName());
        end else begin
            stringBuffer.append(TOpenGLFeatureFactory.getInstance().OPENGL_MINIMUM.getName());
        end;
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  TSpecialMessageUtil.SINGLETON := TSpecialMessageUtil.Create();
  {AB:END}

end.

