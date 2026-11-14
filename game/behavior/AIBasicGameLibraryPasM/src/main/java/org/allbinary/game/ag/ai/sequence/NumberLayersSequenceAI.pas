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
// package org.allbinary.game.ag.ai.sequence
unit NumberLayersSequenceAI;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ArtificialIntelligenceInterface, GameInput, AllBinaryLayer, AllBinaryLayerManager, SequenceAI;

type
  {AB:TYPES}
  TNumberLayersSequenceAI = class(TSequenceAI)
  public
    numberOfLayersLeft: Integer;
    procedure InitFields;
        constructor Create(numberOfEnemiesLeft: Integer; artificialIntelligenceInterface: TArray<IArtificialIntelligenceInterface>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
        procedure processAI(allBinaryLayerManager_: TAllBinaryLayerManager); override;
  end;

implementation

{AB:CODE}

procedure TNumberLayersSequenceAI.InitFields;
begin
  
end;
    

constructor TNumberLayersSequenceAI.Create(numberOfEnemiesLeft: Integer; artificialIntelligenceInterface: TArray<IArtificialIntelligenceInterface>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
begin
        inherited Create(artificialIntelligenceInterface, ownerLayerInterface, gameInput_);
        InitFields;
        Self.numberOfLayersLeft := numberOfEnemiesLeft;
end;
    

// throws Exception
procedure TNumberLayersSequenceAI.processAI(allBinaryLayerManager_: TAllBinaryLayerManager);
begin
        if (Self.getIndex()) = (0) then begin
            if (allBinaryLayerManager_.getSize()) < (Self.numberOfLayersLeft) then begin
                Self.setIndex(1);
            end;
        end;
        inherited processAI(allBinaryLayerManager_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

