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
// package org.allbinary.game.identification
unit GroupFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, BasicArrayList, Group;

type
  {AB:TYPES}
  TGroupFactory = class(TObject)
  public
    logUtil: TLogUtil;
    NULL_GROUP_ARRAY: TArray<TGroup>;
    list: TBasicArrayList;
    index: Integer;
    class var instance: TGroupFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TGroupFactory; static;
        function getNextGroup: TGroup; virtual;
        function getNextGroupByName(name: string): TGroup; virtual;
        procedure init(groups: SmallInt; nameArray: TArray<string>); virtual;
  end;

implementation
uses
  StringMaker, StringUtil, BasicArrayListD;


{AB:CODE}

procedure TGroupFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.NULL_GROUP_ARRAY := nil;
  Self.list := TBasicArrayListD.Create();
  Self.index := 0;
end;

constructor TGroupFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TGroupFactory.getInstance: TGroupFactory;
begin
        Exit(TGroupFactory.instance);
end;
    

function TGroupFactory.getNextGroup: TGroup;
var
  group_: TGroup;
begin
        group_ := TGroup(TJava.ToObject(Self.list.objectArray[Self.index]));
        Inc(Self.index);
        Exit(group_);
end;
    

function TGroupFactory.getNextGroupByName(name: string): TGroup;
var
  group_: TGroup;
begin
        group_ := Self.getNextGroup();
        group_.setName(name);
        Exit(group_);
end;
    

procedure TGroupFactory.init(groups: SmallInt; nameArray: TArray<string>);
var
  stringMaker_: TStringMaker;
  stringUtil_: TStringUtil;
  TEAM: string;
  size: Integer;
  name: string;
begin
        stringMaker_ := TStringMaker.Create();
        stringUtil_ := TStringUtil.getInstance();
        TEAM := 'Team ';
        Self.list.clear();
        Self.index := 0;
        size := Self.list.size();
        
        while (size) < (Integer(groups)) do begin
            name := stringUtil_.EMPTY_STRING;
            if (size) < (System.Length(nameArray)) then begin
                name := nameArray[size];
            end else begin
                stringMaker_.delete_(0, stringMaker_.length());
                name := stringMaker_.append(TEAM).appendint(size).toString();
            end;
            Self.list.add(TJava.Box(TGroup.Create(name, SmallInt(((size) + (3))))));
            Inc(size);
        end;
end;

initialization
  {AB:INITIALIZATION}
  TGroupFactory.instance := TGroupFactory.Create();
  {AB:END}

end.

