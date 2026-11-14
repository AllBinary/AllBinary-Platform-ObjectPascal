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
// package org.allbinary.math
unit PositionStrings;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TPositionStrings = class(TObject)
  public
    X: string;
    Y: string;
    X_LABEL: string;
    Y_LABEL: string;
    Z_LABEL: string;
    DX_LABEL: string;
    DY_LABEL: string;
    DZ_LABEL: string;
    class var instance: TPositionStrings;
    procedure InitFields;
    constructor Create;
        class function getInstance: TPositionStrings; static;
  end;

implementation
uses
  JsType, JsMethod, JsProperty;


{AB:CODE}

procedure TPositionStrings.InitFields;
begin
  Self.X := 'x';
  Self.Y := 'y';
  Self.X_LABEL := 'x: ';
  Self.Y_LABEL := 'y: ';
  Self.Z_LABEL := 'z: ';
  Self.DX_LABEL := 'dx: ';
  Self.DY_LABEL := 'dy: ';
  Self.DZ_LABEL := 'dz: ';
end;

constructor TPositionStrings.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TPositionStrings.getInstance: TPositionStrings;
begin
        Exit(TPositionStrings.instance);
end;

initialization
  {AB:INITIALIZATION}
  TPositionStrings.instance := TPositionStrings.Create();
  {AB:END}

end.

