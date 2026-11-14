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
// package org.allbinary.game.graphics.hud
unit BasicHudFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TBasicHudFactory = class(TObject)
  public
    DIRECTION_EXCEPTION: string;
    VERTICAL: Integer;
    HORIZONTAL: Integer;
    BOTTOMLEFT: Integer;
    BOTTOMRIGHT: Integer;
    TOPLEFT: Integer;
    TOPRIGHT: Integer;
    BOTTOMCENTER: Integer;
    TOPCENTER: Integer;
    ABSOLUTE_: Integer;
    class var instance: TBasicHudFactory;
    procedure InitFields;
        class function getInstance: TBasicHudFactory; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TBasicHudFactory.InitFields;
begin
  Self.DIRECTION_EXCEPTION := 'Only Horizontal Direction is Allowed Currently';
  Self.VERTICAL := 0;
  Self.HORIZONTAL := 1;
  Self.BOTTOMLEFT := 0;
  Self.BOTTOMRIGHT := 1;
  Self.TOPLEFT := 2;
  Self.TOPRIGHT := 3;
  Self.BOTTOMCENTER := 4;
  Self.TOPCENTER := 5;
  Self.ABSOLUTE_ := 6;
end;
    

class function TBasicHudFactory.getInstance: TBasicHudFactory;
begin
        Exit(TBasicHudFactory.instance);
end;
    

constructor TBasicHudFactory.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TBasicHudFactory.instance := TBasicHudFactory.Create();
  {AB:END}

end.

