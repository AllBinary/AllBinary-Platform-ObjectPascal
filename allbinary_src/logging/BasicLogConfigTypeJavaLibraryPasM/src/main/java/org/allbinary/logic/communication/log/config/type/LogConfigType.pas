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
// package org.allbinary.logic.communication.log.config.type
unit LogConfigType;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TLogConfigType = class(TObject)
  public
    name: string;
    description: string;
    procedure InitFields;
        constructor Create(name: string; description: string);
        function getName: string; virtual;
        function getDescription: string; virtual;
        procedure setName(value: string); virtual;
        procedure setDescription(value: string); virtual;
  end;

implementation

{AB:CODE}

procedure TLogConfigType.InitFields;
begin
  
  
end;
    

constructor TLogConfigType.Create(name: string; description: string);
begin
    inherited Create;
    InitFields;
        Self.name := name;
        Self.description := description;
end;
    

function TLogConfigType.getName: string;
begin
        Exit(Self.name);
end;
    

function TLogConfigType.getDescription: string;
begin
        Exit(Self.description);
end;
    

procedure TLogConfigType.setName(value: string);
begin
        Self.name := value;
end;
    

procedure TLogConfigType.setDescription(value: string);
begin
        Self.description := value;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

