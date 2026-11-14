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
unit ArtificialIntelligence;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryLayerManager, ArtificialIntelligenceInterface, IdentifierInterface;

type
  {AB:TYPES}
  TArtificialIntelligence = class(TInterfacedObject, IArtificialIntelligenceInterface, IIdentifierInterface)
  public
    class var AI_ID: Integer;
    class var instance: TArtificialIntelligence;
    function JavaObject: TObject;
        class function getInstance: TArtificialIntelligence; static;
        constructor Create;
        procedure processAI(layerManager: TAllBinaryLayerManager); virtual;
        function getId: Integer; virtual;
  end;

implementation

{AB:CODE}

function TArtificialIntelligence.JavaObject: TObject;
begin
  Result := Self;
end;
    

class function TArtificialIntelligence.getInstance: TArtificialIntelligence;
begin
        Exit(TArtificialIntelligence.instance);
end;
    

constructor TArtificialIntelligence.Create;
begin
    inherited Create;
end;
    

// throws Exception
procedure TArtificialIntelligence.processAI(layerManager: TAllBinaryLayerManager);
begin
end;
    

function TArtificialIntelligence.getId: Integer;
begin
        Exit(1);
end;

initialization
  {AB:INITIALIZATION}
  TArtificialIntelligence.AI_ID := 2;
  TArtificialIntelligence.instance := TArtificialIntelligence.Create();
  {AB:END}

end.

