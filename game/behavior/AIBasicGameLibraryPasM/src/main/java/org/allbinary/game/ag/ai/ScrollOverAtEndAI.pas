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
unit ScrollOverAtEndAI;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicAI, GameInput, AllBinaryLayer, AllBinaryLayerManager;

type
  {AB:TYPES}
  TScrollOverAtEndAI = class(TBasicAI)
  public
        constructor Create(ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
        procedure processAI(allBinaryLayerManager_: TAllBinaryLayerManager); override;
  end;

implementation
uses
  DisplayInfoSingleton;


{AB:CODE}
    

constructor TScrollOverAtEndAI.Create(ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
begin
        inherited Create(ownerLayerInterface, gameInput_);
end;
    

// throws Exception
procedure TScrollOverAtEndAI.processAI(allBinaryLayerManager_: TAllBinaryLayerManager);
var
  ownerLayerInterface: TAllBinaryLayer;
  x: Integer;
  y: Integer;
  width: Integer;
  height: Integer;
  displayInfo: TDisplayInfoSingleton;
begin
        ownerLayerInterface := Self.getOwnerLayerInterface();
        x := ownerLayerInterface.getXP();
        y := ownerLayerInterface.getYP();
        width := ownerLayerInterface.getWidth();
        height := ownerLayerInterface.getHeight();
        displayInfo := TDisplayInfoSingleton.getInstance();
        if (x) > (displayInfo.getLastWidth()) then begin
            ownerLayerInterface.setPosition(0, y, ownerLayerInterface.getZP());
        end;
        if (y) > (displayInfo.getLastHeight()) then begin
            ownerLayerInterface.setPosition(x, 0, ownerLayerInterface.getZP());
        end;
        if (x) < (-width) then begin
            ownerLayerInterface.setPosition((displayInfo.getLastWidth()) - (width), y, ownerLayerInterface.getZP());
        end;
        if (y) < (-height) then begin
            ownerLayerInterface.setPosition(x, (displayInfo.getLastHeight()) - (height), ownerLayerInterface.getZP());
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

