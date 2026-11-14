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
// package org.allbinary.game.terrain
unit BasicTerrainInfo;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Angle;

type
  {AB:TYPES}
  TBasicTerrainInfo = class(TObject)
  public
    angle: TAngle;
    class var NULL_BASIC_TERRAIN_INFO: TBasicTerrainInfo;
    procedure InitFields;
        constructor Create(angle_: TAngle);
        function getAngle: TAngle; virtual;
        procedure setAngle(angle_: TAngle); virtual;
  end;

implementation
uses
  AngleFactory;


{AB:CODE}

procedure TBasicTerrainInfo.InitFields;
begin
  
end;
    

constructor TBasicTerrainInfo.Create(angle_: TAngle);
begin
    inherited Create;
    InitFields;
        Self.angle := angle_;
end;
    

function TBasicTerrainInfo.getAngle: TAngle;
begin
        Exit(Self.angle);
end;
    

procedure TBasicTerrainInfo.setAngle(angle_: TAngle);
begin
        Self.angle := angle_;
end;

initialization
  {AB:INITIALIZATION}
  TBasicTerrainInfo.NULL_BASIC_TERRAIN_INFO := TBasicTerrainInfo.Create(TAngleFactory.getInstance().NOT_ANGLE);
  {AB:END}

end.

