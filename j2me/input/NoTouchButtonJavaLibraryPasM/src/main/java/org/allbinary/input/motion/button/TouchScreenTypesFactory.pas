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
// package org.allbinary.input.motion.button
unit TouchScreenTypesFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TouchScreenType;

type
  {AB:TYPES}
  TTouchScreenTypesFactory = class(TObject)
  public
    FINGER: TTouchScreenType;
    NOTOUCH: TTouchScreenType;
    STYLUS: TTouchScreenType;
    UNDEFINED: TTouchScreenType;
    class var instance: TTouchScreenTypesFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TTouchScreenTypesFactory; static;
  end;

implementation

{AB:CODE}

procedure TTouchScreenTypesFactory.InitFields;
begin
  Self.FINGER := TTouchScreenType.Create('Finger');
  Self.NOTOUCH := TTouchScreenType.Create('No Touch');
  Self.STYLUS := TTouchScreenType.Create('Stylus');
  Self.UNDEFINED := TTouchScreenType.Create('Undefined');
end;

constructor TTouchScreenTypesFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TTouchScreenTypesFactory.getInstance: TTouchScreenTypesFactory;
begin
        Exit(TTouchScreenTypesFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TTouchScreenTypesFactory.instance := TTouchScreenTypesFactory.Create();
  {AB:END}

end.

