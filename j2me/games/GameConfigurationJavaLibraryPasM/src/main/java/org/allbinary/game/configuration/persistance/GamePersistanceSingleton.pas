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
unit GamePersistanceSingleton;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, KeyValuePersistance;

type
  {AB:TYPES}
  TGamePersistanceSingleton = class(TKeyValuePersistance)
  public
    class var GAME_PERSISTANCE: TGamePersistanceSingleton;
        class function getInstance: TGamePersistanceSingleton; static;
        constructor Create;
  end;

implementation
uses
  GamePersistanceStrings;


{AB:CODE}
    

class function TGamePersistanceSingleton.getInstance: TGamePersistanceSingleton;
begin
        Exit(TGamePersistanceSingleton.GAME_PERSISTANCE);
end;
    

constructor TGamePersistanceSingleton.Create;
begin
        inherited Create(TGamePersistanceStrings.getInstance().SAVED_GAME_RECORD_ID);
end;

initialization
  {AB:INITIALIZATION}
  TGamePersistanceSingleton.GAME_PERSISTANCE := TGamePersistanceSingleton.Create();
  {AB:END}

end.

