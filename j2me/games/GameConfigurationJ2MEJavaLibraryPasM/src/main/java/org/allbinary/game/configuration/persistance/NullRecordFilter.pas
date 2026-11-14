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
unit NullRecordFilter;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, RecordFilter;

type
  {AB:TYPES}
  TNullRecordFilter = class(TInterfacedObject, IRecordFilter)
  public
    class var NULL_RECORD_FILTER: TNullRecordFilter;
    function JavaObject: TObject;
    constructor Create;
        function matches(candidate: TArray<ShortInt>): Boolean; virtual;
  end;

implementation

{AB:CODE}

function TNullRecordFilter.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TNullRecordFilter.Create;
begin
  inherited Create;
end;
    

function TNullRecordFilter.matches(candidate: TArray<ShortInt>): Boolean;
begin
        Exit(True);
end;

initialization
  {AB:INITIALIZATION}
  TNullRecordFilter.NULL_RECORD_FILTER := TNullRecordFilter.Create();
  {AB:END}

end.

