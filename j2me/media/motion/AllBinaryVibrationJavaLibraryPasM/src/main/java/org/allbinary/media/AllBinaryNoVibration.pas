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
// package org.allbinary.media
unit AllBinaryNoVibration;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryVibrationME;

type
  {AB:TYPES}
  TAllBinaryNoVibration = class(TAllBinaryVibrationME)
  public
    class var NO_VIBRATION: TAllBinaryVibrationME;
    constructor Create;
        procedure vibrate(duration: Integer; type_: Integer; volume: Integer); override;
  end;

implementation

{AB:CODE}

constructor TAllBinaryNoVibration.Create;
begin
  inherited Create;
end;
    

procedure TAllBinaryNoVibration.vibrate(duration: Integer; type_: Integer; volume: Integer);
begin
end;

initialization
  {AB:INITIALIZATION}
  TAllBinaryNoVibration.NO_VIBRATION := TAllBinaryNoVibration.Create();
  {AB:END}

end.

