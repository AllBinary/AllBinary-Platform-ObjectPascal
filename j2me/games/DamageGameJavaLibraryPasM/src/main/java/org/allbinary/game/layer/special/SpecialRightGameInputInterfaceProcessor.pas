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
unit SpecialRightGameInputInterfaceProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameKeyEvent, AllBinaryLayerManager, SpecialGameInputInterface, SpecialGameInputInterfaceProcessor;

type
  {AB:TYPES}
  TSpecialRightGameInputInterfaceProcessor = class(TSpecialGameInputInterfaceProcessor)
  public
        constructor Create(collidableDestroyableDamageableLayer: ISpecialGameInputInterface);
        procedure processEvent(allbinaryLayerManager_: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent); override;
  end;

implementation

{AB:CODE}
    

constructor TSpecialRightGameInputInterfaceProcessor.Create(collidableDestroyableDamageableLayer: ISpecialGameInputInterface);
begin
        inherited Create(collidableDestroyableDamageableLayer);
end;
    

// throws Exception
procedure TSpecialRightGameInputInterfaceProcessor.processEvent(allbinaryLayerManager_: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent);
begin
        Self.specialGameInputInterface.right();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

