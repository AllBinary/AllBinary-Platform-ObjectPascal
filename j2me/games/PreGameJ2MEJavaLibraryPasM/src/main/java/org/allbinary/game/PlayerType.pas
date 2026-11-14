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
// package org.allbinary.game
unit PlayerType;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TPlayerType = class(TObject)
  public
    id: Integer;
    name: string;
    procedure InitFields;
        constructor Create(name: string; value: Integer);
        function getId: Integer; virtual;
        function getName: string; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  StringUtil;


{AB:CODE}

procedure TPlayerType.InitFields;
begin
  
  Self.name := TStringUtil.getInstance().EMPTY_STRING;
end;
    

constructor TPlayerType.Create(name: string; value: Integer);
begin
    inherited Create;
    InitFields;
        Self.name := name;
        Self.id := value;
end;
    

function TPlayerType.getId: Integer;
begin
        Exit(Self.id);
end;
    

function TPlayerType.getName: string;
begin
        Exit(Self.name);
end;
    

function TPlayerType.toString: string;
begin
        Exit(Self.getName());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

