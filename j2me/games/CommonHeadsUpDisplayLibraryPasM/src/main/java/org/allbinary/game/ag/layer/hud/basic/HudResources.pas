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
// package org.allbinary.game.ag.layer.hud.basic
unit HudResources;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  THudResources = class(TObject)
  public
    RESOURCE_LIFE: string;
    RESOURCE_HEALTH: string;
    class var instance: THudResources;
    procedure InitFields;
        class function getInstance: THudResources; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure THudResources.InitFields;
begin
  Self.RESOURCE_LIFE := '/hud_life_10_by_10.png';
  Self.RESOURCE_HEALTH := '/hud_health_10_by_10.png';
end;
    

class function THudResources.getInstance: THudResources;
begin
        Exit(THudResources.instance);
end;
    

constructor THudResources.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  THudResources.instance := THudResources.Create();
  {AB:END}

end.

