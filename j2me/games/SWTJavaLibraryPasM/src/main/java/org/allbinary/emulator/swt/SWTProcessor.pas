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
unit SWTProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, SwtDisplay;

type
  {AB:TYPES}
  TSWTProcessor = class(TObject)
  public
    runnable: IRunnable;
    class var instance: TSWTProcessor;
    procedure InitFields;
        class function getInstance: TSWTProcessor; static;
        constructor Create;
        procedure process(display: TSwtDisplay); virtual;
  end;

implementation
uses
  NullRunnable;


{AB:CODE}

procedure TSWTProcessor.InitFields;
begin
  Self.runnable := TNullRunnable.getInstance();
end;
    

class function TSWTProcessor.getInstance: TSWTProcessor;
begin
        Exit(TSWTProcessor.instance);
end;
    

constructor TSWTProcessor.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TSWTProcessor.process(display: TSwtDisplay);
begin
        display.sleep();
end;

initialization
  {AB:INITIALIZATION}
  TSWTProcessor.instance := TSWTProcessor.Create();
  {AB:END}

end.

