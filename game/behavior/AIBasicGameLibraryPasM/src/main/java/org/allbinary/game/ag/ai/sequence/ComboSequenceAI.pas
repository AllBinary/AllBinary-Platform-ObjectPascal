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
unit ComboSequenceAI;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ArtificialIntelligenceInterface, GameInput, AllBinaryLayer, AllBinaryLayerManager, SequenceAI;

type
  {AB:TYPES}
  TComboSequenceAI = class(TSequenceAI)
  public
        constructor Create(artificialIntelligenceInterface: TArray<IArtificialIntelligenceInterface>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
        procedure processAI(allBinaryLayerManager_: TAllBinaryLayerManager); override;
  end;

implementation

{AB:CODE}
    

constructor TComboSequenceAI.Create(artificialIntelligenceInterface: TArray<IArtificialIntelligenceInterface>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
begin
        inherited Create(artificialIntelligenceInterface, ownerLayerInterface, gameInput_);
end;
    

// throws Exception
procedure TComboSequenceAI.processAI(allBinaryLayerManager_: TAllBinaryLayerManager);
var
  artificialIntelligenceInterfaceArray: TArray<IArtificialIntelligenceInterface>;
  size: Integer;
  index: Integer;
begin
        artificialIntelligenceInterfaceArray := Self.getArtificialIntelligenceInterface();
        size := System.Length(artificialIntelligenceInterfaceArray);
        for index := 0 to size - 1 do begin
            Self.setIndex(index);
            inherited processAI(allBinaryLayerManager_);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

