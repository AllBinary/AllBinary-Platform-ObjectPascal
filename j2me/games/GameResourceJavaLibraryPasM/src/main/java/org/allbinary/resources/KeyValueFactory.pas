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
// package org.allbinary.resources
unit KeyValueFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ABHashtable;

type
  {AB:TYPES}
  TKeyValueFactory = class(TObject)
  public
    MAP: TABHashtable<TObject, TObject>;
    class var instance: TKeyValueFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TKeyValueFactory; static;
        function get(key: string): string; virtual;
  end;

implementation
uses
  StdUtil;


{AB:CODE}

procedure TKeyValueFactory.InitFields;
begin
  Self.MAP := TStdUtil.getInstance().createHashtable();
end;

constructor TKeyValueFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TKeyValueFactory.getInstance: TKeyValueFactory;
begin
        Exit(TKeyValueFactory.instance);
end;
    

function TKeyValueFactory.get(key: string): string;
begin
        if not (Self.MAP.containsKey(TJava.Box(TJava.Box(key)))) then begin
            Exit(key);
        end;
        Exit(TJava.UnboxString(TJava.ToObject(Self.MAP.get(TJava.Box(TJava.Box(key))))));
end;

initialization
  {AB:INITIALIZATION}
  TKeyValueFactory.instance := TKeyValueFactory.Create();
  {AB:END}

end.

