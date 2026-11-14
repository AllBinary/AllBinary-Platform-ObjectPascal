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
// package org.allbinary.layer
unit SingleLayerLayerProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryLayerManager, LayerProcessor;

type
  {AB:TYPES}
  TSingleLayerLayerProcessor = class(TLayerProcessor)
  public
        constructor Create;
        procedure process(allBinaryLayerManager_: TAllBinaryLayerManager); override;
  end;

implementation
uses
  SingleLayerLayerManager, ABLayerManager, AllBinaryLayer;


{AB:CODE}
    

constructor TSingleLayerLayerProcessor.Create;
begin
        inherited Create(TSingleLayerLayerManager.Create());
end;
    

// throws Exception
procedure TSingleLayerLayerProcessor.process(allBinaryLayerManager_: TAllBinaryLayerManager);
var
  layerManager: TABLayerManager;
begin
        layerManager := Self.getLayerManager();
        Self.processAt(allBinaryLayerManager_, TAllBinaryLayer(TJava.ToObject(layerManager.getLayerAt(0))), 0);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

