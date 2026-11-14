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
unit TerrainPatrolAIFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ArtificialIntelligenceInterface, ArtificialIntelligenceInterfaceFactoryInterface, GameInput, AllBinaryLayer, ABHashtable;

type
  {AB:TYPES}
  TTerrainPatrolAIFactory = class(TInterfacedObject, IArtificialIntelligenceInterfaceFactoryInterface)
  public
    function JavaObject: TObject;
    constructor Create;
        function getInstance(hashtable: TABHashtable<TObject, TObject>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput): IArtificialIntelligenceInterface; virtual;
  end;

implementation
uses
  BasePatrolAI, TerrainPatrolAI, SmallIntegerSingletonFactory;


{AB:CODE}

function TTerrainPatrolAIFactory.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TTerrainPatrolAIFactory.Create;
begin
  inherited Create;
end;
    

// throws Exception
function TTerrainPatrolAIFactory.getInstance(hashtable: TABHashtable<TObject, TObject>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput): IArtificialIntelligenceInterface;
begin
        hashtable.put(TJava.Box(TBasePatrolAI.MAX_DISTANCE), TJava.Box(TSmallIntegerSingletonFactory.getInstance().getAt(220)));
        Exit(TTerrainPatrolAI.Create(hashtable, ownerLayerInterface, gameInput_));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

