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
unit PersistanceStrings;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TPersistanceStrings = class(TObject)
  public
    SAVING: string;
    NUMBER_OF_RECORDS: string;
    LOADING_ID: string;
    LOAD_ALL: string;
    DELETING_WITH_ID: string;
    CLOSING_RECORDSTORE: string;
    NOT_SAVING: string;
    ERROR_LOADING: string;
    ERROR_LOADING_ID: string;
    ID: string;
    GAME_ACTION_INPUT: string;
    class var instance: TPersistanceStrings;
    procedure InitFields;
    constructor Create;
        class function getInstance: TPersistanceStrings; static;
  end;

implementation

{AB:CODE}

procedure TPersistanceStrings.InitFields;
begin
  Self.SAVING := 'Saving: ';
  Self.NUMBER_OF_RECORDS := 'Number of records: ';
  Self.LOADING_ID := 'Loading data with id: ';
  Self.LOAD_ALL := 'loadAll';
  Self.DELETING_WITH_ID := 'Deleting data with id: ';
  Self.CLOSING_RECORDSTORE := 'Closing RecordStore';
  Self.NOT_SAVING := 'Not Saving: ';
  Self.ERROR_LOADING := 'Error Loading gameActionInput: ';
  Self.ERROR_LOADING_ID := 'Error Loading id: ';
  Self.ID := ' id: ';
  Self.GAME_ACTION_INPUT := ' GameActionInput: ';
end;

constructor TPersistanceStrings.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TPersistanceStrings.getInstance: TPersistanceStrings;
begin
        Exit(TPersistanceStrings.instance);
end;

initialization
  {AB:INITIALIZATION}
  TPersistanceStrings.instance := TPersistanceStrings.Create();
  {AB:END}

end.

