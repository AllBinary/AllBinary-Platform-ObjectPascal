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
// package org.allbinary.android
unit AndroidInfoFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TAndroidInfoFactory = class(TObject)
  public
    version: Integer;
    class var instance: TAndroidInfoFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TAndroidInfoFactory; static;
        function getVersion: Integer; virtual;
  end;

implementation

{AB:CODE}

procedure TAndroidInfoFactory.InitFields;
begin
  Self.version := 8;
end;

constructor TAndroidInfoFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TAndroidInfoFactory.getInstance: TAndroidInfoFactory;
begin
        Exit(TAndroidInfoFactory.instance);
end;
    

function TAndroidInfoFactory.getVersion: Integer;
begin
        Exit(Self.version);
end;

initialization
  {AB:INITIALIZATION}
  TAndroidInfoFactory.instance := TAndroidInfoFactory.Create();
  {AB:END}

end.

