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
unit NoPlayer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Control, BasicPlayer;

type
  {AB:TYPES}
  TNoPlayer = class(TBasicPlayer)
  public
    class var NO_PLAYER: TNoPlayer;
        constructor Create;
        procedure close; override;
        function getContentType: string; override;
        function getControl(controlType: string): IControl; override;
        function getControls: TArray<IControl>; override;
  end;

implementation
uses
  NullControl, StringUtil;


{AB:CODE}
    

constructor TNoPlayer.Create;
begin
    inherited Create;
end;
    

procedure TNoPlayer.close;
begin
end;
    

function TNoPlayer.getContentType: string;
begin
        Exit(TStringUtil.getInstance().NULL_STRING);
end;
    

function TNoPlayer.getControl(controlType: string): IControl;
begin
        Exit(TNullControl.Create());
end;
    

function TNoPlayer.getControls: TArray<IControl>;
begin
        Exit(TJava.NewArray<IControl>(0));
end;

initialization
  {AB:INITIALIZATION}
  TNoPlayer.NO_PLAYER := TNoPlayer.Create();
  {AB:END}

end.

