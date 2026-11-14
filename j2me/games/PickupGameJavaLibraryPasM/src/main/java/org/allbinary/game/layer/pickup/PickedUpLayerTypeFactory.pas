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
// package org.allbinary.game.layer.pickup
unit PickedUpLayerTypeFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PickedUpLayerType;

type
  {AB:TYPES}
  TPickedUpLayerTypeFactory = class(TObject)
  public
    NONE: TPickedUpLayerType;
    BEAM: TPickedUpLayerType;
    MINE: TPickedUpLayerType;
    PROJECTILE: TPickedUpLayerType;
    ENHANCEMENT: TPickedUpLayerType;
    MORPH: TPickedUpLayerType;
    PART: TPickedUpLayerType;
    HEAL: TPickedUpLayerType;
    LIFE: TPickedUpLayerType;
    POINTS: TPickedUpLayerType;
    class var instance: TPickedUpLayerTypeFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TPickedUpLayerTypeFactory; static;
  end;

implementation
uses
  StringUtil;


{AB:CODE}

procedure TPickedUpLayerTypeFactory.InitFields;
begin
  Self.NONE := TPickedUpLayerType.Create(TStringUtil.getInstance().NULL_STRING);
  Self.BEAM := TPickedUpLayerType.Create('BEAM');
  Self.MINE := TPickedUpLayerType.Create('MINE');
  Self.PROJECTILE := TPickedUpLayerType.Create('PROJECTILE');
  Self.ENHANCEMENT := TPickedUpLayerType.Create('Enhancement');
  Self.MORPH := TPickedUpLayerType.Create('Morph');
  Self.PART := TPickedUpLayerType.Create('Part');
  Self.HEAL := TPickedUpLayerType.Create('Heal');
  Self.LIFE := TPickedUpLayerType.Create('Life');
  Self.POINTS := TPickedUpLayerType.Create('Points');
end;

constructor TPickedUpLayerTypeFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TPickedUpLayerTypeFactory.getInstance: TPickedUpLayerTypeFactory;
begin
        Exit(TPickedUpLayerTypeFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TPickedUpLayerTypeFactory.instance := TPickedUpLayerTypeFactory.Create();
  {AB:END}

end.

