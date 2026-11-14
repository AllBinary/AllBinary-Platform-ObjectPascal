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
// package org.allbinary.game.ag.layer.pickup.life
unit LifeResources;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TLifeResources = class(TObject)
  public
    RESOURCE: string;
    class var SINGLETON: TLifeResources;
    procedure InitFields;
        constructor Create;
        class function getInstance: TLifeResources; static;
  end;

implementation

{AB:CODE}

procedure TLifeResources.InitFields;
begin
  Self.RESOURCE := 'life_drop_20_by_20.png';
end;
    

constructor TLifeResources.Create;
begin
    inherited Create;
    InitFields;
end;
    

class function TLifeResources.getInstance: TLifeResources;
begin
        Exit(TLifeResources.SINGLETON);
end;

initialization
  {AB:INITIALIZATION}
  TLifeResources.SINGLETON := TLifeResources.Create();
  {AB:END}

end.

