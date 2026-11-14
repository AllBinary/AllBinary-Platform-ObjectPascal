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
// package org.allbinary.game.gd.resource
unit GDResources;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TGDResources = class(TObject)
  public
    resourceStringArray: TArray<string>;
    currentLayoutRequiredTotal: Integer;
    class var instance: TGDResources;
    procedure InitFields;
    constructor Create;
        class function getInstance: TGDResources; static;
  end;

implementation

{AB:CODE}

procedure TGDResources.InitFields;
begin
  Self.resourceStringArray := nil;
  
end;

constructor TGDResources.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TGDResources.getInstance: TGDResources;
begin
        Exit(TGDResources.instance);
end;

initialization
  {AB:INITIALIZATION}
  TGDResources.instance := TGDResources.Create();
  {AB:END}

end.

