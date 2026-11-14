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
unit SpecialAnalogDownGameInputProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameKeyEvent, AllBinaryLayerManager, CollidableDestroyableDamageableLayer, SpecialGameInputProcessor;

type
  {AB:TYPES}
  TSpecialAnalogDownGameInputProcessor = class(TSpecialGameInputProcessor)
  public
        constructor Create(collidableDestroyableDamageableLayer_: TCollidableDestroyableDamageableLayer);
        procedure processAnalog(allbinaryLayerManager_: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent; yAnalogValue: Integer); override;
  end;

implementation

{AB:CODE}
    

constructor TSpecialAnalogDownGameInputProcessor.Create(collidableDestroyableDamageableLayer_: TCollidableDestroyableDamageableLayer);
begin
        inherited Create(collidableDestroyableDamageableLayer_);
end;
    

// throws Exception
procedure TSpecialAnalogDownGameInputProcessor.processAnalog(allbinaryLayerManager_: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent; yAnalogValue: Integer);
begin
        Self.collidableDestroyableDamageableLayer.downAnalog(yAnalogValue);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

