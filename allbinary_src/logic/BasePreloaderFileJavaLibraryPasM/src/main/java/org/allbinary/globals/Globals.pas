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
// package org.allbinary.globals
unit Globals;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil;

type
  {AB:TYPES}
  TGlobals = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TGlobals;
    procedure InitFields;
        class function getInstance: TGlobals; static;
        constructor Create;
        procedure init(classLoader: TClassLoader; pathString: string); virtual;
  end;

implementation
uses
  AppUrlGlobals, URLGLOBALS, StringMaker, WebappClassLoaderInfo, CommonSeps, CommonStrings;


{AB:CODE}

procedure TGlobals.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TGlobals.getInstance: TGlobals;
begin
        Exit(TGlobals.instance);
end;
    

constructor TGlobals.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TGlobals.init(classLoader: TClassLoader; pathString: string);
var
  commonStrings_: TCommonStrings;
  appUrlGlobals_: TAppUrlGlobals;
  stringBuffer: TStringMaker;
  stringValidationUtil_: TObject;
begin
        commonStrings_ := TCommonStrings.getInstance();
        appUrlGlobals_ := TAppUrlGlobals.Create();
        appUrlGlobals_.setWebappPath(pathString);
        TURLGLOBALS.init(appUrlGlobals_);
        TWebappClassLoaderInfo.setLoader(classLoader);
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('Setting Up AllBinary System Configuration Args: ');
        stringBuffer.append(pathString);
        stringBuffer.append(' ClassLoader: ');
        stringBuffer.append(TJava.ToObject(classLoader).ClassType.ClassName);
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), commonStrings_.INIT);
        stringValidationUtil_ := nil;
        if (pathString = '') then begin
            stringBuffer.delete_(0, stringBuffer.length());
            stringBuffer.append('No Path Provided. Using Process Path: ');
            stringBuffer.append(pathString);
            stringBuffer.append(TCommonSeps.getInstance().SPACE);
            stringBuffer.append(TCommonSeps.getInstance().EQUALS);
            stringBuffer.append(TCommonSeps.getInstance().SPACE);
            stringBuffer.append(TURLGLOBALS.getWebappPath());
            Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), commonStrings_.INIT);
        end;
        stringBuffer.delete_(0, stringBuffer.length());
        stringBuffer.append('Webapp Path Set To: ');
        stringBuffer.append(TURLGLOBALS.getWebappPath());
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), commonStrings_.INIT);
end;

initialization
  {AB:INITIALIZATION}
  TGlobals.instance := TGlobals.Create();
  {AB:END}

end.

