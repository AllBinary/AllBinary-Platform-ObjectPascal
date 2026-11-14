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
// package org.allbinary.canvas
unit FullScreenUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Canvas, CommandListener;

type
  {AB:TYPES}
  TFullScreenUtil = class(TObject)
  public
    class var instance: TFullScreenUtil;
    constructor Create;
        class function getInstance: TFullScreenUtil; static;
        procedure initOnRun(fullScreenInterface: TCanvas; commandListener_: ICommandListener);
        procedure init(fullScreenInterface: TCanvas);
        function isScreenChange(isFullScreen: Boolean): Boolean;
        function isScreenChangeCanvas(fullScreenInterface: TCanvas): Boolean;
  end;

implementation
uses
  Features, MainFeatureFactory;


{AB:CODE}

constructor TFullScreenUtil.Create;
begin
  inherited Create;
end;
    

class function TFullScreenUtil.getInstance: TFullScreenUtil;
begin
        Exit(TFullScreenUtil.instance);
end;
    

// throws Exception
procedure TFullScreenUtil.initOnRun(fullScreenInterface: TCanvas; commandListener_: ICommandListener);
begin
        if (commandListener_) <> (nil) then begin
            Self.init(fullScreenInterface);
        end;
end;
    

procedure TFullScreenUtil.init(fullScreenInterface: TCanvas);
begin
end;
    

function TFullScreenUtil.isScreenChange(isFullScreen: Boolean): Boolean;
var
  mainFeatureFactory_: TMainFeatureFactory;
  features_: TFeatures;
begin
        mainFeatureFactory_ := TMainFeatureFactory.getInstance();
        features_ := TFeatures.getInstance();
        if (features_.isFeature(mainFeatureFactory_.FULL_SCREEN)) <> (isFullScreen) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TFullScreenUtil.isScreenChangeCanvas(fullScreenInterface: TCanvas): Boolean;
begin
        Exit(Self.isScreenChange(False));
end;

initialization
  {AB:INITIALIZATION}
  TFullScreenUtil.instance := TFullScreenUtil.Create();
  {AB:END}

end.

