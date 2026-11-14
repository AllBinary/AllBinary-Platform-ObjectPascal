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
unit DiveAndDirectionalTrackingAIFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ArtificialIntelligenceInterface, ArtificialIntelligenceInterfaceFactoryInterface, GameInput, AllBinaryLayer, ABHashtable;

type
  {AB:TYPES}
  TDiveAndDirectionalTrackingAIFactory = class(TInterfacedObject, IArtificialIntelligenceInterfaceFactoryInterface)
  public
    function JavaObject: TObject;
    constructor Create;
        function getInstance(hashtable: TABHashtable<TObject, TObject>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput): IArtificialIntelligenceInterface; virtual;
  end;

implementation
uses
  ThrustAIVisitorFactory, BasicProbabilityAIDataFactory, LastKeyAIVisitorFactory, DiveAndDirectionalTrackingAI, BasicRandomAIFactory, BasicAI, Visitor;


{AB:CODE}

function TDiveAndDirectionalTrackingAIFactory.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TDiveAndDirectionalTrackingAIFactory.Create;
begin
  inherited Create;
end;
    

// throws Exception
function TDiveAndDirectionalTrackingAIFactory.getInstance(hashtable: TABHashtable<TObject, TObject>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput): IArtificialIntelligenceInterface;
var
  visitorCanBeNull: TObject;
  hashtable2: TABHashtable<TObject, TObject>;
  artificialIntelligenceInterface_: IArtificialIntelligenceInterface;
begin
        visitorCanBeNull := TJava.Box(hashtable.get(TJava.Box(TJava.Box(TBasicAI.AI_VISITOR))));
        if (visitorCanBeNull) = (nil) then begin
            visitorCanBeNull := TJava.Box(TThrustAIVisitorFactory.getInstance());
        end;
        hashtable2 := TBasicProbabilityAIDataFactory.Create().getInstance();
        hashtable2.put(TJava.Box(TBasicAI.AI_VISITOR), TJava.Box(TLastKeyAIVisitorFactory.getInstance()));
        artificialIntelligenceInterface_ := TBasicRandomAIFactory.Create().getInstance(hashtable2, ownerLayerInterface, gameInput_);
        Exit(TDiveAndDirectionalTrackingAI.Create(ownerLayerInterface, artificialIntelligenceInterface_, gameInput_, TVisitor(TJava.ToObject(visitorCanBeNull))));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

