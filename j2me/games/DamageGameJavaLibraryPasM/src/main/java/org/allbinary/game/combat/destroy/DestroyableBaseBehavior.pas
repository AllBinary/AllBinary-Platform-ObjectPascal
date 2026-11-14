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
// package org.allbinary.game.combat.destroy
unit DestroyableBaseBehavior;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DestroyableInterface, NamedInterface;

type
  {AB:TYPES}
  TDestroyableBaseBehavior = class(TInterfacedObject, IDestroyableInterface, INamedInterface)
  public
    class var instance: TDestroyableBaseBehavior;
    function JavaObject: TObject;
    constructor Create;
        class function getInstance: TDestroyableBaseBehavior; static;
        function getName: string; virtual;
        function isDestroyed: Boolean; virtual;
        procedure setDestroyed(destroyed: Boolean); virtual;
  end;

implementation
uses
  CommonStrings;


{AB:CODE}

function TDestroyableBaseBehavior.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TDestroyableBaseBehavior.Create;
begin
  inherited Create;
end;
    

class function TDestroyableBaseBehavior.getInstance: TDestroyableBaseBehavior;
begin
        Exit(TDestroyableBaseBehavior.instance);
end;
    

function TDestroyableBaseBehavior.getName: string;
begin
        Exit(Self.ClassType.ClassName);
end;
    

// throws Exception
function TDestroyableBaseBehavior.isDestroyed: Boolean;
begin
        raise SysUtils.Exception.Create(TCommonStrings.getInstance().NOT_IMPLEMENTED);
end;
    

procedure TDestroyableBaseBehavior.setDestroyed(destroyed: Boolean);
begin
end;

initialization
  {AB:INITIALIZATION}
  TDestroyableBaseBehavior.instance := TDestroyableBaseBehavior.Create();
  {AB:END}

end.

