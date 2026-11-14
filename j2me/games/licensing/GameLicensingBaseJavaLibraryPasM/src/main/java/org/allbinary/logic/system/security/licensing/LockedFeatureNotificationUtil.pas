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
// package org.allbinary.logic.system.security.licensing
unit LockedFeatureNotificationUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameNotificationEvent, BasicColor;

type
  {AB:TYPES}
  TLockedFeatureNotificationUtil = class(TObject)
  public
    gameNotificationEvent: TGameNotificationEvent;
    class var instance: TLockedFeatureNotificationUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TLockedFeatureNotificationUtil; static;
        procedure fire; virtual;
        procedure fireWithColor(basicColor_: TBasicColor); virtual;
  end;

implementation
uses
  LicenseStrings, GameNotificationEventHandler, BasicColorFactory, BooleanFactory, SmallIntegerSingletonFactory, ErrorSound, PrimaryPlayerQueueFactory;


{AB:CODE}

procedure TLockedFeatureNotificationUtil.InitFields;
begin
  Self.gameNotificationEvent := TGameNotificationEvent.Create(TJava.Box(Self), TLicenseStrings.getInstance().LOCKED, TSmallIntegerSingletonFactory.getInstance().getAt(3), TBasicColorFactory.getInstance().RED, TBooleanFactory.getInstance().FALSE_);
end;

constructor TLockedFeatureNotificationUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TLockedFeatureNotificationUtil.getInstance: TLockedFeatureNotificationUtil;
begin
        Exit(TLockedFeatureNotificationUtil.instance);
end;
    

// throws Exception
procedure TLockedFeatureNotificationUtil.fire;
begin
        TPrimaryPlayerQueueFactory.getInstance().add(TErrorSound.getInstance());
        TGameNotificationEventHandler.getInstance().fireEvent(Self.gameNotificationEvent);
end;
    

// throws Exception
procedure TLockedFeatureNotificationUtil.fireWithColor(basicColor_: TBasicColor);
begin
        TPrimaryPlayerQueueFactory.getInstance().add(TErrorSound.getInstance());
        Self.gameNotificationEvent.setBasicColorP(basicColor_);
        TGameNotificationEventHandler.getInstance().fireEvent(Self.gameNotificationEvent);
end;

initialization
  {AB:INITIALIZATION}
  TLockedFeatureNotificationUtil.instance := TLockedFeatureNotificationUtil.Create();
  {AB:END}

end.

