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
// package org.allbinary.game.ag.layer.hud.basic.notification
unit GameNotification;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameNotificationEvent, BasicColor, BasicArrayList;

type
  {AB:TYPES}
  TGameNotification = class(TObject)
  public
    stringList: TBasicArrayList;
    timeList: TBasicArrayList;
    colorList: TBasicArrayList;
    class var NULL_GAME_NOTIFICATION_EVENT: TGameNotificationEvent;
    procedure InitFields;
    constructor Create;
        procedure add(string_: string; seconds: Integer; basicColor_: TBasicColor); virtual;
        procedure clear; virtual;
        function getSize: Integer; virtual;
  end;

implementation
uses
  BasicColorFactory, NullUtil, BooleanFactory, StringUtil, BasicArrayListD;


{AB:CODE}

procedure TGameNotification.InitFields;
begin
  Self.stringList := TBasicArrayListD.Create();
  Self.timeList := TBasicArrayListD.Create();
  Self.colorList := TBasicArrayListD.Create();
end;

constructor TGameNotification.Create;
begin
  inherited Create;
  InitFields;
end;
    

procedure TGameNotification.add(string_: string; seconds: Integer; basicColor_: TBasicColor);
begin
        if not (Self.stringList.contains(TJava.Box(string_))) then begin
            Self.stringList.add(TJava.Box(string_));
            Self.timeList.add(TJava.Box(seconds));
            Self.colorList.add(TJava.Box(basicColor_));
        end;
end;
    

procedure TGameNotification.clear;
begin
        Self.stringList.clear();
        Self.timeList.clear();
        Self.colorList.clear();
end;
    

function TGameNotification.getSize: Integer;
begin
        Exit(Self.stringList.size());
end;

initialization
  {AB:INITIALIZATION}
  TGameNotification.NULL_GAME_NOTIFICATION_EVENT := TGameNotificationEvent.Create(TJava.Box(TNullUtil.getInstance().NULL_OBJECT), TStringUtil.getInstance().EMPTY_STRING, 0, TBasicColorFactory.getInstance().RED, TBooleanFactory.getInstance().FALSE_);
  {AB:END}

end.

