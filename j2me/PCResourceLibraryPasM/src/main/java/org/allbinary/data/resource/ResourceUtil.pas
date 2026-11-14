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
  // J2SE - PC
  TResourceUtil = class(TObject)
  public
    logUtil: TLogUtil;
    path: string;
    ext: string;
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
  StreamUtil, StringMaker, StringUtil;


{AB:CODE}

procedure TResourceUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.path := TStringUtil.getInstance().EMPTY_STRING;
  Self.ext := TStringUtil.getInstance().EMPTY_STRING;
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
        Self.path := path;
        Self.ext := ext;
end;
    

procedure TResourceUtil.setClassLoader(classLoader: TClassLoader);
begin
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
  inputStream_: TInputStream;
  byteArray: TArray<ShortInt>;
begin
        inputStream_ := TFileInputStream.Create(TStringMaker.Create().append(Self.path).append(resource).append(Self.ext).toString());
        if (inputStream_) <> (nil) then begin
            byteArray := TJava.NewArray<ShortInt>(inputStream_.available());
            TStreamUtil.getInstance().getByteArray(inputStream_, TByteArrayOutputStream.Create, byteArray);
            Exit(TByteArrayInputStream.Create(byteArray));
        end;
        Exit(inputStream_);
end;
    

procedure TResourceUtil.addResource(resource: string; value: Integer);
begin
end;

initialization
  {AB:INITIALIZATION}
  TResourceUtil.instance := TResourceUtil.Create();
  {AB:END}

end.

