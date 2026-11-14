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
// package org.allbinary.game.input
unit Input;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TInput = class(TObject)
  public
    id: Integer;
    name: string;
    procedure InitFields;
        constructor Create(id: Integer; name: string);
        function getId: Integer; virtual;
        procedure setId(key: Integer);
        function getName: string; virtual;
        procedure setName(keyName: string);
        function toString: string; virtual;
  end;

implementation
uses
  StringMaker, StringUtil;


{AB:CODE}

procedure TInput.InitFields;
begin
  
  Self.name := TStringUtil.getInstance().EMPTY_STRING;
end;
    

constructor TInput.Create(id: Integer; name: string);
begin
    inherited Create;
    InitFields;
        Self.setId(id);
        Self.setName(name);
end;
    

function TInput.getId: Integer;
begin
        Exit(Self.id);
end;
    

procedure TInput.setId(key: Integer);
begin
        Self.id := key;
end;
    

function TInput.getName: string;
begin
        Exit(Self.name);
end;
    

procedure TInput.setName(keyName: string);
begin
        Self.name := keyName;
end;
    

function TInput.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('Name: ');
        stringBuffer.append(Self.getName());
        stringBuffer.append(' Id: ');
        stringBuffer.appendint(Self.getId());
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

