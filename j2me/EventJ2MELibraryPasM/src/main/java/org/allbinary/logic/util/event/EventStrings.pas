{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.logic.util.event
unit EventStrings;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TEventStrings = class(TObject)
  public
    PERFORMANCE_MESSAGE: string;
    TOTAL_LISTENERS: string;
    LISTENER_LABEL: string;
    FIRE_EVENT: string;
    class var instance: TEventStrings;
    procedure InitFields;
    constructor Create;
        class function getInstance: TEventStrings; static;
  end;

implementation

{AB:CODE}

procedure TEventStrings.InitFields;
begin
  Self.PERFORMANCE_MESSAGE := 'Use Custom onEvent Methods for needed optimization';
  Self.TOTAL_LISTENERS := 'Total Listeners: ';
  Self.LISTENER_LABEL := ' Listener: ';
  Self.FIRE_EVENT := 'fireEvent';
end;

constructor TEventStrings.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TEventStrings.getInstance: TEventStrings;
begin
        Exit(TEventStrings.instance);
end;

initialization
  {AB:INITIALIZATION}
  TEventStrings.instance := TEventStrings.Create();
  {AB:END}

end.

