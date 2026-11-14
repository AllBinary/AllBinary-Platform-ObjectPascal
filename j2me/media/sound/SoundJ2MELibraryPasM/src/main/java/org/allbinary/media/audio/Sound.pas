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
unit Sound;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Player, SoundInterface;

type
  {AB:TYPES}
  TSound = class(TInterfacedObject, ISoundInterface, IRunnable)
  public
    resource: string;
    player: IPlayer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(resource: string);
        function getResource: string; virtual;
        function getPlayerP: IPlayer; virtual;
        procedure setPlayerP(player_: IPlayer); virtual;
        procedure init; virtual;
        function getDuration: Integer; virtual;
        procedure run; virtual;
  end;

implementation
uses
  NoPlayer, PreLogUtil, CommonStrings;


{AB:CODE}

procedure TSound.InitFields;
begin
  
  Self.player := TNoPlayer.NO_PLAYER;
end;

function TSound.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TSound.Create(resource: string);
begin
    inherited Create;
    InitFields;
        Self.resource := resource;
end;
    

function TSound.getResource: string;
begin
        Exit(Self.resource);
end;
    

function TSound.getPlayerP: IPlayer;
begin
        Exit(Self.player);
end;
    

procedure TSound.setPlayerP(player_: IPlayer);
begin
        Self.player := player_;
end;
    

// throws Exception
procedure TSound.init;
begin
end;
    

function TSound.getDuration: Integer;
begin
        Exit(-1);
end;
    

procedure TSound.run;
var
  commonStrings_: TCommonStrings;
begin
        try
            Self.player.start();
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            TPreLogUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.RUN);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

