{
 
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.logic
unit ABSystemWrapper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TABSystemWrapper = class(TObject)
  public
    class var instance: TABSystemWrapper;
    constructor Create;
        class function getInstance: TABSystemWrapper; static;
        procedure arraycopy(src: TObject; srcPos: Integer; dest: TObject; destPos: Integer; length: Integer); virtual;
        function currentTimeMillis: Int64; virtual;
  end;

implementation
uses
  JsType;


{AB:CODE}

constructor TABSystemWrapper.Create;
begin
  inherited Create;
end;
    

class function TABSystemWrapper.getInstance: TABSystemWrapper;
begin
        Exit(TABSystemWrapper.instance);
end;
    

procedure TABSystemWrapper.arraycopy(src: TObject; srcPos: Integer; dest: TObject; destPos: Integer; length: Integer);
begin
        TJava.ArrayCopy(src, srcPos, dest, destPos, length);
end;
    

function TABSystemWrapper.currentTimeMillis: Int64;
begin
        Exit(DateTimeToUnix(Now) * 1000);
end;

initialization
  {AB:INITIALIZATION}
  TABSystemWrapper.instance := TABSystemWrapper.Create();
  {AB:END}

end.

