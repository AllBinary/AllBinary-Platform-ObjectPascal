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
unit Sounds;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings, SoundStrings, SoundsFactoryInterface;

type
  {AB:TYPES}
  TSounds = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    soundStrings: TSoundStrings;
    soundsFactoryInterface: ISoundsFactoryInterface;
    procedure InitFields;
        constructor Create(soundsFactoryInterface_: ISoundsFactoryInterface);
        procedure init; virtual;
        procedure stopAll; virtual;
        procedure closeAll; virtual;
  end;

implementation
uses
  Sound, Player, ProgressCanvas, ProgressCanvasFactory, SmallIntegerSingletonFactory, StringMaker, CommonLabels;


{AB:CODE}

procedure TSounds.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.soundStrings := TSoundStrings.getInstance();
  
end;
    

constructor TSounds.Create(soundsFactoryInterface_: ISoundsFactoryInterface);
begin
    inherited Create;
    InitFields;
        Self.soundsFactoryInterface := soundsFactoryInterface_;
end;
    

// throws Exception
procedure TSounds.init;
var
  commonLabels_: TCommonLabels;
  progressCanvas_: TProgressCanvas;
  soundInterfaceArray: TArray<TSound>;
  smallIntegerSingletonFactory_: TSmallIntegerSingletonFactory;
  indexInteger: Integer;
  indexString: string;
  stringBuffer: TStringMaker;
  soundInterface: TSound;
  i: Integer;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.INIT);
        commonLabels_ := TCommonLabels.getInstance();
        progressCanvas_ := TProgressCanvasFactory.getInstance();
        Self.soundsFactoryInterface.init();
        soundInterfaceArray := Self.soundsFactoryInterface.getSoundInterfaceArray();
        smallIntegerSingletonFactory_ := TSmallIntegerSingletonFactory.getInstance();
        
        
        stringBuffer := TStringMaker.Create();
        for i := 0 to System.Length(soundInterfaceArray) - 1 do begin
            soundInterface := soundInterfaceArray[i];
            if (soundInterface) <> (nil) then begin
                indexInteger := smallIntegerSingletonFactory_.getAt(i);
                indexString := indexInteger.toString();
                stringBuffer.delete_(0, stringBuffer.length());
                stringBuffer.append(commonLabels_.INDEX_LABEL);
                stringBuffer.append(indexString);
                stringBuffer.append(Self.soundStrings.SOUND);
                stringBuffer.append(TJava.ToObject(soundInterface).ClassType.ClassName);
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.commonStrings.INIT);
                soundInterface.init();
                progressCanvas_.addNormalPortion(100, TStringMaker.Create().append(Self.soundStrings.INIT_SOUND).append(indexString).toString());
            end;
        end;
        Self.soundsFactoryInterface.setInitialized(True);
        Self.logUtil.putF(Self.commonStrings.END_, TJava.Box(Self), Self.commonStrings.INIT);
end;
    

// throws Exception
procedure TSounds.stopAll;
var
  soundInterfaceArray: TArray<TSound>;
  progressCanvas_: TProgressCanvas;
  player_: IPlayer;
  index: Integer;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.soundStrings.STOP_ALL);
        soundInterfaceArray := Self.soundsFactoryInterface.getSoundInterfaceArray();
        progressCanvas_ := TProgressCanvasFactory.getInstance();
        
        for index := 0 to System.Length(soundInterfaceArray) - 1 do begin
            if (soundInterfaceArray[index]) <> (nil) then begin
                player_ := soundInterfaceArray[index].getPlayerP();
                if (player_) <> (nil) then begin
                    player_.stop();
                    progressCanvas_.addPortion(100, Self.soundStrings.STOPPING_SOUND, index);
                end;
            end;
        end;
end;
    

// throws Exception
procedure TSounds.closeAll;
var
  soundInterfaceArray: TArray<TSound>;
  progressCanvas_: TProgressCanvas;
  player_: IPlayer;
  index: Integer;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.soundStrings.CLOSE_ALL);
        soundInterfaceArray := Self.soundsFactoryInterface.getSoundInterfaceArray();
        progressCanvas_ := TProgressCanvasFactory.getInstance();
        
        for index := 0 to System.Length(soundInterfaceArray) - 1 do begin
            if (soundInterfaceArray[index]) <> (nil) then begin
                player_ := soundInterfaceArray[index].getPlayerP();
                if (player_) <> (nil) then begin
                    player_.close();
                    progressCanvas_.addPortion(100, Self.soundStrings.CLOSING_SOUND, index);
                end;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

