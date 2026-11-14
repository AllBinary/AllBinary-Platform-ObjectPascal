{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.media.audio
unit NoSound;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Sound;

type
  {AB:TYPES}
  TNoSound = class(TSound)
  public
    class var instance: TNoSound;
        class function getInstance: TNoSound; static;
        constructor Create;
  end;

implementation
uses
  NoPlayer, StringUtil;


{AB:CODE}
    

class function TNoSound.getInstance: TNoSound;
begin
        Exit(TNoSound.instance);
end;
    

constructor TNoSound.Create;
begin
        inherited Create(TStringUtil.getInstance().EMPTY_STRING);
        Self.setPlayerP(TNoPlayer.NO_PLAYER);
end;

initialization
  {AB:INITIALIZATION}
  TNoSound.instance := TNoSound.Create();
  {AB:END}

end.

