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
// package org.allbinary.physics.movement
unit Movement;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryGameLayer, BasicDecimal, MovementInterface;

type
  {AB:TYPES}
  TMovement = class(TInterfacedObject, IMovementInterface)
  public
    function JavaObject: TObject;
        constructor Create;
        procedure init(speedBasicDecimal: TBasicDecimal; angle: Integer; otherAngle: Integer); virtual;
        procedure process(layer: TAllBinaryGameLayer); virtual;
        procedure stop; virtual;
  end;

implementation

{AB:CODE}

function TMovement.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TMovement.Create;
begin
    inherited Create;
end;
    

procedure TMovement.init(speedBasicDecimal: TBasicDecimal; angle: Integer; otherAngle: Integer);
begin
end;
    

// throws Exception
procedure TMovement.process(layer: TAllBinaryGameLayer);
begin
end;
    

procedure TMovement.stop;
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

