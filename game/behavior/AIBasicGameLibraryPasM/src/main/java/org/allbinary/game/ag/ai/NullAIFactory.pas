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
unit NullAIFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ArtificialIntelligenceInterface, ArtificialIntelligenceInterfaceFactoryInterface, GameInput, AllBinaryLayer, ABHashtable, NullAI;

type
  {AB:TYPES}
  TNullAIFactory = class(TInterfacedObject, IArtificialIntelligenceInterfaceFactoryInterface)
  public
    class var NULL_AI: TNullAI;
    function JavaObject: TObject;
    constructor Create;
        function getInstance(hashtable: TABHashtable<TObject, TObject>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput): IArtificialIntelligenceInterface; overload; virtual;
        class function getInstance: IArtificialIntelligenceInterface; overload; static;
  end;

implementation

{AB:CODE}

function TNullAIFactory.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TNullAIFactory.Create;
begin
  inherited Create;
end;
    

function TNullAIFactory.getInstance(hashtable: TABHashtable<TObject, TObject>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput): IArtificialIntelligenceInterface;
begin
        Exit(TNullAIFactory.NULL_AI);
end;
    

class function TNullAIFactory.getInstance: IArtificialIntelligenceInterface;
begin
        Exit(TNullAIFactory.NULL_AI);
end;

initialization
  {AB:INITIALIZATION}
  TNullAIFactory.NULL_AI := TNullAI.Create();
  {AB:END}

end.

