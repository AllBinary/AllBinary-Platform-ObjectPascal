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
unit AllBinaryVibration;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryVibrationME;

type
  {AB:TYPES}
  TAllBinaryVibration = class(TAllBinaryVibrationME)
  public
    class var VIBRATION: TAllBinaryVibrationME;
        constructor Create;
        class function getInstance: TAllBinaryVibrationME; static;
        class procedure init; static;
        procedure vibrate(duration: Integer; type_: Integer; volume: Integer); override;
  end;

implementation
uses
  AllBinaryNoVibration, GameConfigurationCentral;


{AB:CODE}
    

constructor TAllBinaryVibration.Create;
begin
    inherited Create;
end;
    

class function TAllBinaryVibration.getInstance: TAllBinaryVibrationME;
begin
        Exit(TAllBinaryVibration.VIBRATION);
end;
    

class procedure TAllBinaryVibration.init;
begin
        if (TGameConfigurationCentral.getInstance().VIBRATION.getValue().intValue()) = (0) then begin
            TAllBinaryVibration.VIBRATION := TAllBinaryNoVibration.NO_VIBRATION;
        end else begin
            TAllBinaryVibration.VIBRATION := TAllBinaryVibration.Create();
        end;
end;
    

procedure TAllBinaryVibration.vibrate(duration: Integer; type_: Integer; volume: Integer);
begin
end;

initialization
  {AB:INITIALIZATION}
  TAllBinaryVibration.VIBRATION := TAllBinaryNoVibration.NO_VIBRATION;
  {AB:END}

end.

