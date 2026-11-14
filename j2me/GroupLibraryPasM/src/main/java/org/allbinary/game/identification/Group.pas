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
unit Group;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GroupInterface;

type
  {AB:TYPES}
  TGroup = class(TInterfacedObject, IGroupInterface)
  public
    name: string;
    teamId: SmallInt;
    string_: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(teamName: string; teamId: SmallInt);
        function getGroupName: string; virtual;
        procedure setName(name: string); virtual;
        function getGroupId: SmallInt; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  GroupCommonFactory, StringMaker, StringUtil;


{AB:CODE}

procedure TGroup.InitFields;
begin
  Self.name := TStringUtil.getInstance().EMPTY_STRING;
  
  Self.string_ := TStringUtil.getInstance().EMPTY_STRING;
end;

function TGroup.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TGroup.Create(teamName: string; teamId: SmallInt);
begin
    inherited Create;
    InitFields;
        Self.teamId := teamId;
        Self.setName(teamName);
end;
    

function TGroup.getGroupName: string;
begin
        Exit(Self.name);
end;
    

procedure TGroup.setName(name: string);
var
  groupCommonFactory_: TGroupCommonFactory;
  stringBuffer: TStringMaker;
begin
        Self.name := name;
        groupCommonFactory_ := TGroupCommonFactory.getInstance();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(groupCommonFactory_.GROUP_NAME_LABEL);
        stringBuffer.append(Self.name);
        stringBuffer.append(groupCommonFactory_.ID_LABEL);
        stringBuffer.appendshort(Self.teamId);
        Self.string_ := stringBuffer.toString();
end;
    

function TGroup.getGroupId: SmallInt;
begin
        Exit(Self.teamId);
end;
    

function TGroup.toString: string;
begin
        Exit(Self.string_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

