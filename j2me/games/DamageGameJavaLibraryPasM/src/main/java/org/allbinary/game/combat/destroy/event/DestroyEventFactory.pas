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
// package org.allbinary.game.combat.destroy.event
unit DestroyEventFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryGameCanvas, AllBinaryEventObject, AllBinaryEventObjectFactoryInterface;

type
  {AB:TYPES}
  TDestroyEventFactory = class(TInterfacedObject, IAllBinaryEventObjectFactoryInterface)
  public
    combatGameCanvas: TAllBinaryGameCanvas;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(combatGameCanvas: TAllBinaryGameCanvas);
        function getInstance: TAllBinaryEventObject; virtual;
  end;

implementation
uses
  DestroyedEvent;


{AB:CODE}

procedure TDestroyEventFactory.InitFields;
begin
  
end;

function TDestroyEventFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TDestroyEventFactory.Create(combatGameCanvas: TAllBinaryGameCanvas);
begin
    inherited Create;
    InitFields;
        Self.combatGameCanvas := combatGameCanvas;
end;
    

function TDestroyEventFactory.getInstance: TAllBinaryEventObject;
begin
        Exit(TDestroyedEvent.Create(Self.combatGameCanvas));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

