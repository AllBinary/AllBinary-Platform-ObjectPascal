{
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.media.audio
unit SoundStrings;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TSoundStrings = class(TObject)
  public
    STOP_ALL: string;
    CLOSE_ALL: string;
    SOUND: string;
    INIT_SOUND: string;
    STOPPING_SOUND: string;
    CLOSING_SOUND: string;
    class var instance: TSoundStrings;
    procedure InitFields;
    constructor Create;
        class function getInstance: TSoundStrings; static;
  end;

implementation

{AB:CODE}

procedure TSoundStrings.InitFields;
begin
  Self.STOP_ALL := 'stopAll';
  Self.CLOSE_ALL := 'closeAll';
  Self.SOUND := ' Sound: ';
  Self.INIT_SOUND := 'Initializing Sound: ';
  Self.STOPPING_SOUND := 'Stopping Sound: ';
  Self.CLOSING_SOUND := 'Closing Sound: ';
end;

constructor TSoundStrings.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TSoundStrings.getInstance: TSoundStrings;
begin
        Exit(TSoundStrings.instance);
end;

initialization
  {AB:INITIALIZATION}
  TSoundStrings.instance := TSoundStrings.Create();
  {AB:END}

end.

