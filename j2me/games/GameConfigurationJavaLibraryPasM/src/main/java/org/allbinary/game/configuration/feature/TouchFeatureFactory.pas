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
unit TouchFeatureFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TouchFeature;

type
  {AB:TYPES}
  TTouchFeatureFactory = class(TObject)
  public
    TOUCH_ENABLED: TTouchFeature;
    SHOW_SCREEN_BUTTONS: TTouchFeature;
    AUTO_HIDE_SHOW_SCREEN_BUTTONS: TTouchFeature;
    HIDE_SCREEN_BUTTONS: TTouchFeature;
    class var instance: TTouchFeatureFactory;
    procedure InitFields;
        class function getInstance: TTouchFeatureFactory; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TTouchFeatureFactory.InitFields;
begin
  Self.TOUCH_ENABLED := TTouchFeature.Create('Touch Enabled');
  Self.SHOW_SCREEN_BUTTONS := TTouchFeature.Create('Show');
  Self.AUTO_HIDE_SHOW_SCREEN_BUTTONS := TTouchFeature.Create('Auto Hide (One Level)');
  Self.HIDE_SCREEN_BUTTONS := TTouchFeature.Create('Hide');
end;
    

class function TTouchFeatureFactory.getInstance: TTouchFeatureFactory;
begin
        Exit(TTouchFeatureFactory.instance);
end;
    

constructor TTouchFeatureFactory.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TTouchFeatureFactory.instance := TTouchFeatureFactory.Create();
  {AB:END}

end.

