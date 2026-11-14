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
unit MultiplayerBehavior;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TMultiplayerBehavior = class(TObject)
  public
    class var NULL_MULTIPLAYER_BEHAVIOR: TMultiplayerBehavior;
        constructor Create(username: string);
        procedure startTick; virtual;
        procedure endTick; virtual;
        function getApproximateElapsed: Int64; virtual;
  end;

implementation
uses
  StringUtil;


{AB:CODE}
    

constructor TMultiplayerBehavior.Create(username: string);
begin
    inherited Create;
end;
    

procedure TMultiplayerBehavior.startTick;
begin
end;
    

procedure TMultiplayerBehavior.endTick;
begin
end;
    

function TMultiplayerBehavior.getApproximateElapsed: Int64;
begin
        Exit(0);
end;

initialization
  {AB:INITIALIZATION}
  TMultiplayerBehavior.NULL_MULTIPLAYER_BEHAVIOR := TMultiplayerBehavior.Create(TStringUtil.getInstance().EMPTY_STRING);
  {AB:END}

end.

