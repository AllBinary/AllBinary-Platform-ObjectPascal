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
unit ScrollOverImmediateAI;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicAI, GameInput, AllBinaryLayer, AllBinaryLayerManager;

type
  {AB:TYPES}
  TScrollOverImmediateAI = class(TBasicAI)
  public
        constructor Create(ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
        procedure processAI(allBinaryLayerManager_: TAllBinaryLayerManager); override;
  end;

implementation
uses
  DisplayInfoSingleton;


{AB:CODE}
    

constructor TScrollOverImmediateAI.Create(ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
begin
        inherited Create(ownerLayerInterface, gameInput_);
end;
    

// throws Exception
procedure TScrollOverImmediateAI.processAI(allBinaryLayerManager_: TAllBinaryLayerManager);
var
  ownerLayerInterface: TAllBinaryLayer;
  x: Integer;
  y: Integer;
  x2: Integer;
  y2: Integer;
  width: Integer;
  height: Integer;
  displayInfo: TDisplayInfoSingleton;
begin
        ownerLayerInterface := Self.getOwnerLayerInterface();
        x := ownerLayerInterface.getXP();
        y := ownerLayerInterface.getYP();
        x2 := ownerLayerInterface.getX2();
        y2 := ownerLayerInterface.getY2();
        width := ownerLayerInterface.getWidth();
        height := ownerLayerInterface.getHeight();
        displayInfo := TDisplayInfoSingleton.getInstance();
        if (x2) > (displayInfo.getLastWidth()) then begin
            ownerLayerInterface.setPosition(0, y, ownerLayerInterface.getZP());
        end;
        if (y2) > (displayInfo.getLastHeight()) then begin
            ownerLayerInterface.setPosition(x, 0, ownerLayerInterface.getZP());
        end;
        if (x) < (0) then begin
            ownerLayerInterface.setPosition((displayInfo.getLastWidth()) - (width), y, ownerLayerInterface.getZP());
        end;
        if (y) < (0) then begin
            ownerLayerInterface.setPosition(x, (displayInfo.getLastHeight()) - (height), ownerLayerInterface.getZP());
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

