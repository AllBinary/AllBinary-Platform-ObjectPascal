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
// package org.allbinary.media.audio
unit AllBinaryMediaManager;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Player, SoundsFactoryInterface;

type
  {AB:TYPES}
  // NotDeviceSpecificMIDP2JavaLibrary
  TAllBinaryMediaManager = class(TObject)
  public
    class var THIS: string;
        constructor Create;
        class function isMuted: Boolean; static;
        class procedure setMuted(aMuted: Boolean); static;
        class function update: Boolean; static;
        class procedure init(soundsFactoryInterface_: ISoundsFactoryInterface); static;
        class procedure shutdown(soundsFactoryInterface_: ISoundsFactoryInterface); static;
        class function createPlayer(resource: string): IPlayer; static;
        class procedure playTone(frequency: Integer; time: Integer; volume: Integer); static;
  end;

implementation
uses
  Sounds, NoPlayer, Manager, MediaException, MIDPUtil, TsUtil, AudioContentTypeDataFactory, ResourceUtil, Features, GameFeatureFactory, ProgressCanvasFactory, LogUtil, CommonStrings;


{AB:CODE}
    

constructor TAllBinaryMediaManager.Create;
begin
    inherited Create;
end;
    

class function TAllBinaryMediaManager.isMuted: Boolean;
begin
        Exit(False);
end;
    

class procedure TAllBinaryMediaManager.setMuted(aMuted: Boolean);
begin
end;
    

class function TAllBinaryMediaManager.update: Boolean;
begin
        Exit(True);
end;
    

// throws Exception
class procedure TAllBinaryMediaManager.init(soundsFactoryInterface_: ISoundsFactoryInterface);
var
  logUtil_: TLogUtil;
  commonString: TCommonStrings;
begin
        logUtil_ := TLogUtil.getInstance();
        commonString := TCommonStrings.getInstance();
        logUtil_.putF(commonString.START, TJava.Box(TAllBinaryMediaManager.THIS), commonString.INIT);
        TProgressCanvasFactory.getInstance().addNormalPortion(50, 'Media Manager');
        TSounds.Create(soundsFactoryInterface_).init();
end;
    

// throws Exception
class procedure TAllBinaryMediaManager.shutdown(soundsFactoryInterface_: ISoundsFactoryInterface);
begin
        TSounds.Create(soundsFactoryInterface_).stopAll();
        TSounds.Create(soundsFactoryInterface_).closeAll();
        TTsUtil.getInstance().gc();
end;
    

// throws Exception
class function TAllBinaryMediaManager.createPlayer(resource: string): IPlayer;
var
  inputStream_: TInputStream;
begin
        if TFeatures.getInstance().isFeature(TGameFeatureFactory.getInstance().SOUND) then begin
            if (TTsUtil.getInstance().compareTo(resource, TManager.TONE_DEVICE_LOCATOR)) = (0) then begin
                Exit(TManager.createPlayer(resource));
            end else begin
                inputStream_ := TResourceUtil.getInstance().getResourceAsStream(resource);
                Exit(TMIDPUtil.getInstance().createPlayerFromInputStream(inputStream_, TAudioContentTypeDataFactory.getInstance().MIME_AUDIO_WAV.getName()));
            end;
        end else begin
            Exit(TNoPlayer.NO_PLAYER);
        end;
end;
    

// throws MediaException
class procedure TAllBinaryMediaManager.playTone(frequency: Integer; time: Integer; volume: Integer);
begin
    TJava.MonitorEnter(nil);
    try
        if TFeatures.getInstance().isFeature(TGameFeatureFactory.getInstance().SOUND) then begin
            TManager.playTone(frequency, time, volume);
        end;
    finally
    TJava.MonitorExit(nil);
    end;
end;

initialization
  {AB:INITIALIZATION}
  TAllBinaryMediaManager.THIS := 'AllBinaryMediaManagerNoMIPD2';
  {AB:END}

end.

