{

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
}
// Generated Code Do Not Modify
// package org.allbinary.debug
unit NoDebug;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DebugInterface;

type
  {AB:TYPES}
  TNoDebug = class(TInterfacedObject, IDebugInterface)
  public
    class var SINGLETON: IDebugInterface;
    function JavaObject: TObject;
    constructor Create;
        class function getInstance: IDebugInterface; static;
        procedure start; virtual;
        procedure stop; virtual;
        function getMaxTime: Int64; virtual;
        function getStartTime: Int64; virtual;
        function isRunning: Boolean; virtual;
  end;

implementation

{AB:CODE}

function TNoDebug.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TNoDebug.Create;
begin
  inherited Create;
end;
    

class function TNoDebug.getInstance: IDebugInterface;
begin
        Exit(TNoDebug.SINGLETON);
end;
    

procedure TNoDebug.start;
begin
end;
    

procedure TNoDebug.stop;
begin
end;
    

function TNoDebug.getMaxTime: Int64;
begin
        Exit(10000);
end;
    

function TNoDebug.getStartTime: Int64;
begin
        Exit(0);
end;
    

function TNoDebug.isRunning: Boolean;
begin
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  TNoDebug.SINGLETON := TNoDebug.Create();
  {AB:END}

end.

