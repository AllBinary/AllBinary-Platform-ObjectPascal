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
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GenericOperatingSystem, HardwareInterface;

type
  {AB:TYPES}
  THardwareFactory = class(TObject)
  public
    class var instance: THardwareFactory;
        class function getInstance: THardwareFactory; overload; static;
        constructor Create;
        class function getInstance(os: TGenericOperatingSystem): IHardwareInterface; overload; static;
  end;

implementation
uses
  OperatingSystems, LinuxHardware, WindowsHardware;


{AB:CODE}
    

class function THardwareFactory.getInstance: THardwareFactory;
begin
        Exit(THardwareFactory.instance);
end;
    

constructor THardwareFactory.Create;
begin
    inherited Create;
end;
    

// throws Exception
class function THardwareFactory.getInstance(os: TGenericOperatingSystem): IHardwareInterface;
var
  operatingSystems_: TOperatingSystems;
begin
        try
            operatingSystems_ := TOperatingSystems.getInstance();
            if (os.getName().compareTo(operatingSystems_.LINUX)) = (0) then begin
                Exit((TJava.ToObject(TLinuxHardware.Create()) as IHardwareInterface));
            end else if (os.getName().indexOf(operatingSystems_.WINDOWS)) >= (0) then begin
                Exit((TJava.ToObject(TWindowsHardware.Create()) as IHardwareInterface));
            end;
            raise SysUtils.Exception.Create('No Hardware Imp for: ' + os.getName());
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

