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
// package org.allbinary.logic.util.cache
unit KeylessBasicArrayListCache;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, BasicArrayList, BasicArrayListUtil, IndexedBasicArrayListCache;

type
  {AB:TYPES}
  TKeylessBasicArrayListCache = class(TIndexedBasicArrayListCache)
  public
    logUtil: TLogUtil;
    basicArrayListUtil: TBasicArrayListUtil;
    procedure InitFields;
        constructor Create;
        function get: TBasicArrayList; virtual;
        procedure clear; override;
        function log: string; override;
  end;

implementation
uses
  StringMaker;


{AB:CODE}

procedure TKeylessBasicArrayListCache.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.basicArrayListUtil := TBasicArrayListUtil.getInstance();
end;
    

constructor TKeylessBasicArrayListCache.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TKeylessBasicArrayListCache.get: TBasicArrayList;
var
  list: TBasicArrayList;
begin
        try
            if (Self.index) >= (Self.list.size()) then begin
                Self.addDefault();
            end;
            list := TBasicArrayList(TJava.ToObject(Self.getAt(TJava.PostInc(Self.index))));
            Exit(list);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.GET, TJava.Box(e));
            Exit(Self.basicArrayListUtil.getImmutableInstance());
            end;
        end;
end;
    

procedure TKeylessBasicArrayListCache.clear;
var
  basicArrayList_: TBasicArrayList;
  index: Integer;
begin
        inherited clear();
        
        for index := (Self.list.size()) - (1) downto 0 do begin
            basicArrayList_ := (TBasicArrayList(TJava.ToObject(Self.list.objectArray[index])));
            basicArrayList_.clear();
        end;
end;
    

function TKeylessBasicArrayListCache.log: string;
var
  stringBuffer: TStringMaker;
  S_LABEL: string;
  basicArrayList_: TBasicArrayList;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('S: ');
        stringBuffer.appendint(Self.list.size());
        S_LABEL := ' s: ';
        
        for index := (Self.list.size()) - (1) downto 0 do begin
            stringBuffer.append(S_LABEL);
            basicArrayList_ := (TBasicArrayList(TJava.ToObject(Self.list.objectArray[index])));
            stringBuffer.appendint(basicArrayList_.size());
        end;
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

