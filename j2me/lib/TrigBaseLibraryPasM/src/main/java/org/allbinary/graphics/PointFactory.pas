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
// package org.allbinary.graphics
unit PointFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GPoint;

type
  {AB:TYPES}
  TPointFactory = class(TObject)
  public
    ZERO_ZERO: TGPoint;
    class var instance: TPointFactory;
    procedure InitFields;
        class function getInstance: TPointFactory; static;
        procedure init; virtual;
        constructor Create;
        function createXY(x: Integer; y: Integer): TGPoint; virtual;
        function createXYZ(x: Integer; y: Integer; z: Integer): TGPoint; virtual;
  end;

implementation
uses
  JsType, JsMethod, JsConstructor, JsProperty;


{AB:CODE}

procedure TPointFactory.InitFields;
begin
  Self.ZERO_ZERO := Self.createXYZ(0, 0, 0);
end;
    

class function TPointFactory.getInstance: TPointFactory;
begin
        Exit(TPointFactory.instance);
end;
    

procedure TPointFactory.init;
begin
end;
    

constructor TPointFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TPointFactory.createXY(x: Integer; y: Integer): TGPoint;
begin
        Exit(TGPoint.Create(x, y, 0));
end;
    

function TPointFactory.createXYZ(x: Integer; y: Integer; z: Integer): TGPoint;
begin
        Exit(TGPoint.Create(x, y, z));
end;

initialization
  {AB:INITIALIZATION}
  TPointFactory.instance := TPointFactory.Create();
  {AB:END}

end.

