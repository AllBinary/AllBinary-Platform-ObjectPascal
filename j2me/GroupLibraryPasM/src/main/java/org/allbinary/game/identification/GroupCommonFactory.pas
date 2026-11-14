{
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.identification
unit GroupCommonFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TGroupCommonFactory = class(TObject)
  public
    ID: Integer;
    GROUP_NAME_LABEL: string;
    ID_LABEL: string;
    ADDING_LABEL: string;
    TO_LABEL: string;
    class var instance: TObject;
    procedure InitFields;
    constructor Create;
        class function getInstance: TGroupCommonFactory; static;
  end;

implementation
uses
  NullUtil, SmallIntegerSingletonFactory;


{AB:CODE}

procedure TGroupCommonFactory.InitFields;
begin
  Self.ID := TSmallIntegerSingletonFactory.getInstance().getAt(10);
  Self.GROUP_NAME_LABEL := 'Group Name: ';
  Self.ID_LABEL := ' Id: ';
  Self.ADDING_LABEL := 'Adding: ';
  Self.TO_LABEL := ' to: ';
end;

constructor TGroupCommonFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TGroupCommonFactory.getInstance: TGroupCommonFactory;
begin
        if (TGroupCommonFactory.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TGroupCommonFactory.instance := TGroupCommonFactory.Create();
        end;
        Exit(TGroupCommonFactory(TJava.ToObject(TGroupCommonFactory.instance)));
end;

initialization
  {AB:INITIALIZATION}
  TGroupCommonFactory.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

