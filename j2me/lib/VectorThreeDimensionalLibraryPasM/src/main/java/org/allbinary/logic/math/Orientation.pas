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
// package org.allbinary.logic.math
unit Orientation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicDecimal;

type
  {AB:TYPES}
  TOrientation = class(TObject)
  public
    yaw: TBasicDecimal;
    pitch: TBasicDecimal;
    roll: TBasicDecimal;
    class var NONE: TOrientation;
    class var SINGLETON: TOrientation;
    procedure InitFields;
        class function getInstance(yaw: Integer; pitch: Integer; roll: Integer): TOrientation; static;
        constructor Create(yaw: Integer; pitch: Integer; roll: Integer);
        function toString: string; virtual;
  end;

implementation
uses
  StringMaker;


{AB:CODE}

procedure TOrientation.InitFields;
begin
  Self.yaw := TBasicDecimal.Create(0);
  Self.pitch := TBasicDecimal.Create(0);
  Self.roll := TBasicDecimal.Create(0);
end;
    

class function TOrientation.getInstance(yaw: Integer; pitch: Integer; roll: Integer): TOrientation;
begin
        TOrientation.SINGLETON.yaw.setint(yaw);
        TOrientation.SINGLETON.pitch.setint(pitch);
        TOrientation.SINGLETON.roll.setint(roll);
        Exit(TOrientation.SINGLETON);
end;
    

constructor TOrientation.Create(yaw: Integer; pitch: Integer; roll: Integer);
begin
    inherited Create;
    InitFields;
        Self.yaw.setint(yaw);
        Self.pitch.setint(pitch);
        Self.roll.setint(roll);
end;
    

function TOrientation.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('Y: ');
        stringBuffer.append(Self.yaw.toString());
        stringBuffer.append(' P: ');
        stringBuffer.append(Self.pitch.toString());
        stringBuffer.append(' R: ');
        stringBuffer.append(Self.roll.toString());
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  TOrientation.NONE := TOrientation.Create(0, 0, 0);
  TOrientation.SINGLETON := TOrientation.Create(0, 0, 0);
  {AB:END}

end.

