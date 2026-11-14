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
// package org.allbinary.logic.system.hardware.components
unit ComponentFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Component;

type
  {AB:TYPES}
  TComponentFactory = class(TObject)
  public
    VGA: TComponent;
    IDE: TComponent;
    SCSI: TComponent;
    BRIDGE: TComponent;
    ETHERNET: TComponent;
    USB: TComponent;
    MULTIMEDIA: TComponent;
    PCI: TComponent;
    RAID: TComponent;
    SMBUS: TComponent;
    PIC: TComponent;
    Class_: TComponent;
    UNKNOWN: TComponent;
    class var instance: TComponentFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TComponentFactory; static;
  end;

implementation
uses
  CommonStrings;


{AB:CODE}

procedure TComponentFactory.InitFields;
begin
  Self.VGA := TComponent.Create('VGA');
  Self.IDE := TComponent.Create('IDE');
  Self.SCSI := TComponent.Create('SCSI');
  Self.BRIDGE := TComponent.Create('bridge');
  Self.ETHERNET := TComponent.Create('Ethernet');
  Self.USB := TComponent.Create('USB');
  Self.MULTIMEDIA := TComponent.Create('Multimedia');
  Self.PCI := TComponent.Create('PCI');
  Self.RAID := TComponent.Create('RAID');
  Self.SMBUS := TComponent.Create('SMBus');
  Self.PIC := TComponent.Create('PIC');
  Self.Class_ := TComponent.Create('Class');
  Self.UNKNOWN := TComponent.Create(TCommonStrings.getInstance().UNKNOWN);
end;

constructor TComponentFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TComponentFactory.getInstance: TComponentFactory;
begin
        Exit(TComponentFactory.instance);
end;

initialization
  {AB:INITIALIZATION}
  TComponentFactory.instance := TComponentFactory.Create();
  {AB:END}

end.

