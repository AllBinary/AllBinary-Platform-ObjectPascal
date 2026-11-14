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
// package org.allbinary.game.resource
unit FeatureResourceInitializationUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil;

type
  {AB:TYPES}
  TFeatureResourceInitializationUtil = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TFeatureResourceInitializationUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TFeatureResourceInitializationUtil; static;
        procedure init(level: Integer); virtual;
  end;

implementation
uses
  FeaturedResourceFactory, FeaturedResourceRelativeRelationshipFactory, FeaturedAnimationInterfaceFactoryInterfaceFactory, CommonStrings;


{AB:CODE}

procedure TFeatureResourceInitializationUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

constructor TFeatureResourceInitializationUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TFeatureResourceInitializationUtil.getInstance: TFeatureResourceInitializationUtil;
begin
        Exit(TFeatureResourceInitializationUtil.instance);
end;
    

// throws Exception
procedure TFeatureResourceInitializationUtil.init(level: Integer);
var
  commonStrings_: TCommonStrings;
  featuredResourceFactory_: TFeaturedResourceFactory;
begin
        commonStrings_ := TCommonStrings.getInstance();
        Self.logUtil.putF(commonStrings_.START, TJava.Box(Self), commonStrings_.INIT);
        featuredResourceFactory_ := TFeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance();
        featuredResourceFactory_.init(level);
        TFeaturedResourceRelativeRelationshipFactory.getInstance().init(level);
end;

initialization
  {AB:INITIALIZATION}
  TFeatureResourceInitializationUtil.instance := TFeatureResourceInitializationUtil.Create();
  {AB:END}

end.

