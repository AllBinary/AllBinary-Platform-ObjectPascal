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
// package org.allbinary.game.resource
unit ResourceLoadingLevel;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TResourceLoadingLevel = class(TObject)
  public
    name: string;
    level: Integer;
    procedure InitFields;
        constructor Create(name: string; level: Integer);
        function getLevel: Integer; virtual;
        function getName: string; virtual;
  end;

implementation

{AB:CODE}

procedure TResourceLoadingLevel.InitFields;
begin
  
  
end;
    

constructor TResourceLoadingLevel.Create(name: string; level: Integer);
begin
    inherited Create;
    InitFields;
        Self.name := name;
        Self.level := level;
end;
    

function TResourceLoadingLevel.getLevel: Integer;
begin
        Exit(Self.level);
end;
    

function TResourceLoadingLevel.getName: string;
begin
        Exit(Self.name);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

