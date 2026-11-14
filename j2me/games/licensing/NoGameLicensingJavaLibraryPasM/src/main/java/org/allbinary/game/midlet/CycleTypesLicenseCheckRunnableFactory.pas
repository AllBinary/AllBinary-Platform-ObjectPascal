{
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// AB:CYCLE TYPES LicenseCheckRunnableFactory SpecialDemoGameMidlet
// The units LicenseCheckRunnableFactory SpecialDemoGameMidlet use each other in their interface sections, so their types are declared together here.
unit CycleTypesLicenseCheckRunnableFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ABRunnable, ClientInformationFactory, LicenseLoadingType, LicensedDemoSetupFactory, DemoGameMidlet;

type
  { Forward declarations like C++ so the cycle members can refer to each other }
  TLicenseCheckRunnableFactory = class;
  TSpecialDemoGameMidlet = class;
  {AB:TYPES}
  { LicenseCheckRunnableFactory }
  TLicenseCheckRunnableFactory = class(TObject)
  public
    constructor Create;
        function getInstance(specialDemoGameMidlet_: TSpecialDemoGameMidlet): TABRunnable; virtual;
  end;

  { SpecialDemoGameMidlet }
  TSpecialDemoGameMidlet = class(TDemoGameMidlet)
  public
        constructor Create(clientInformationFactory_: TClientInformationFactory; licenseLoadingType_: TLicenseLoadingType; demoSetupFactory: TLicensedDemoSetupFactory; licenseCheckRunnableFactory_: TLicenseCheckRunnableFactory);
        procedure initView; virtual;
        procedure preInit; override;
  end;


implementation
uses
  NullABRunnable, LicenseServerInitFileUtil;


{AB:CODE}

constructor TLicenseCheckRunnableFactory.Create;
begin
  inherited Create;
end;
    

function TLicenseCheckRunnableFactory.getInstance(specialDemoGameMidlet_: TSpecialDemoGameMidlet): TABRunnable;
begin
        Exit(TNullABRunnable.getInstance());
end;

    

constructor TSpecialDemoGameMidlet.Create(clientInformationFactory_: TClientInformationFactory; licenseLoadingType_: TLicenseLoadingType; demoSetupFactory: TLicensedDemoSetupFactory; licenseCheckRunnableFactory_: TLicenseCheckRunnableFactory);
begin
        inherited Create(clientInformationFactory_);
end;
    

procedure TSpecialDemoGameMidlet.initView;
begin
end;
    

procedure TSpecialDemoGameMidlet.preInit;
begin
        TLicenseServerInitFileUtil.Create().init();
end;


initialization
  {AB:INITIALIZATION}
  {AB:END}

end.
