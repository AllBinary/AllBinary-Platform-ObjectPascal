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
// package org.allbinary.graphics.threed
unit RatioProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TRatioProcessor = class(TObject)
  public
    constructor Create;
        procedure setCustom(width: Integer; height: Integer; ratio: Single); virtual;
  end;

implementation

{AB:CODE}

constructor TRatioProcessor.Create;
begin
  inherited Create;
end;
    

procedure TRatioProcessor.setCustom(width: Integer; height: Integer; ratio: Single);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

