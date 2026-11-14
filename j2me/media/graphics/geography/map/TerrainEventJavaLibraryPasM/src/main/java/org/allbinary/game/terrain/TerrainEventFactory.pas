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
// package org.allbinary.game.terrain
unit TerrainEventFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject, AllBinaryEventObjectFactoryInterface;

type
  {AB:TYPES}
  TTerrainEventFactory = class(TInterfacedObject, IAllBinaryEventObjectFactoryInterface)
  public
    function JavaObject: TObject;
        constructor Create;
        function getInstance: TAllBinaryEventObject; virtual;
  end;

implementation
uses
  TerrainEvent, NullUtil;


{AB:CODE}

function TTerrainEventFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TTerrainEventFactory.Create;
begin
    inherited Create;
end;
    

function TTerrainEventFactory.getInstance: TAllBinaryEventObject;
begin
        Exit(TTerrainEvent.Create(TJava.Box(TNullUtil.getInstance().NULL_OBJECT)));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

