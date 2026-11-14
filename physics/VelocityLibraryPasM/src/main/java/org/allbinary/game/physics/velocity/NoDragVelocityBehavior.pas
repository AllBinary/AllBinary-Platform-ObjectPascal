{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.physics.velocity
unit NoDragVelocityBehavior;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, VelocityBehaviorBase;

type
  {AB:TYPES}
  TNoDragVelocityBehavior = class(TVelocityBehaviorBase)
  public
    class var instance: TNoDragVelocityBehavior;
    constructor Create;
  end;

implementation

{AB:CODE}

constructor TNoDragVelocityBehavior.Create;
begin
  inherited Create;
end;

initialization
  {AB:INITIALIZATION}
  TNoDragVelocityBehavior.instance := TNoDragVelocityBehavior.Create();
  {AB:END}

end.

