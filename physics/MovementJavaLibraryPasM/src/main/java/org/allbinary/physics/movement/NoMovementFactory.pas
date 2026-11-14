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
unit NoMovementFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Movement;

type
  {AB:TYPES}
  TNoMovementFactory = class(TObject)
  public
    movement: TMovement;
    class var instance: TNoMovementFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TNoMovementFactory; static;
        function getMovmentInstance: TMovement;
  end;

implementation

{AB:CODE}

procedure TNoMovementFactory.InitFields;
begin
  Self.movement := TMovement.Create();
end;

constructor TNoMovementFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TNoMovementFactory.getInstance: TNoMovementFactory;
begin
        Exit(TNoMovementFactory.instance);
end;
    

function TNoMovementFactory.getMovmentInstance: TMovement;
begin
        Exit(Self.movement);
end;

initialization
  {AB:INITIALIZATION}
  TNoMovementFactory.instance := TNoMovementFactory.Create();
  {AB:END}

end.

