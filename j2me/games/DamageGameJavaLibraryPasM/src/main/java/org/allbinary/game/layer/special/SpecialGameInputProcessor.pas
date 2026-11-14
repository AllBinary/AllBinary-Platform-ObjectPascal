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
unit SpecialGameInputProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameInputProcessor, CollidableDestroyableDamageableLayer;

type
  {AB:TYPES}
  TSpecialGameInputProcessor = class(TGameInputProcessor)
  public
    collidableDestroyableDamageableLayer: TCollidableDestroyableDamageableLayer;
    procedure InitFields;
        constructor Create(collidableDestroyableDamageableLayer_: TCollidableDestroyableDamageableLayer);
  end;

implementation

{AB:CODE}

procedure TSpecialGameInputProcessor.InitFields;
begin
  
end;
    

constructor TSpecialGameInputProcessor.Create(collidableDestroyableDamageableLayer_: TCollidableDestroyableDamageableLayer);
begin
    inherited Create;
    InitFields;
        Self.collidableDestroyableDamageableLayer := collidableDestroyableDamageableLayer_;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

