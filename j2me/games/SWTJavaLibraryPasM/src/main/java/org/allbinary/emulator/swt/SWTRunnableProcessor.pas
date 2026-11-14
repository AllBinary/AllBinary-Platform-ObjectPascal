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
// package org.allbinary.emulator.swt
unit SWTRunnableProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, SwtDisplay, SWTProcessor;

type
  {AB:TYPES}
  TSWTRunnableProcessor = class(TSWTProcessor)
  public
    class var instanceR: TSWTRunnableProcessor;
        class function getInstance: TSWTRunnableProcessor; static;
        constructor Create;
        procedure process(display: TSwtDisplay); virtual;
  end;

implementation

{AB:CODE}
    

class function TSWTRunnableProcessor.getInstance: TSWTRunnableProcessor;
begin
        Exit(TSWTRunnableProcessor.instanceR);
end;
    

constructor TSWTRunnableProcessor.Create;
begin
    inherited Create;
end;
    

procedure TSWTRunnableProcessor.process(display: TSwtDisplay);
begin
        Self.runnable.run();
end;

initialization
  {AB:INITIALIZATION}
  TSWTRunnableProcessor.instanceR := TSWTRunnableProcessor.Create();
  {AB:END}

end.

