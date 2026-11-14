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
// package org.allbinary.game.configuration.feature
unit MainFeatureFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Feature;

type
  {AB:TYPES}
  TMainFeatureFactory = class(TObject)
  public
    FULL_SCREEN: TFeature;
    TITLE_BAR: TFeature;
    STATIC_: TFeature;
    LOAD_ONDEMAND: TFeature;
    LOAD_ALL: TFeature;
    class var instance: TMainFeatureFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TMainFeatureFactory; static;
  end;

implementation

{AB:CODE}

procedure TMainFeatureFactory.InitFields;
begin
  Self.FULL_SCREEN := TFeature.Create('Full Screen');
  Self.TITLE_BAR := TFeature.Create('Title Bar');
  Self.STATIC_ := TFeature.Create('Static Dependent Feature');
  Self.LOAD_ONDEMAND := TFeature.Create('Load OnDemand');
  Self.LOAD_ALL := TFeature.Create('Load All');
end;

constructor TMainFeatureFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TMainFeatureFactory.getInstance: TMainFeatureFactory;
begin
        Exit(TMainFeatureFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TMainFeatureFactory.instance := TMainFeatureFactory.Create();
  {AB:END}

end.

