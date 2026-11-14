{
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.ai
unit ArtificialIntelligenceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ArtificialIntelligence, ArtificialIntelligenceFactoryInterface;

type
  {AB:TYPES}
  TArtificialIntelligenceFactory = class(TInterfacedObject, IArtificialIntelligenceFactoryInterface)
  public
    function JavaObject: TObject;
    constructor Create;
        function getInstance(anyType: TObject): TArtificialIntelligence; virtual;
  end;

implementation

{AB:CODE}

function TArtificialIntelligenceFactory.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TArtificialIntelligenceFactory.Create;
begin
  inherited Create;
end;
    

// throws Exception
function TArtificialIntelligenceFactory.getInstance(anyType: TObject): TArtificialIntelligence;
begin
        raise SysUtils.Exception.Create('');
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

