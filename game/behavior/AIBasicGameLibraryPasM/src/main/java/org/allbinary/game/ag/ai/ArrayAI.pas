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
unit ArrayAI;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ArtificialIntelligenceInterface, GameInput, AllBinaryLayer, AllBinaryLayerManager, BasicAI;

type
  {AB:TYPES}
  TArrayAI = class(TBasicAI)
  public
    artificialIntelligenceInterfaceArray: TArray<IArtificialIntelligenceInterface>;
    procedure InitFields;
        constructor Create(artificialIntelligenceInterface: TArray<IArtificialIntelligenceInterface>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
        procedure processAI(allBinaryLayerManager_: TAllBinaryLayerManager); override;
        function getArtificialIntelligenceInterface: TArray<IArtificialIntelligenceInterface>; virtual;
  end;

implementation

{AB:CODE}

procedure TArrayAI.InitFields;
begin
  
end;
    

constructor TArrayAI.Create(artificialIntelligenceInterface: TArray<IArtificialIntelligenceInterface>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
begin
        inherited Create(ownerLayerInterface, gameInput_);
        InitFields;
        Self.artificialIntelligenceInterfaceArray := artificialIntelligenceInterface;
end;
    

// throws Exception
procedure TArrayAI.processAI(allBinaryLayerManager_: TAllBinaryLayerManager);
var
  size: Integer;
  index: Integer;
begin
        size := System.Length(Self.artificialIntelligenceInterfaceArray);
        for index := 0 to size - 1 do begin
            Self.artificialIntelligenceInterfaceArray[index].processAI(allBinaryLayerManager_);
        end;
end;
    

function TArrayAI.getArtificialIntelligenceInterface: TArray<IArtificialIntelligenceInterface>;
begin
        Exit(Self.artificialIntelligenceInterfaceArray);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

