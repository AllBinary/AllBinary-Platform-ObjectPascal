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
// package org.allbinary.game.configuration.persistance
unit GamePersistanceStrings;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TGamePersistanceStrings = class(TObject)
  public
    SAVED_GAME_RECORD_ID: string;
    SAVED_GAME_CONFIGURATION_RECORD_ID: string;
    DEFAULT_INPUT_MAPPING_RECORD_ID: string;
    SAVED_INPUT_CONFIGURATION_RECORD_ID: string;
    class var instance: TGamePersistanceStrings;
    procedure InitFields;
    constructor Create;
        class function getInstance: TGamePersistanceStrings; static;
  end;

implementation

{AB:CODE}

procedure TGamePersistanceStrings.InitFields;
begin
  Self.SAVED_GAME_RECORD_ID := '_SG';
  Self.SAVED_GAME_CONFIGURATION_RECORD_ID := '_SGC';
  Self.DEFAULT_INPUT_MAPPING_RECORD_ID := '_DIM';
  Self.SAVED_INPUT_CONFIGURATION_RECORD_ID := '_SIC';
end;

constructor TGamePersistanceStrings.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TGamePersistanceStrings.getInstance: TGamePersistanceStrings;
begin
        Exit(TGamePersistanceStrings.instance);
end;

initialization
  {AB:INITIALIZATION}
  TGamePersistanceStrings.instance := TGamePersistanceStrings.Create();
  {AB:END}

end.

