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
unit HardwareFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, OperatingSystemInterface, HardwareInterface;

type
  {AB:TYPES}
  THardwareFactory = class(TObject)
  public
    SINGLETON: IHardwareInterface;
    class var instance: THardwareFactory;
    procedure InitFields;
        class function getInstance: THardwareFactory; overload; static;
        constructor Create;
        function getInstance(os: IOperatingSystemInterface): IHardwareInterface; overload; virtual;
  end;

implementation
uses
  NoHardware;


{AB:CODE}

procedure THardwareFactory.InitFields;
begin
  Self.SINGLETON := TNoHardware.getInstance();
end;
    

class function THardwareFactory.getInstance: THardwareFactory;
begin
        Exit(THardwareFactory.instance);
end;
    

constructor THardwareFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function THardwareFactory.getInstance(os: IOperatingSystemInterface): IHardwareInterface;
begin
        try
            Exit(Self.SINGLETON);
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  THardwareFactory.instance := THardwareFactory.Create();
  {AB:END}

end.

