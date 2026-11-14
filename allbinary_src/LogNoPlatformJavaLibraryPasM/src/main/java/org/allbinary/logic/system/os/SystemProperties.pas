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
// package org.allbinary.logic.system.os
unit SystemProperties;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  // NoPlatform
  TSystemProperties = class(TObject)
  public
    class var instance: TSystemProperties;
        class function getInstance: TSystemProperties; static;
        constructor Create;
        function getName: string; virtual;
        function getArch: string; virtual;
        function getVersion: string; virtual;
        function getUserHomePath: string; virtual;
  end;

implementation

{AB:CODE}
    

class function TSystemProperties.getInstance: TSystemProperties;
begin
        Exit(TSystemProperties.instance);
end;
    

constructor TSystemProperties.Create;
begin
    inherited Create;
end;
    

function TSystemProperties.getName: string;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TSystemProperties.getArch: string;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TSystemProperties.getVersion: string;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TSystemProperties.getUserHomePath: string;
begin
        raise SysUtils.Exception.Create('');
end;

initialization
  {AB:INITIALIZATION}
  TSystemProperties.instance := TSystemProperties.Create();
  {AB:END}

end.

