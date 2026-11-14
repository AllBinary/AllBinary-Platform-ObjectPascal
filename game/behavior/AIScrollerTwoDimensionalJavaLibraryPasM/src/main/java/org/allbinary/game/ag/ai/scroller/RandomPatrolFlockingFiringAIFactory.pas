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
// package org.allbinary.game.ag.ai.scroller
unit RandomPatrolFlockingFiringAIFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ArtificialIntelligenceInterface, ArtificialIntelligenceInterfaceFactoryInterface, GameInput, AllBinaryLayer, ABHashtable;

type
  {AB:TYPES}
  TRandomPatrolFlockingFiringAIFactory = class(TInterfacedObject, IArtificialIntelligenceInterfaceFactoryInterface)
  public
    function JavaObject: TObject;
    constructor Create;
        function getInstance(hashtable: TABHashtable<TObject, TObject>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput): IArtificialIntelligenceInterface; virtual;
  end;

implementation
uses
  RandomPatrolAI, TimedFireAI, ArrayAI;


{AB:CODE}

function TRandomPatrolFlockingFiringAIFactory.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TRandomPatrolFlockingFiringAIFactory.Create;
begin
  inherited Create;
end;
    

// throws Exception
function TRandomPatrolFlockingFiringAIFactory.getInstance(hashtable: TABHashtable<TObject, TObject>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput): IArtificialIntelligenceInterface;
var
  artificialIntelligenceInterface_: TArray<IArtificialIntelligenceInterface>;
begin
        artificialIntelligenceInterface_ := TJava.NewArray<IArtificialIntelligenceInterface>(2);
        artificialIntelligenceInterface_[0] := TRandomPatrolAI.Create(hashtable, ownerLayerInterface, gameInput_);
        artificialIntelligenceInterface_[1] := TTimedFireAI.Create(1800, ownerLayerInterface, gameInput_);
        Exit(TArrayAI.Create(artificialIntelligenceInterface_, ownerLayerInterface, gameInput_));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

