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
// package org.allbinary.business.advertisement
unit AdvertisementProcessorInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  IAdvertisementProcessorInterface = class(TObject)
  public
    constructor Create;
        procedure process; virtual;
        procedure start; virtual;
        procedure stop; virtual;
  end;

implementation

{AB:CODE}

constructor IAdvertisementProcessorInterface.Create;
begin
  inherited Create;
end;
    

procedure IAdvertisementProcessorInterface.process;
begin
end;
    

procedure IAdvertisementProcessorInterface.start;
begin
end;
    

procedure IAdvertisementProcessorInterface.stop;
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

