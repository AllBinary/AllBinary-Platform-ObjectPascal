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
// package org.allbinary.game.multiplayer.layer
unit MultiPlayerGameLayer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Group, CollidableDestroyableDamageableLayer, Rectangle, ViewPositionBase, RemoteInfo, MultiplayerBehavior, MultiPlayerGameLayerInterface;

type
  {AB:TYPES}
  TMultiPlayerGameLayer = class(TCollidableDestroyableDamageableLayer, IMultiPlayerGameLayerInterface)
  public
    function JavaObject: TObject;
        constructor Create(remoteInfo_: TRemoteInfo; groupInterface: TArray<TGroup>; name: string; layerInfo: TRectangle; viewPosition: TViewPositionBase);
        function getMultiplayerBehavior: TMultiplayerBehavior; virtual;
        procedure setPingInfo(show: Boolean); virtual;
        procedure setFiring(firing: SmallInt); virtual;
        function getFiring: SmallInt; virtual;
  end;

implementation

{AB:CODE}

function TMultiPlayerGameLayer.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TMultiPlayerGameLayer.Create(remoteInfo_: TRemoteInfo; groupInterface: TArray<TGroup>; name: string; layerInfo: TRectangle; viewPosition: TViewPositionBase);
begin
        inherited Create(groupInterface, name, layerInfo, viewPosition);
end;
    

function TMultiPlayerGameLayer.getMultiplayerBehavior: TMultiplayerBehavior;
begin
        Exit(TMultiplayerBehavior.NULL_MULTIPLAYER_BEHAVIOR);
end;
    

procedure TMultiPlayerGameLayer.setPingInfo(show: Boolean);
begin
end;
    

procedure TMultiPlayerGameLayer.setFiring(firing: SmallInt);
begin
end;
    

function TMultiPlayerGameLayer.getFiring: SmallInt;
begin
        Exit(0);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

