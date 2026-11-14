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
// package org.allbinary.game.ag.layer.pickup.points
unit PointsResources;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TPointsResources = class(TObject)
  public
    RESOURCE: string;
    RESOURCE_2: string;
    RESOURCE_3: string;
    RESOURCE_4: string;
    class var SINGLETON: TPointsResources;
    procedure InitFields;
        constructor Create;
        class function getInstance: TPointsResources; static;
  end;

implementation

{AB:CODE}

procedure TPointsResources.InitFields;
begin
  Self.RESOURCE := 'points_drop_20_by_20.png';
  Self.RESOURCE_2 := 'points_2_drop_20_by_20.png';
  Self.RESOURCE_3 := 'points_3_drop_20_by_20.png';
  Self.RESOURCE_4 := 'points_4_drop_20_by_20.png';
end;
    

constructor TPointsResources.Create;
begin
    inherited Create;
    InitFields;
end;
    

class function TPointsResources.getInstance: TPointsResources;
begin
        Exit(TPointsResources.SINGLETON);
end;

initialization
  {AB:INITIALIZATION}
  TPointsResources.SINGLETON := TPointsResources.Create();
  {AB:END}

end.

