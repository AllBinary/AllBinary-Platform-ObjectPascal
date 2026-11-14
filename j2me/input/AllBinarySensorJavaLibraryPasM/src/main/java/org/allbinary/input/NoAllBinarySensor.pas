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
// package org.allbinary.input
unit NoAllBinarySensor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinarySensor;

type
  {AB:TYPES}
  TNoAllBinarySensor = class(TAllBinarySensor)
  public
    class var instance: TNoAllBinarySensor;
        class function getInstance: TNoAllBinarySensor; static;
        constructor Create;
  end;

implementation

{AB:CODE}
    

class function TNoAllBinarySensor.getInstance: TNoAllBinarySensor;
begin
        Exit(TNoAllBinarySensor.instance);
end;
    

constructor TNoAllBinarySensor.Create;
begin
    inherited Create;
end;

initialization
  {AB:INITIALIZATION}
  TNoAllBinarySensor.instance := TNoAllBinarySensor.Create();
  {AB:END}

end.

