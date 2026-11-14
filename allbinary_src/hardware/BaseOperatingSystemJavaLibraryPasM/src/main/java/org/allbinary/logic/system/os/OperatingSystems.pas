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
unit OperatingSystems;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TOperatingSystems = class(TObject)
  public
    LINUX: string;
    WINDOWS: string;
    SOLARIS: string;
    WINDOWS2000: string;
    WINDOWS_NT: string;
    WINDOWS_10: string;
    WINDOWS_11: string;
    WINDOWS_VISTA: string;
    WINDOWS_XP: string;
    ANDROID: string;
    HARMONY: string;
    unknownSpecificOSAllowed: Boolean;
    class var instance: TOperatingSystems;
    procedure InitFields;
        constructor Create;
        function isUnknownSpecificOSAllowed: Boolean; virtual;
        procedure setUnknownSpecificOSAllowed(aUnknownSpecificOSAllowed: Boolean); virtual;
        class function getInstance: TOperatingSystems; static;
  end;

implementation

{AB:CODE}

procedure TOperatingSystems.InitFields;
begin
  Self.LINUX := 'Linux';
  Self.WINDOWS := 'Windows';
  Self.SOLARIS := 'Solaris';
  Self.WINDOWS2000 := 'Windows 2000';
  Self.WINDOWS_NT := 'Windows NT';
  Self.WINDOWS_10 := 'Windows 10';
  Self.WINDOWS_11 := 'Windows 11';
  Self.WINDOWS_VISTA := 'Windows Vista';
  Self.WINDOWS_XP := 'Windows XP';
  Self.ANDROID := Self.LINUX;
  Self.HARMONY := 'HarmonyOS';
  Self.unknownSpecificOSAllowed := True;
end;
    

constructor TOperatingSystems.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TOperatingSystems.isUnknownSpecificOSAllowed: Boolean;
begin
        Exit(Self.unknownSpecificOSAllowed);
end;
    

procedure TOperatingSystems.setUnknownSpecificOSAllowed(aUnknownSpecificOSAllowed: Boolean);
begin
        Self.unknownSpecificOSAllowed := aUnknownSpecificOSAllowed;
end;
    

class function TOperatingSystems.getInstance: TOperatingSystems;
begin
        Exit(TOperatingSystems.instance);
end;

initialization
  {AB:INITIALIZATION}
  TOperatingSystems.instance := TOperatingSystems.Create();
  {AB:END}

end.

