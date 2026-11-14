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
// package org.allbinary.game.layer.pickup
unit CountedPickedUpLayerInterfaceFactoryPool;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList;

type
  {AB:TYPES}
  TCountedPickedUpLayerInterfaceFactoryPool = class(TObject)
  public
    list: TBasicArrayList;
    class var SINGLETON: TCountedPickedUpLayerInterfaceFactoryPool;
    procedure InitFields;
        constructor Create;
        function getList: TBasicArrayList; virtual;
        class function getInstance: TCountedPickedUpLayerInterfaceFactoryPool; static;
        class procedure init; static;
  end;

implementation
uses
  BasicArrayListD;


{AB:CODE}

procedure TCountedPickedUpLayerInterfaceFactoryPool.InitFields;
begin
  
end;
    

constructor TCountedPickedUpLayerInterfaceFactoryPool.Create;
begin
    inherited Create;
    InitFields;
        Self.list := TBasicArrayListD.Create();
end;
    

function TCountedPickedUpLayerInterfaceFactoryPool.getList: TBasicArrayList;
begin
        Exit(Self.list);
end;
    

class function TCountedPickedUpLayerInterfaceFactoryPool.getInstance: TCountedPickedUpLayerInterfaceFactoryPool;
begin
        Exit(TCountedPickedUpLayerInterfaceFactoryPool.SINGLETON);
end;
    

class procedure TCountedPickedUpLayerInterfaceFactoryPool.init;
begin
        TCountedPickedUpLayerInterfaceFactoryPool.SINGLETON := TCountedPickedUpLayerInterfaceFactoryPool.Create();
end;

initialization
  {AB:INITIALIZATION}
  TCountedPickedUpLayerInterfaceFactoryPool.SINGLETON := TCountedPickedUpLayerInterfaceFactoryPool.Create();
  {AB:END}

end.

