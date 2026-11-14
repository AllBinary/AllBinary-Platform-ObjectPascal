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
// package org.allbinary.graphics.opengles
unit OpenGLFeatureUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TOpenGLFeatureUtil = class(TObject)
  public
    class var instance: TOpenGLFeatureUtil;
        class function getInstance: TOpenGLFeatureUtil; static;
        constructor Create;
        function isAnyThreed: Boolean; virtual;
  end;

implementation

{AB:CODE}
    

class function TOpenGLFeatureUtil.getInstance: TOpenGLFeatureUtil;
begin
        Exit(TOpenGLFeatureUtil.instance);
end;
    

constructor TOpenGLFeatureUtil.Create;
begin
    inherited Create;
end;
    

function TOpenGLFeatureUtil.isAnyThreed: Boolean;
begin
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  TOpenGLFeatureUtil.instance := TOpenGLFeatureUtil.Create();
  {AB:END}

end.

