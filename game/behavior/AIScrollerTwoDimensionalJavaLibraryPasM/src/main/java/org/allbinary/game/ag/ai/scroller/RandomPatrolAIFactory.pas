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
unit RandomPatrolAIFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ArtificialIntelligenceInterface, ArtificialIntelligenceInterfaceFactoryInterface, GameInput, AllBinaryLayer, ABHashtable;

type
  {AB:TYPES}
  TRandomPatrolAIFactory = class(TInterfacedObject, IArtificialIntelligenceInterfaceFactoryInterface)
  public
    function JavaObject: TObject;
    constructor Create;
        function getInstance(hashtable: TABHashtable<TObject, TObject>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput): IArtificialIntelligenceInterface; virtual;
  end;

implementation
uses
  RandomPatrolAI;


{AB:CODE}

function TRandomPatrolAIFactory.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TRandomPatrolAIFactory.Create;
begin
  inherited Create;
end;
    

// throws Exception
function TRandomPatrolAIFactory.getInstance(hashtable: TABHashtable<TObject, TObject>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput): IArtificialIntelligenceInterface;
begin
        Exit(TRandomPatrolAI.Create(hashtable, ownerLayerInterface, gameInput_));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

