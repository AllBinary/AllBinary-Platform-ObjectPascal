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
// package org.allbinary.game.ag.layer.pickup.health
unit HealthResources;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  THealthResources = class(TObject)
  public
    RESOURCE: string;
    class var SINGLETON: THealthResources;
    procedure InitFields;
        constructor Create;
        class function getInstance: THealthResources; static;
  end;

implementation

{AB:CODE}

procedure THealthResources.InitFields;
begin
  Self.RESOURCE := 'health_drop_20_by_20.png';
end;
    

constructor THealthResources.Create;
begin
    inherited Create;
    InitFields;
end;
    

class function THealthResources.getInstance: THealthResources;
begin
        Exit(THealthResources.SINGLETON);
end;

initialization
  {AB:INITIALIZATION}
  THealthResources.SINGLETON := THealthResources.Create();
  {AB:END}

end.

