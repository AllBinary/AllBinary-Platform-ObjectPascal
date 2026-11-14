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
unit NumberOnOwnGroupSequenceAI;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ArtificialIntelligenceInterface, SequenceAI, GameInput, AllBinaryLayer, AllBinaryLayerManager;

type
  {AB:TYPES}
  TNumberOnOwnGroupSequenceAI = class(TSequenceAI)
  public
    numberOnSameTeam: TArray<Integer>;
    procedure InitFields;
        constructor Create(numberOnSameTeam: TArray<Integer>; artificialIntelligenceInterface: TArray<IArtificialIntelligenceInterface>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
        procedure processAI(allBinaryLayerManager_: TAllBinaryLayerManager); override;
  end;

implementation
uses
  GroupLayerManagerListener;


{AB:CODE}

procedure TNumberOnOwnGroupSequenceAI.InitFields;
begin
  
end;
    

constructor TNumberOnOwnGroupSequenceAI.Create(numberOnSameTeam: TArray<Integer>; artificialIntelligenceInterface: TArray<IArtificialIntelligenceInterface>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
begin
        inherited Create(artificialIntelligenceInterface, ownerLayerInterface, gameInput_);
        InitFields;
        Self.numberOnSameTeam := numberOnSameTeam;
end;
    

// throws Exception
procedure TNumberOnOwnGroupSequenceAI.processAI(allBinaryLayerManager_: TAllBinaryLayerManager);
var
  layerInterface: TAllBinaryLayer;
  index: Integer;
  size: Integer;
begin
        layerInterface := Self.getOwnerLayerInterface();
        index := Self.getIndex();
        if (System.Length(Self.numberOnSameTeam)) > (index) then begin
            size := TGroupLayerManagerListener.getInstance().getGroupSizeFromInterface(layerInterface);
            if (Self.numberOnSameTeam[index].intValue()) > (size) then begin
                Self.next();
            end;
        end;
        inherited processAI(allBinaryLayerManager_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

