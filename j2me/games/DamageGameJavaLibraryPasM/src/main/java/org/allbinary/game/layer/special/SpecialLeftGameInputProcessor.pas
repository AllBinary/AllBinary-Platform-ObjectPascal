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
unit SpecialLeftGameInputProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameKeyEvent, AllBinaryLayerManager, CollidableDestroyableDamageableLayer, SpecialGameInputProcessor;

type
  {AB:TYPES}
  TSpecialLeftGameInputProcessor = class(TSpecialGameInputProcessor)
  public
        constructor Create(collidableDestroyableDamageableLayer_: TCollidableDestroyableDamageableLayer);
        procedure processEvent(allbinaryLayerManager_: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent); override;
  end;

implementation

{AB:CODE}
    

constructor TSpecialLeftGameInputProcessor.Create(collidableDestroyableDamageableLayer_: TCollidableDestroyableDamageableLayer);
begin
        inherited Create(collidableDestroyableDamageableLayer_);
end;
    

// throws Exception
procedure TSpecialLeftGameInputProcessor.processEvent(allbinaryLayerManager_: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent);
begin
        Self.collidableDestroyableDamageableLayer.left();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

