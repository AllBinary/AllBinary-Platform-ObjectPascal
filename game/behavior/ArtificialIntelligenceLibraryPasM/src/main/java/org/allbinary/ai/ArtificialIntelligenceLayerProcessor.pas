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
// package org.allbinary.ai
unit ArtificialIntelligenceLayerProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryLayer, AllBinaryLayerManager, LayerProcessor;

type
  {AB:TYPES}
  TArtificialIntelligenceLayerProcessor = class(TLayerProcessor)
  public
        constructor Create;
        procedure processAt(allBinaryLayerManager_: TAllBinaryLayerManager; layerInterface: TAllBinaryLayer; index: Integer); override;
        function isProcessorLayer(layerInterface: TAllBinaryLayer): Boolean; override;
  end;

implementation
uses
  ArtificialIntelligenceLayerManager, ArtificialIntelligenceCompositeInterface;


{AB:CODE}
    

constructor TArtificialIntelligenceLayerProcessor.Create;
begin
        inherited Create(TArtificialIntelligenceLayerManager.Create());
end;
    

// throws Exception
procedure TArtificialIntelligenceLayerProcessor.processAt(allBinaryLayerManager_: TAllBinaryLayerManager; layerInterface: TAllBinaryLayer; index: Integer);
var
  artificialIntelligenceCompositeInterface_: IArtificialIntelligenceCompositeInterface;
begin
        artificialIntelligenceCompositeInterface_ := (TJava.ToObject(layerInterface) as IArtificialIntelligenceCompositeInterface);
        artificialIntelligenceCompositeInterface_.getArtificialIntelligenceInterface().processAI(allBinaryLayerManager_);
end;
    

// throws Exception
function TArtificialIntelligenceLayerProcessor.isProcessorLayer(layerInterface: TAllBinaryLayer): Boolean;
begin
        if layerInterface.implmentsArtificialIntelligenceCompositeInterface() then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

