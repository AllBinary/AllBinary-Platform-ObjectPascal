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
unit CollidableAlwaysPickupNeverCollideBehaviorFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CollidableAlwaysPickupNeverCollideBehavior, CollidableBaseBehavior, CollidableBaseBehaviorFactory;

type
  {AB:TYPES}
  TCollidableAlwaysPickupNeverCollideBehaviorFactory = class(TCollidableBaseBehaviorFactory)
  public
    instance: TCollidableAlwaysPickupNeverCollideBehavior;
    class var instanceC: TCollidableAlwaysPickupNeverCollideBehaviorFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TCollidableAlwaysPickupNeverCollideBehaviorFactory; static;
        function createBehavior: TCollidableBaseBehavior; override;
  end;

implementation

{AB:CODE}

procedure TCollidableAlwaysPickupNeverCollideBehaviorFactory.InitFields;
begin
  Self.instance := TCollidableAlwaysPickupNeverCollideBehavior.Create();
end;

constructor TCollidableAlwaysPickupNeverCollideBehaviorFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TCollidableAlwaysPickupNeverCollideBehaviorFactory.getInstance: TCollidableAlwaysPickupNeverCollideBehaviorFactory;
begin
        Exit(TCollidableAlwaysPickupNeverCollideBehaviorFactory.instanceC);
end;
    

function TCollidableAlwaysPickupNeverCollideBehaviorFactory.createBehavior: TCollidableBaseBehavior;
begin
        Exit(Self.instance);
end;

initialization
  {AB:INITIALIZATION}
  TCollidableAlwaysPickupNeverCollideBehaviorFactory.instanceC := TCollidableAlwaysPickupNeverCollideBehaviorFactory.Create();
  {AB:END}

end.

