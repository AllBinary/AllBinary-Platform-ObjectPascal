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
// package org.allbinary.game.layer.resources
unit OnDemandResourcesFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, OnDemandResources;

type
  {AB:TYPES}
  TOnDemandResourcesFactory = class(TObject)
  public
    constructor Create;
        function size: Integer; virtual;
        function remove(layerId: Integer): TOnDemandResources; virtual;
  end;

implementation

{AB:CODE}

constructor TOnDemandResourcesFactory.Create;
begin
  inherited Create;
end;
    

function TOnDemandResourcesFactory.size: Integer;
begin
        Exit(0);
end;
    

function TOnDemandResourcesFactory.remove(layerId: Integer): TOnDemandResources;
begin
        Exit(TOnDemandResources.NULL_ON_DEMAND_RESOURCES);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

