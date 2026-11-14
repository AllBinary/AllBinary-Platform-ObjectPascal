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
// package org.allbinary.game.layer.hud.event
unit GameNotificationEvent;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicColor, AllBinaryEventObject;

type
  {AB:TYPES}
  TGameNotificationEvent = class(TAllBinaryEventObject)
  public
    string_: string;
    seconds: Integer;
    basicColor: TBasicColor;
    removeable: Boolean;
    procedure InitFields;
        constructor Create(anyType: TObject; string_: string; seconds: Integer; basicColor_: TBasicColor; permanent: Boolean);
        function getString: string; virtual;
        function getSeconds: Integer; virtual;
        function getBasicColorP: TBasicColor; virtual;
        function getPermanent: Boolean; virtual;
        procedure setString(string_: string); virtual;
        procedure setBasicColorP(basicColor_: TBasicColor); virtual;
  end;

implementation
uses
  BasicColorFactory, StringUtil;


{AB:CODE}

procedure TGameNotificationEvent.InitFields;
begin
  Self.string_ := TStringUtil.getInstance().EMPTY_STRING;
  
  Self.basicColor := TBasicColorFactory.getInstance().BLACK;
  
end;
    

constructor TGameNotificationEvent.Create(anyType: TObject; string_: string; seconds: Integer; basicColor_: TBasicColor; permanent: Boolean);
begin
        inherited Create(anyType);
        InitFields;
        Self.setString(string_);
        Self.seconds := seconds;
        Self.setBasicColorP(basicColor_);
        Self.removeable := permanent;
end;
    

function TGameNotificationEvent.getString: string;
begin
        Exit(Self.string_);
end;
    

function TGameNotificationEvent.getSeconds: Integer;
begin
        Exit(Self.seconds);
end;
    

function TGameNotificationEvent.getBasicColorP: TBasicColor;
begin
        Exit(Self.basicColor);
end;
    

function TGameNotificationEvent.getPermanent: Boolean;
begin
        Exit(Self.removeable);
end;
    

procedure TGameNotificationEvent.setString(string_: string);
begin
        Self.string_ := string_;
end;
    

procedure TGameNotificationEvent.setBasicColorP(basicColor_: TBasicColor);
begin
        Self.basicColor := basicColor_;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

