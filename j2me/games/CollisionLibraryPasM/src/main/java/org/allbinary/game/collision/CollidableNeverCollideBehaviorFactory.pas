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
unit CollidableNeverCollideBehaviorFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CollidableNeverCollideBehavior, CollidableBaseBehavior, CollidableBaseBehaviorFactory;

type
  {AB:TYPES}
  TCollidableNeverCollideBehaviorFactory = class(TCollidableBaseBehaviorFactory)
  public
    instance: TCollidableNeverCollideBehavior;
    class var instanceC: TCollidableNeverCollideBehaviorFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TCollidableNeverCollideBehaviorFactory; static;
        function createBehavior: TCollidableBaseBehavior; override;
  end;

implementation

{AB:CODE}

procedure TCollidableNeverCollideBehaviorFactory.InitFields;
begin
  Self.instance := TCollidableNeverCollideBehavior.Create(False);
end;

constructor TCollidableNeverCollideBehaviorFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TCollidableNeverCollideBehaviorFactory.getInstance: TCollidableNeverCollideBehaviorFactory;
begin
        Exit(TCollidableNeverCollideBehaviorFactory.instanceC);
end;
    

function TCollidableNeverCollideBehaviorFactory.createBehavior: TCollidableBaseBehavior;
begin
        Exit(Self.instance);
end;

initialization
  {AB:INITIALIZATION}
  TCollidableNeverCollideBehaviorFactory.instanceC := TCollidableNeverCollideBehaviorFactory.Create();
  {AB:END}

end.

