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
unit SWTProcessorUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, SWTProcessor;

type
  {AB:TYPES}
  TSWTProcessorUtil = class(TObject)
  public
    swtProcessor: TSWTProcessor;
    class var instance: TSWTProcessorUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TSWTProcessorUtil; static;
  end;

implementation

{AB:CODE}

procedure TSWTProcessorUtil.InitFields;
begin
  Self.swtProcessor := TSWTProcessor.getInstance();
end;

constructor TSWTProcessorUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TSWTProcessorUtil.getInstance: TSWTProcessorUtil;
begin
        Exit(TSWTProcessorUtil.instance);
end;

initialization
  {AB:INITIALIZATION}
  TSWTProcessorUtil.instance := TSWTProcessorUtil.Create();
  {AB:END}

end.

