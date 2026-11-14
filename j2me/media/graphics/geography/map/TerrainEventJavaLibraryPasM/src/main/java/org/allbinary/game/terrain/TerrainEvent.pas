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
unit TerrainEvent;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, BasicTerrainInfo;

type
  {AB:TYPES}
  TTerrainEvent = class(TAllBinaryEventObject)
  public
    basicTerrainInfo: TBasicTerrainInfo;
    procedure InitFields;
        constructor Create(basicTerrainInfo_: TObject);
        function toString: string; override;
        function getBasicTerrainInfo: TBasicTerrainInfo; virtual;
        procedure setBasicTerrainInfo(basicTerrainInfo_: TBasicTerrainInfo); virtual;
        procedure setBasicTerrainInfoForCircularStaticPool(basicTerrainInfo_: TBasicTerrainInfo); virtual;
  end;

implementation
uses
  NullUtil, StringMaker;


{AB:CODE}

procedure TTerrainEvent.InitFields;
begin
  Self.basicTerrainInfo := TBasicTerrainInfo.NULL_BASIC_TERRAIN_INFO;
end;
    

constructor TTerrainEvent.Create(basicTerrainInfo_: TObject);
begin
        inherited Create(basicTerrainInfo_);
        InitFields;
        Self.setBasicTerrainInfo(Self.basicTerrainInfo);
end;
    

function TTerrainEvent.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('TerrainEvent: '#10'');
        stringBuffer.append('LayerInterface: ');
        stringBuffer.append(Self.basicTerrainInfo.toString());
        Exit(stringBuffer.toString());
end;
    

function TTerrainEvent.getBasicTerrainInfo: TBasicTerrainInfo;
begin
        Exit(Self.basicTerrainInfo);
end;
    

procedure TTerrainEvent.setBasicTerrainInfo(basicTerrainInfo_: TBasicTerrainInfo);
begin
        Self.basicTerrainInfo := basicTerrainInfo_;
end;
    

procedure TTerrainEvent.setBasicTerrainInfoForCircularStaticPool(basicTerrainInfo_: TBasicTerrainInfo);
begin
        Self.basicTerrainInfo := basicTerrainInfo_;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

