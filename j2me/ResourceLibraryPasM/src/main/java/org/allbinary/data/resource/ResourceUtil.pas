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
// package org.allbinary.data.resource
unit ResourceUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil;

type
  {AB:TYPES}
  // J2SE - J2ME
  TResourceUtil = class(TObject)
  public
    logUtil: TLogUtil;
    class var classLoader: TObject;
    class var instance: TResourceUtil;
    procedure InitFields;
        class function getInstance: TResourceUtil; static;
        constructor Create;
        procedure setLoadingPaths(path: string; ext: string); virtual;
        procedure setClassLoader(classLoader: TClassLoader); virtual;
        function getResourceAsStream(resource: string): TInputStream; virtual;
        function getResourceAsStreamAtStart(resource: string; startIndex: Integer): TInputStream;
        procedure addResource(resource: string; value: Integer); virtual;
  end;

implementation
uses
  NullUtil, StringMaker, CommonSeps, CommonStrings;


{AB:CODE}

procedure TResourceUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TResourceUtil.getInstance: TResourceUtil;
begin
        Exit(TResourceUtil.instance);
end;
    

constructor TResourceUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TResourceUtil.setLoadingPaths(path: string; ext: string);
begin
        Self.logUtil.putF(TCommonStrings.getInstance().NOT_IMPLEMENTED, TJava.Box(Self), 'setLoadingPaths');
end;
    

procedure TResourceUtil.setClassLoader(classLoader: TClassLoader);
begin
        Self.logUtil.putF(TStringMaker.Create().append('Resource Loader: ').append(TJava.ToObject(classLoader).ClassType.ClassName).toString(), TJava.Box(Self), 'setClassLoader');
        TResourceUtil.classLoader := classLoader;
end;
    

// throws Exception
function TResourceUtil.getResourceAsStream(resource: string): TInputStream;
var
  inputStream_: TInputStream;
begin
        inputStream_ := Self.getResourceAsStreamAtStart(resource, 2);
        if (inputStream_) = (nil) then begin
            inputStream_ := Self.getResourceAsStreamAtStart(resource, 1);
            if (inputStream_) = (nil) then begin
                raise SysUtils.Exception.Create(TStringMaker.Create().append('Unable to obtain: ').append(resource).toString());
            end;
        end;
        Exit(inputStream_);
end;
    

// throws Exception
function TResourceUtil.getResourceAsStreamAtStart(resource: string; startIndex: Integer): TInputStream;
var
  commonSeps_: TCommonSeps;
  index: Integer;
  resourcePath: string;
  inputStream_: TInputStream;
  classLoader: TClassLoader;
begin
        commonSeps_ := TCommonSeps.getInstance();
        index := (Pos(TJava.ToString(commonSeps_.COLON), resource) - 1);
        resourcePath := Copy(resource, ((index) + (startIndex)) + 1, MaxInt);
        inputStream_ := TClassLoader.getSystemClassLoader().getResourceAsStream(resourcePath);
        if (inputStream_) <> (nil) then begin
            Exit(inputStream_);
        end;
        classLoader := TClassLoader(TJava.ToObject(TResourceUtil.classLoader));
        inputStream_ := classLoader.getResourceAsStream(resourcePath);
        if (inputStream_) <> (nil) then begin
            Exit(inputStream_);
        end;
        inputStream_ := TClassLoader.getSystemClassLoader().getResourceAsStream(resourcePath);
        if (inputStream_) <> (nil) then begin
            Exit(inputStream_);
        end;
        Exit(inputStream_);
end;
    

procedure TResourceUtil.addResource(resource: string; value: Integer);
begin
end;

initialization
  {AB:INITIALIZATION}
  TResourceUtil.classLoader := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  TResourceUtil.instance := TResourceUtil.Create();
  {AB:END}

end.

