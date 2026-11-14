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
// package org.allbinary.thread
unit NullABRunnable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ABRunnable;

type
  {AB:TYPES}
  TNullABRunnable = class(TABRunnable)
  public
    class var instance: TNullABRunnable;
    constructor Create;
        class function getInstance: TNullABRunnable; static;
        function isRunning: Boolean; override;
  end;

implementation

{AB:CODE}

constructor TNullABRunnable.Create;
begin
  inherited Create;
end;
    

class function TNullABRunnable.getInstance: TNullABRunnable;
begin
        Exit(TNullABRunnable.instance);
end;
    

function TNullABRunnable.isRunning: Boolean;
begin
    TJava.MonitorEnter(Self);
    try
        Exit(False);
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  TNullABRunnable.instance := TNullABRunnable.Create();
  {AB:END}

end.

