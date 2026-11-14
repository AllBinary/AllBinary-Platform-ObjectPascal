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
// package org.allbinary.game.displayable.canvas
unit CanvasUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TCanvasUtil = class(TObject)
  public
        constructor Create;
        class function getKeyName(key: Integer): string; static;
  end;

implementation
uses
  Canvas, CommonPhoneStrings;


{AB:CODE}
    

constructor TCanvasUtil.Create;
begin
    inherited Create;
end;
    

class function TCanvasUtil.getKeyName(key: Integer): string;
var
  commonPhoneStrings_: TCommonPhoneStrings;
begin
        commonPhoneStrings_ := TCommonPhoneStrings.getInstance();
        if (key) = (TCanvas.UP) then begin
            Exit(commonPhoneStrings_.UP);
        end else if (key) = (TCanvas.DOWN) then begin
            Exit(commonPhoneStrings_.DOWN);
        end else if (key) = (TCanvas.RIGHT) then begin
            Exit(commonPhoneStrings_.RIGHT);
        end else if (key) = (TCanvas.LEFT) then begin
            Exit(commonPhoneStrings_.LEFT);
        end else if (key) = (TCanvas.FIRE) then begin
            Exit(commonPhoneStrings_.FIRE);
        end;
        Exit('UNKNOWN KEY');
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

