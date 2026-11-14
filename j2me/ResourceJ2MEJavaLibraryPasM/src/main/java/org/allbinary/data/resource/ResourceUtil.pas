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
  // J2ME
  TResourceUtil = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TResourceUtil;
    procedure InitFields;
        class function getInstance: TResourceUtil; static;
        constructor Create;
        procedure setLoadingPaths(path: string; ext: string); virtual;
        function getResourceAsStream(resource: string): TInputStream; virtual;
        function getResourceAsStreamAtStart(resource: string; startIndex: Integer): TInputStream;
        procedure addResource(resource: string; value: Integer); virtual;
  end;

implementation
uses
  StringMaker, CommonSeps, CommonStrings;


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
    

// throws Exception
function TResourceUtil.getResourceAsStream(resource: string): TInputStream;
var
  inputStream_: TInputStream;
  stringMaker_: TStringMaker;
  index: Integer;
  resourcePath: string;
  RES: string;
  COLON: string;
  RESOURCE_STRING: string;
begin
        inputStream_ := TClassLoader.getSystemClassLoader().getResourceAsStream(resource);
        if (inputStream_) = (nil) then begin
            inputStream_ := Self.getResourceAsStreamAtStart(resource, 2);
            if (inputStream_) = (nil) then begin
                inputStream_ := Self.getResourceAsStreamAtStart(resource, 1);
                if (inputStream_) = (nil) then begin
                    stringMaker_ := TStringMaker.Create();
                    index := (RPos(TJava.ToString('/'), resource) - 1);
                    resourcePath := Copy(resource, ((index) + (1)) + 1, MaxInt);
                    inputStream_ := TClassLoader.getSystemClassLoader().getResourceAsStream(resourcePath);
                    if (inputStream_) = (nil) then begin
                        resourcePath := Copy(resource, (index) + 1, MaxInt);
                        inputStream_ := TClassLoader.getSystemClassLoader().getResourceAsStream(resourcePath);
                        if (inputStream_) = (nil) then begin
                            RES := 'res';
                            resourcePath := stringMaker_.append(RES).append(Copy(resource, (index) + 1, MaxInt)).toString();
                            inputStream_ := TClassLoader.getSystemClassLoader().getResourceAsStream(resourcePath);
                            if (inputStream_) = (nil) then begin
                                stringMaker_.delete_(0, stringMaker_.length());
                                resourcePath := stringMaker_.append('/').append(RES).append(Copy(resource, (index) + 1, MaxInt)).toString();
                                inputStream_ := TClassLoader.getSystemClassLoader().getResourceAsStream(resourcePath);
                                COLON := TCommonSeps.getInstance().COLON;
                                if (inputStream_) = (nil) then begin
                                    stringMaker_.delete_(0, stringMaker_.length());
                                    resourcePath := stringMaker_.append(RES).append(COLON).append(Copy(resource, (index) + 1, MaxInt)).toString();
                                    inputStream_ := TClassLoader.getSystemClassLoader().getResourceAsStream(resourcePath);
                                    if (inputStream_) = (nil) then begin
                                        stringMaker_.delete_(0, stringMaker_.length());
                                        resourcePath := stringMaker_.append(RES).append(COLON).append(Copy(resource, ((index) + (1)) + 1, MaxInt)).toString();
                                        inputStream_ := TClassLoader.getSystemClassLoader().getResourceAsStream(resourcePath);
                                        if (inputStream_) = (nil) then begin
                                            RESOURCE_STRING := 'resource';
                                            stringMaker_.delete_(0, stringMaker_.length());
                                            resourcePath := stringMaker_.append(RESOURCE_STRING).append(COLON).append(Copy(resource, (index) + 1, MaxInt)).toString();
                                            inputStream_ := TClassLoader.getSystemClassLoader().getResourceAsStream(resourcePath);
                                            if (inputStream_) = (nil) then begin
                                                stringMaker_.delete_(0, stringMaker_.length());
                                                resourcePath := stringMaker_.append(RESOURCE_STRING).append(COLON).append(Copy(resource, ((index) + (1)) + 1, MaxInt)).toString();
                                                inputStream_ := TClassLoader.getSystemClassLoader().getResourceAsStream(resourcePath);
                                                if (inputStream_) = (nil) then begin
                                                    stringMaker_.delete_(0, stringMaker_.length());
                                                    raise SysUtils.Exception.Create(stringMaker_.append('Unable to obtain: ').append(resource).toString());
                                                end;
                                            end;
                                        end;
                                    end;
                                end;
                            end;
                        end;
                    end;
                end;
            end;
        end;
        Exit(inputStream_);
end;
    

// throws Exception
function TResourceUtil.getResourceAsStreamAtStart(resource: string; startIndex: Integer): TInputStream;
var
  stringMaker_: TStringMaker;
  index: Integer;
  resourcePath: string;
  inputStream_: TInputStream;
begin
        stringMaker_ := TStringMaker.Create();
        index := (Pos(TJava.ToString(TCommonSeps.getInstance().COLON), resource) - 1);
        resourcePath := Copy(resource, ((index) + (startIndex)) + 1, MaxInt);
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
  TResourceUtil.instance := TResourceUtil.Create();
  {AB:END}

end.

