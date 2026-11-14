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
// package org.allbinary.media.audio
unit BaseSoundsFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Sound, SoundsFactoryInterface;

type
  {AB:TYPES}
  TBaseSoundsFactory = class(TInterfacedObject, ISoundsFactoryInterface)
  public
    initialized: Boolean;
    procedure InitFields;
    function JavaObject: TObject;
    constructor Create;
        procedure init; virtual;
        function getSoundInterfaceArray: TArray<TSound>; virtual;
        procedure setInitialized(initialized: Boolean); virtual;
        function isInitialized: Boolean; virtual;
  end;

implementation

{AB:CODE}

procedure TBaseSoundsFactory.InitFields;
begin
  
end;

function TBaseSoundsFactory.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TBaseSoundsFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

procedure TBaseSoundsFactory.init;
begin
end;
    

// throws Exception
function TBaseSoundsFactory.getSoundInterfaceArray: TArray<TSound>;
begin
        Exit(nil);
end;
    

procedure TBaseSoundsFactory.setInitialized(initialized: Boolean);
begin
        Self.initialized := initialized;
end;
    

function TBaseSoundsFactory.isInitialized: Boolean;
begin
        Exit(Self.initialized);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

