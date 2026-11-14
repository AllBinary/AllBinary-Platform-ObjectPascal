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
// package org.allbinary.game.ag.ai
unit ScrollOverAtHalfAI;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicAI, GameInput, AllBinaryLayer, AllBinaryLayerManager;

type
  {AB:TYPES}
  TScrollOverAtHalfAI = class(TBasicAI)
  public
        constructor Create(ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
        procedure processAI(allBinaryLayerManager_: TAllBinaryLayerManager); override;
  end;

implementation
uses
  DisplayInfoSingleton;


{AB:CODE}
    

constructor TScrollOverAtHalfAI.Create(ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
begin
        inherited Create(ownerLayerInterface, gameInput_);
end;
    

// throws Exception
procedure TScrollOverAtHalfAI.processAI(allBinaryLayerManager_: TAllBinaryLayerManager);
var
  ownerLayerInterface: TAllBinaryLayer;
  x: Integer;
  y: Integer;
  halfWidth: Integer;
  halfHeight: Integer;
  displayInfo: TDisplayInfoSingleton;
begin
        ownerLayerInterface := Self.getOwnerLayerInterface();
        x := ownerLayerInterface.getXP();
        y := ownerLayerInterface.getYP();
        halfWidth := ownerLayerInterface.getHalfWidth();
        halfHeight := ownerLayerInterface.getHalfHeight();
        displayInfo := TDisplayInfoSingleton.getInstance();
        if (x) > ((displayInfo.getLastWidth()) - (halfWidth)) then begin
            ownerLayerInterface.setPosition((halfWidth) + (1), y, ownerLayerInterface.getZP());
        end;
        if (y) > ((displayInfo.getLastHeight()) - (halfHeight)) then begin
            ownerLayerInterface.setPosition(x, (halfHeight) + (1), ownerLayerInterface.getZP());
        end;
        if (x) < (-halfWidth) then begin
            ownerLayerInterface.setPosition((displayInfo.getLastWidth()) - (halfWidth), y, ownerLayerInterface.getZP());
        end;
        if (y) < (-halfHeight) then begin
            ownerLayerInterface.setPosition(x, (displayInfo.getLastHeight()) - (halfHeight), ownerLayerInterface.getZP());
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

