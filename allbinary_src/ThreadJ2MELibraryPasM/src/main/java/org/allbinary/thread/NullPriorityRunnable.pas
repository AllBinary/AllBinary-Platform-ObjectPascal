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
unit NullPriorityRunnable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PriorityRunnable;

type
  {AB:TYPES}
  TNullPriorityRunnable = class(TInterfacedObject, IPriorityRunnable, IRunnable)
  public
    function JavaObject: TObject;
    constructor Create;
        function getPriority: Integer; virtual;
        function isDone: Boolean; virtual;
        procedure reset; virtual;
        procedure run; virtual;
  end;

implementation

{AB:CODE}

function TNullPriorityRunnable.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TNullPriorityRunnable.Create;
begin
  inherited Create;
end;
    

function TNullPriorityRunnable.getPriority: Integer;
begin
        Exit(0);
end;
    

function TNullPriorityRunnable.isDone: Boolean;
begin
        Exit(True);
end;
    

procedure TNullPriorityRunnable.reset;
begin
end;
    

procedure TNullPriorityRunnable.run;
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

