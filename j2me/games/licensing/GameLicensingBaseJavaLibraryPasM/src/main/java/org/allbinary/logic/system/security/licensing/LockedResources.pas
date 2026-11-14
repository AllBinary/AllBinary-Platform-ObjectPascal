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
// package org.allbinary.logic.system.security.licensing
unit LockedResources;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TLockedResources = class(TObject)
  public
    LOCKED_DEMO_GAME_FEATURE_RESOURCE: string;
    class var instance: TLockedResources;
    procedure InitFields;
    constructor Create;
        class function getInstance: TLockedResources; static;
  end;

implementation

{AB:CODE}

procedure TLockedResources.InitFields;
begin
  Self.LOCKED_DEMO_GAME_FEATURE_RESOURCE := '/locked_demo_game_feature_64_by_64.png';
end;

constructor TLockedResources.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TLockedResources.getInstance: TLockedResources;
begin
        Exit(TLockedResources.instance);
end;

initialization
  {AB:INITIALIZATION}
  TLockedResources.instance := TLockedResources.Create();
  {AB:END}

end.

