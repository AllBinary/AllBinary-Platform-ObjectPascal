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
unit GameMode;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TGameMode = class(TObject)
  public
    name: string;
    class var NONE: TGameMode;
    class var SERVER: TGameMode;
    class var CLIENT: TGameMode;
    procedure InitFields;
        constructor Create(name: string);
        procedure setName(name: string);
        function getName: string; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  StringUtil;


{AB:CODE}

procedure TGameMode.InitFields;
begin
  Self.name := TStringUtil.getInstance().EMPTY_STRING;
end;
    

constructor TGameMode.Create(name: string);
begin
    inherited Create;
    InitFields;
        Self.setName(name);
end;
    

procedure TGameMode.setName(name: string);
begin
        Self.name := name;
end;
    

function TGameMode.getName: string;
begin
        Exit(Self.name);
end;
    

function TGameMode.toString: string;
begin
        Exit(Self.getName());
end;

initialization
  {AB:INITIALIZATION}
  TGameMode.NONE := TGameMode.Create(TStringUtil.getInstance().NULL_STRING);
  TGameMode.SERVER := TGameMode.Create('Server');
  TGameMode.CLIENT := TGameMode.Create('Client');
  {AB:END}

end.

