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
unit CompositeGroup;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, BasicArrayList, Group;

type
  {AB:TYPES}
  TCompositeGroup = class(TObject)
  public
    logUtil: TLogUtil;
    groupInterface: TGroup;
    list: TBasicArrayList;
    procedure InitFields;
        constructor Create(groupInterface: TGroup);
        procedure clear; virtual;
        procedure add(groupInterface: TGroup); virtual;
        function isInGroup(groupInterface: TGroup): Boolean; virtual;
        function getGroup: TGroup; virtual;
  end;

implementation
uses
  GroupCommonFactory, StringMaker, StringUtil, CommonStrings, BasicArrayListD;


{AB:CODE}

procedure TCompositeGroup.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  Self.list := TBasicArrayListD.Create();
end;
    

constructor TCompositeGroup.Create(groupInterface: TGroup);
begin
    inherited Create;
    InitFields;
        Self.groupInterface := groupInterface;
end;
    

procedure TCompositeGroup.clear;
begin
        Self.list.clear();
end;
    

procedure TCompositeGroup.add(groupInterface: TGroup);
var
  commonStrings_: TCommonStrings;
  groupCommonFactory_: TGroupCommonFactory;
  stringBuffer: TStringMaker;
begin
        commonStrings_ := TCommonStrings.getInstance();
        groupCommonFactory_ := TGroupCommonFactory.getInstance();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(groupCommonFactory_.ADDING_LABEL);
        stringBuffer.append(groupInterface.toString());
        stringBuffer.append(groupCommonFactory_.TO_LABEL);
        stringBuffer.append(TStringUtil.getInstance().toString(Self.groupInterface));
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), commonStrings_.ADD);
        Self.list.add(TJava.Box(groupInterface));
end;
    

function TCompositeGroup.isInGroup(groupInterface: TGroup): Boolean;
begin
        if Self.list.contains(TJava.Box(groupInterface)) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TCompositeGroup.getGroup: TGroup;
begin
        Exit(Self.groupInterface);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

