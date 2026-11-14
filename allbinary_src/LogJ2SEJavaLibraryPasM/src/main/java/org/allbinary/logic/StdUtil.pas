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
// package org.allbinary.logic
unit StdUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ABHashMap, ABHashtable, ABStack, ABVector;

type
  {AB:TYPES}
  // ActualPlatform
  TStdUtil = class(TObject)
  public
    EMPTY_VECTOR: TABVector<TObject>;
    NULL_TABLE: TABHashtable<TObject, TObject>;
    NULL_MAP: TABHashMap<TObject, TObject>;
    class var instance: TStdUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TStdUtil; static;
        function createStack: TABStack<TObject>;
        function createVector: TABVector<TObject>;
        function createHashtable: TABHashtable<TObject, TObject>;
        function createHashMap: TABHashMap<TObject, TObject>;
  end;

implementation

{AB:CODE}

procedure TStdUtil.InitFields;
begin
  Self.EMPTY_VECTOR := Self.createVector();
  Self.NULL_TABLE := Self.createHashtable();
  Self.NULL_MAP := Self.createHashMap();
end;

constructor TStdUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TStdUtil.getInstance: TStdUtil;
begin
        Exit(TStdUtil.instance);
end;
    

function TStdUtil.createStack: TABStack<TObject>;
begin
        Exit(TABStack<TObject>.Create());
end;
    

function TStdUtil.createVector: TABVector<TObject>;
begin
        Exit(TABVector<TObject>.Create());
end;
    

function TStdUtil.createHashtable: TABHashtable<TObject, TObject>;
begin
        Exit(TABHashtable<TObject, TObject>.Create());
end;
    

function TStdUtil.createHashMap: TABHashMap<TObject, TObject>;
begin
        Exit(TABHashMap<TObject, TObject>.Create());
end;

initialization
  {AB:INITIALIZATION}
  TStdUtil.instance := TStdUtil.Create();
  {AB:END}

end.

