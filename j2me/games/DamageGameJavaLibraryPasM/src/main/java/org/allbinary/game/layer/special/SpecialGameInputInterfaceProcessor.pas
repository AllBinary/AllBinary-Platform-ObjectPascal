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
// package org.allbinary.game.layer.special
unit SpecialGameInputInterfaceProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameInputProcessor, SpecialGameInputInterface;

type
  {AB:TYPES}
  TSpecialGameInputInterfaceProcessor = class(TGameInputProcessor)
  public
    specialGameInputInterface: ISpecialGameInputInterface;
    procedure InitFields;
        constructor Create(collidableDestroyableDamageableLayer: ISpecialGameInputInterface);
  end;

implementation

{AB:CODE}

procedure TSpecialGameInputInterfaceProcessor.InitFields;
begin
  
end;
    

constructor TSpecialGameInputInterfaceProcessor.Create(collidableDestroyableDamageableLayer: ISpecialGameInputInterface);
begin
    inherited Create;
    InitFields;
        Self.specialGameInputInterface := collidableDestroyableDamageableLayer;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

