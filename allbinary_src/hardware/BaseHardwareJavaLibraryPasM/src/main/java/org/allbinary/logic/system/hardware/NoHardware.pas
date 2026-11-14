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
// package org.allbinary.logic.system.hardware
unit NoHardware;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, HardwareComponentInterface, ABHashtable, HardwareInterface;

type
  {AB:TYPES}
  TNoHardware = class(TInterfacedObject, IHardwareInterface)
  public
    class var instance: IHardwareInterface;
    function JavaObject: TObject;
    constructor Create;
        class function getInstance: IHardwareInterface; static;
        function getComponent(index: Integer): IHardwareComponentInterface; virtual;
        function toString: string; virtual;
        function compareTo(hardwareInterface_: IHardwareInterface): Boolean; virtual;
        function difference(hardwareInterface_: IHardwareInterface): TABHashtable<TObject, TObject>; virtual;
  end;

implementation
uses
  StdUtil, NoHardwareComponent;


{AB:CODE}

function TNoHardware.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TNoHardware.Create;
begin
  inherited Create;
end;
    

class function TNoHardware.getInstance: IHardwareInterface;
begin
        Exit(TNoHardware.instance);
end;
    

function TNoHardware.getComponent(index: Integer): IHardwareComponentInterface;
begin
        Exit(TNoHardwareComponent.getInstance());
end;
    

function TNoHardware.toString: string;
begin
        Exit('No Hardware');
end;
    

function TNoHardware.compareTo(hardwareInterface_: IHardwareInterface): Boolean;
begin
        Exit(True);
end;
    

function TNoHardware.difference(hardwareInterface_: IHardwareInterface): TABHashtable<TObject, TObject>;
begin
        Exit(TStdUtil.getInstance().NULL_TABLE);
end;

initialization
  {AB:INITIALIZATION}
  TNoHardware.instance := TNoHardware.Create();
  {AB:END}

end.

