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
// package org.allbinary.game.configuration.persistance
unit GameConfigurationPersistanceSingleton;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, KeyValuePersistance;

type
  {AB:TYPES}
  TGameConfigurationPersistanceSingleton = class(TKeyValuePersistance)
  public
    class var GAME_PERSISTANCE: TGameConfigurationPersistanceSingleton;
        class function getInstance: TGameConfigurationPersistanceSingleton; static;
        constructor Create;
  end;

implementation
uses
  GamePersistanceStrings;


{AB:CODE}
    

class function TGameConfigurationPersistanceSingleton.getInstance: TGameConfigurationPersistanceSingleton;
begin
        Exit(TGameConfigurationPersistanceSingleton.GAME_PERSISTANCE);
end;
    

constructor TGameConfigurationPersistanceSingleton.Create;
begin
        inherited Create(TGamePersistanceStrings.getInstance().SAVED_GAME_CONFIGURATION_RECORD_ID);
end;

initialization
  {AB:INITIALIZATION}
  TGameConfigurationPersistanceSingleton.GAME_PERSISTANCE := TGameConfigurationPersistanceSingleton.Create();
  {AB:END}

end.

