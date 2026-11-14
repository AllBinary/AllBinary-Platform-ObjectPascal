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
// package org.allbinary.game.init
unit BasicBuildGameInitializerFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameInitializationInterface, GameInitializationInterfaceFactoryInterface;

type
  {AB:TYPES}
  TBasicBuildGameInitializerFactory = class(TInterfacedObject, IGameInitializationInterfaceFactoryInterface)
  public
    class var NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY: TBasicBuildGameInitializerFactory;
    function JavaObject: TObject;
    constructor Create;
        function getInstance: IGameInitializationInterface; virtual;
  end;

implementation
uses
  BaseGameInitialization;


{AB:CODE}

function TBasicBuildGameInitializerFactory.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TBasicBuildGameInitializerFactory.Create;
begin
  inherited Create;
end;
    

function TBasicBuildGameInitializerFactory.getInstance: IGameInitializationInterface;
begin
        Exit(TBaseGameInitialization.NULL_BASE_GAME_INITIALIZATION);
end;

initialization
  {AB:INITIALIZATION}
  TBasicBuildGameInitializerFactory.NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY := TBasicBuildGameInitializerFactory.Create();
  {AB:END}

end.

