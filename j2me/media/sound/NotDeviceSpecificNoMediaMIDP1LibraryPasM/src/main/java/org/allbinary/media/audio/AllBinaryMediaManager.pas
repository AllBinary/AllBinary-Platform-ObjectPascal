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
  // NotDeviceSpecificNoMediaMIDP1Library
  TAllBinaryMediaManager = class(TObject)
  public
    class var THIS: string;
        constructor Create;
        class function isMuted: Boolean; static;
        class procedure setMuted(aMuted: Boolean); static;
        class function update: Boolean; static;
        class procedure init(soundsFactoryInterface_: ISoundsFactoryInterface); static;
        class procedure shutdown(soundsFactoryInterface_: ISoundsFactoryInterface); static;
        class function createPlayerFromInputStream(stream: TInputStream; type_: string): IPlayer; static;
        class function createPlayer(locator: string): IPlayer; static;
        class procedure playTone(frequency: Integer; time: Integer; volume: Integer); static;
        class function getSupportedContentTypes(protocol: string): TArray<string>; static;
        class function getSupportedProtocols(content_type: string): TArray<string>; static;
  end;

implementation
uses
  Sounds, NoPlayer, TsUtil, ProgressCanvasFactory, LogUtil, StringUtil, CommonStrings;


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
    

class function TAllBinaryMediaManager.createPlayerFromInputStream(stream: TInputStream; type_: string): IPlayer;
var
  logUtil_: TLogUtil;
  commonString: TCommonStrings;
begin
        logUtil_ := TLogUtil.getInstance();
        commonString := TCommonStrings.getInstance();
        logUtil_.putF(commonString.START, TJava.Box(TAllBinaryMediaManager.THIS), 'creatPlayer(InputStream)');
        Exit((TJava.ToObject(TNoPlayer.NO_PLAYER) as IPlayer));
end;
    

class function TAllBinaryMediaManager.createPlayer(locator: string): IPlayer;
var
  logUtil_: TLogUtil;
  commonString: TCommonStrings;
begin
        logUtil_ := TLogUtil.getInstance();
        commonString := TCommonStrings.getInstance();
        logUtil_.putF(commonString.START, TJava.Box(TAllBinaryMediaManager.THIS), 'creatPlayer(locator)');
        Exit((TJava.ToObject(TNoPlayer.NO_PLAYER) as IPlayer));
end;
    

class procedure TAllBinaryMediaManager.playTone(frequency: Integer; time: Integer; volume: Integer);
begin
    TJava.MonitorEnter(nil);
    try
    finally
    TJava.MonitorExit(nil);
    end;
end;
    

class function TAllBinaryMediaManager.getSupportedContentTypes(protocol: string): TArray<string>;
begin
        Exit(TStringUtil.getInstance().getArrayInstance());
end;
    

class function TAllBinaryMediaManager.getSupportedProtocols(content_type: string): TArray<string>;
begin
        Exit(TStringUtil.getInstance().getArrayInstance());
end;

initialization
  {AB:INITIALIZATION}
  TAllBinaryMediaManager.THIS := 'AllBinaryMediaManagerNoMediaMIDP1';
  {AB:END}

end.

