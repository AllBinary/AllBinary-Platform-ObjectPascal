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
// package org.allbinary.game.collision
unit CollisionTypeFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CollisionType;

type
  {AB:TYPES}
  TCollisionTypeFactory = class(TObject)
  public
    NONE: TCollisionType;
    DAMAGE: TCollisionType;
    PICKUP: TCollisionType;
    COLLISION: TCollisionType;
    class var SINGLETON: TCollisionTypeFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TCollisionTypeFactory; static;
  end;

implementation

{AB:CODE}

procedure TCollisionTypeFactory.InitFields;
begin
  Self.NONE := TCollisionType.Create('None');
  Self.DAMAGE := TCollisionType.Create('Damage');
  Self.PICKUP := TCollisionType.Create('Pickup');
  Self.COLLISION := TCollisionType.Create('Collision');
end;

constructor TCollisionTypeFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TCollisionTypeFactory.getInstance: TCollisionTypeFactory;
begin
        Exit(TCollisionTypeFactory.SINGLETON);
end;

initialization
  {AB:INITIALIZATION}
  TCollisionTypeFactory.SINGLETON := TCollisionTypeFactory.Create();
  {AB:END}

end.

