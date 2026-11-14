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
unit SequenceAI;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ArtificialIntelligenceInterface, ArrayAI, GameInput, AllBinaryLayer, AllBinaryLayerManager;

type
  {AB:TYPES}
  TSequenceAI = class(TArrayAI)
  public
    index: Integer;
    class var SEQUENCE_AI: string;
    procedure InitFields;
        constructor Create(artificialIntelligenceInterfaceArray: TArray<IArtificialIntelligenceInterface>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
        procedure processAI(allBinaryLayerManager_: TAllBinaryLayerManager); override;
        procedure next; virtual;
        function getIndex: Integer; virtual;
        procedure setIndex(index: Integer); virtual;
        function getSelectedArtificialIntelligenceInterface: IArtificialIntelligenceInterface; virtual;
        function getName: string; override;
        function toString: string; override;
  end;

implementation
uses
  ArtificialIntelligence, ArtificialIntelligenceTransitionInterface, StringMaker, StringUtil;


{AB:CODE}

procedure TSequenceAI.InitFields;
begin
  
end;
    

constructor TSequenceAI.Create(artificialIntelligenceInterfaceArray: TArray<IArtificialIntelligenceInterface>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
begin
        inherited Create(artificialIntelligenceInterfaceArray, ownerLayerInterface, gameInput_);
        InitFields;
end;
    

// throws Exception
procedure TSequenceAI.processAI(allBinaryLayerManager_: TAllBinaryLayerManager);
begin
        Self.getArtificialIntelligenceInterface()[Self.index].processAI(allBinaryLayerManager_);
end;
    

procedure TSequenceAI.next;
var
  artificialIntelligenceInterface_: IArtificialIntelligenceInterface;
  artificialIntelligenceTransitionInterface_: IArtificialIntelligenceTransitionInterface;
begin
        Inc(Self.index);
        artificialIntelligenceInterface_ := Self.getSelectedArtificialIntelligenceInterface();
        if (artificialIntelligenceInterface_.getId()) = (TArtificialIntelligence.AI_ID) then begin
            artificialIntelligenceTransitionInterface_ := (TJava.ToObject(artificialIntelligenceInterface_) as IArtificialIntelligenceTransitionInterface);
            artificialIntelligenceTransitionInterface_.transition();
        end;
end;
    

function TSequenceAI.getIndex: Integer;
begin
        Exit(Self.index);
end;
    

procedure TSequenceAI.setIndex(index: Integer);
begin
        Self.index := index;
end;
    

function TSequenceAI.getSelectedArtificialIntelligenceInterface: IArtificialIntelligenceInterface;
begin
        Exit(Self.getArtificialIntelligenceInterface()[Self.index]);
end;
    

function TSequenceAI.getName: string;
begin
        Exit(TSequenceAI.SEQUENCE_AI);
end;
    

function TSequenceAI.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(inherited toString());
        stringBuffer.append(' Selected AI: ');
        stringBuffer.append(TStringUtil.getInstance().toString(TJava.ToObject(Self.getSelectedArtificialIntelligenceInterface())));
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  TSequenceAI.SEQUENCE_AI := 'Sequence AI';
  {AB:END}

end.

