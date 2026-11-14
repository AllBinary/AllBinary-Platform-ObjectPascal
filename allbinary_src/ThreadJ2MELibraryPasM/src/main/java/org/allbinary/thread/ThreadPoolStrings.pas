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
// package org.allbinary.thread
unit ThreadPoolStrings;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TThreadPoolStrings = class(TObject)
  public
    ADD_TASK: string;
    START_TASK: string;
    COMPLETE_TASK: string;
    class var instance: TThreadPoolStrings;
    procedure InitFields;
    constructor Create;
        class function getInstance: TThreadPoolStrings; static;
  end;

implementation

{AB:CODE}

procedure TThreadPoolStrings.InitFields;
begin
  Self.ADD_TASK := 'addTask';
  Self.START_TASK := 'Started Task: ';
  Self.COMPLETE_TASK := 'Completed Task: ';
end;

constructor TThreadPoolStrings.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TThreadPoolStrings.getInstance: TThreadPoolStrings;
begin
        Exit(TThreadPoolStrings.instance);
end;

initialization
  {AB:INITIALIZATION}
  TThreadPoolStrings.instance := TThreadPoolStrings.Create();
  {AB:END}

end.

