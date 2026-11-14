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
// package org.allbinary.string
unit CommonPhoneStrings;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TCommonPhoneStrings = class(TObject)
  public
    UP: string;
    DOWN: string;
    LEFT: string;
    RIGHT: string;
    ZERO: string;
    ONE: string;
    TWO: string;
    THREE: string;
    FOUR: string;
    FIVE: string;
    SIX: string;
    SEVEN: string;
    EIGHT: string;
    NINE: string;
    POUND: string;
    STAR: string;
    FIRE: string;
    class var instance: TCommonPhoneStrings;
    procedure InitFields;
    constructor Create;
        class function getInstance: TCommonPhoneStrings; static;
  end;

implementation
uses
  JsType;


{AB:CODE}

procedure TCommonPhoneStrings.InitFields;
begin
  Self.UP := 'UP';
  Self.DOWN := 'DOWN';
  Self.LEFT := 'LEFT';
  Self.RIGHT := 'RIGHT';
  Self.ZERO := '0';
  Self.ONE := '1';
  Self.TWO := '2';
  Self.THREE := '3';
  Self.FOUR := '4';
  Self.FIVE := '5';
  Self.SIX := '6';
  Self.SEVEN := '7';
  Self.EIGHT := '8';
  Self.NINE := '9';
  Self.POUND := '#';
  Self.STAR := '*';
  Self.FIRE := 'FIRE';
end;

constructor TCommonPhoneStrings.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TCommonPhoneStrings.getInstance: TCommonPhoneStrings;
begin
        Exit(TCommonPhoneStrings.instance);
end;

initialization
  {AB:INITIALIZATION}
  TCommonPhoneStrings.instance := TCommonPhoneStrings.Create();
  {AB:END}

end.

