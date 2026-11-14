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
unit NumberLayersSequenceAIFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ArtificialIntelligenceInterface, GameInput, AllBinaryLayer;

type
  {AB:TYPES}
  TNumberLayersSequenceAIFactory = class(TObject)
  public
    constructor Create;
        function getInstance(numberOfEnemiesLeft: Integer; artificialIntelligenceInterface_: TArray<IArtificialIntelligenceInterface>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput): IArtificialIntelligenceInterface; virtual;
  end;

implementation
uses
  NumberLayersSequenceAI;


{AB:CODE}

constructor TNumberLayersSequenceAIFactory.Create;
begin
  inherited Create;
end;
    

function TNumberLayersSequenceAIFactory.getInstance(numberOfEnemiesLeft: Integer; artificialIntelligenceInterface_: TArray<IArtificialIntelligenceInterface>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput): IArtificialIntelligenceInterface;
begin
        Exit(TNumberLayersSequenceAI.Create(numberOfEnemiesLeft, artificialIntelligenceInterface_, ownerLayerInterface, gameInput_));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

