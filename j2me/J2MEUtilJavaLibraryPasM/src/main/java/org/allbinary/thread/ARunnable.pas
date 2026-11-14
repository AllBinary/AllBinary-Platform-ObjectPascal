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
unit ARunnable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TARunnable = class(TInterfacedObject, IRunnable)
  public
    function JavaObject: TObject;
    constructor Create;
        procedure run; virtual;
  end;

implementation
uses
  JsType, JsMethod;


{AB:CODE}

function TARunnable.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TARunnable.Create;
begin
  inherited Create;
end;
    

procedure TARunnable.run;
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

