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
// package org.allbinary.logic.system.hardware.components.interfaces
unit NoHardwareComponent;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, HardwareComponentInterface;

type
  {AB:TYPES}
  TNoHardwareComponent = class(TInterfacedObject, IHardwareComponentInterface)
  public
    class var instance: TNoHardwareComponent;
    function JavaObject: TObject;
    constructor Create;
        class function getInstance: TNoHardwareComponent; static;
        function compareTo(componentInterface: IHardwareComponentInterface): Boolean; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  StringUtil;


{AB:CODE}

function TNoHardwareComponent.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TNoHardwareComponent.Create;
begin
  inherited Create;
end;
    

class function TNoHardwareComponent.getInstance: TNoHardwareComponent;
begin
        Exit(TNoHardwareComponent.instance);
end;
    

function TNoHardwareComponent.compareTo(componentInterface: IHardwareComponentInterface): Boolean;
begin
        if TJava.ToObject(Self) = TJava.ToObject(componentInterface) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TNoHardwareComponent.toString: string;
begin
        Exit(TStringUtil.getInstance().NULL_STRING);
end;

initialization
  {AB:INITIALIZATION}
  TNoHardwareComponent.instance := TNoHardwareComponent.Create();
  {AB:END}

end.

