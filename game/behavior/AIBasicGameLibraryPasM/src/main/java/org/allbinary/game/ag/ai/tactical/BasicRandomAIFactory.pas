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
// package org.allbinary.game.ag.ai.tactical
unit BasicRandomAIFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ArtificialIntelligenceInterface, ArtificialIntelligenceInterfaceFactoryInterface, GameInput, AllBinaryLayer, ABHashtable;

type
  {AB:TYPES}
  TBasicRandomAIFactory = class(TInterfacedObject, IArtificialIntelligenceInterfaceFactoryInterface)
  public
    function JavaObject: TObject;
    constructor Create;
        function getInstance(hashtable: TABHashtable<TObject, TObject>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput): IArtificialIntelligenceInterface; virtual;
  end;

implementation
uses
  BasicRandomAI, BasicAI, InputProbability, Visitor;


{AB:CODE}

function TBasicRandomAIFactory.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TBasicRandomAIFactory.Create;
begin
  inherited Create;
end;
    

// throws Exception
function TBasicRandomAIFactory.getInstance(hashtable: TABHashtable<TObject, TObject>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput): IArtificialIntelligenceInterface;
var
  visitor_: TVisitor;
  inputProbability_: TInputProbability;
begin
        visitor_ := TVisitor(TJava.ToObject(hashtable.get(TJava.Box(TJava.Box(TBasicAI.AI_VISITOR)))));
        if (visitor_) = (nil) then begin
            raise SysUtils.Exception.Create('No Visitor Provided');
        end;
        inputProbability_ := TInputProbability(TJava.ToObject(hashtable.get(TJava.Box(TJava.Box(TInputProbability.INPUT_PROBABILITY)))));
        Exit(TBasicRandomAI.Create(ownerLayerInterface, gameInput_, inputProbability_, visitor_));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

