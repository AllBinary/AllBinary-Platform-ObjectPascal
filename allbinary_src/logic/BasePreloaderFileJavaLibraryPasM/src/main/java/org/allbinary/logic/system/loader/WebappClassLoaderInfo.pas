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
// package org.allbinary.logic.system.loader
unit WebappClassLoaderInfo;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TWebappClassLoaderInfo = class(TObject)
  public
    class var classLoader: TObject;
        constructor Create;
        class procedure setLoader(classLoader: TClassLoader); static;
        class function getLoader: TClassLoader; static;
  end;

implementation
uses
  NullUtil;


{AB:CODE}
    

constructor TWebappClassLoaderInfo.Create;
begin
    inherited Create;
end;
    

class procedure TWebappClassLoaderInfo.setLoader(classLoader: TClassLoader);
begin
    TJava.MonitorEnter(nil);
    try
        TWebappClassLoaderInfo.classLoader := classLoader;
    finally
    TJava.MonitorExit(nil);
    end;
end;
    

class function TWebappClassLoaderInfo.getLoader: TClassLoader;
begin
    TJava.MonitorEnter(nil);
    try
        Exit(TClassLoader(TJava.ToObject(TWebappClassLoaderInfo.classLoader)));
    finally
    TJava.MonitorExit(nil);
    end;
end;

initialization
  {AB:INITIALIZATION}
  TWebappClassLoaderInfo.classLoader := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

