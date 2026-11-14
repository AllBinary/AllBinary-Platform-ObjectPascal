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
// package org.allbinary.game.tick
unit NullTickable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryLayerManager, TickableInterface, NamedInterface;

type
  {AB:TYPES}
  TNullTickable = class(TInterfacedObject, ITickableInterface, INamedInterface)
  public
    NAME: string;
    class var SINGLETON: TNullTickable;
    procedure InitFields;
    function JavaObject: TObject;
    constructor Create;
        class function getInstance: TNullTickable; static;
        procedure processTick(allBinaryLayerManager_: TAllBinaryLayerManager); virtual;
        function getName: string; virtual;
  end;

implementation

{AB:CODE}

procedure TNullTickable.InitFields;
begin
  Self.NAME := 'NulLTickable';
end;

function TNullTickable.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TNullTickable.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TNullTickable.getInstance: TNullTickable;
begin
        Exit(TNullTickable.SINGLETON);
end;
    

// throws Exception
procedure TNullTickable.processTick(allBinaryLayerManager_: TAllBinaryLayerManager);
begin
end;
    

function TNullTickable.getName: string;
begin
        Exit(Self.NAME);
end;

initialization
  {AB:INITIALIZATION}
  TNullTickable.SINGLETON := TNullTickable.Create();
  {AB:END}

end.

