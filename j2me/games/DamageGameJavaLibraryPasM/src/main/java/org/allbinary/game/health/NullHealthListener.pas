{
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.health
unit NullHealthListener;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, HealthListenerInterface;

type
  {AB:TYPES}
  TNullHealthListener = class(TInterfacedObject, IHealthListenerInterface)
  public
    class var NULL_HEALTH_LISTENER: TNullHealthListener;
    function JavaObject: TObject;
    constructor Create;
        procedure onHealthChange; virtual;
  end;

implementation

{AB:CODE}

function TNullHealthListener.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TNullHealthListener.Create;
begin
  inherited Create;
end;
    

procedure TNullHealthListener.onHealthChange;
begin
end;

initialization
  {AB:INITIALIZATION}
  TNullHealthListener.NULL_HEALTH_LISTENER := TNullHealthListener.Create();
  {AB:END}

end.

