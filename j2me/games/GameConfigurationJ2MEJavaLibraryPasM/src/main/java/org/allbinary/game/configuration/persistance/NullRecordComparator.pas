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
unit NullRecordComparator;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, RecordComparator;

type
  {AB:TYPES}
  TNullRecordComparator = class(TInterfacedObject, IRecordComparator)
  public
    class var NULL_RECORD_COMPARATOR: TNullRecordComparator;
    function JavaObject: TObject;
    constructor Create;
        function compare(rec1: TArray<ShortInt>; rec2: TArray<ShortInt>): Integer; virtual;
  end;

implementation

{AB:CODE}

function TNullRecordComparator.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TNullRecordComparator.Create;
begin
  inherited Create;
end;
    

function TNullRecordComparator.compare(rec1: TArray<ShortInt>; rec2: TArray<ShortInt>): Integer;
begin
        Exit(0);
end;

initialization
  {AB:INITIALIZATION}
  TNullRecordComparator.NULL_RECORD_COMPARATOR := TNullRecordComparator.Create();
  {AB:END}

end.

