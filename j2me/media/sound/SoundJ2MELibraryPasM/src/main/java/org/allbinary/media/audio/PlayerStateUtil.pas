{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.media.audio
unit PlayerStateUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommonStrings;

type
  {AB:TYPES}
  TPlayerStateUtil = class(TObject)
  public
    commonStrings: TCommonStrings;
    UNREALIZED: string;
    REALIZED: string;
    PREFETCHED: string;
    STARTED: string;
    CLOSED: string;
    class var instance: TPlayerStateUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TPlayerStateUtil; static;
        function convert(state: Integer): string; virtual;
  end;

implementation
uses
  Player;


{AB:CODE}

procedure TPlayerStateUtil.InitFields;
begin
  Self.commonStrings := TCommonStrings.getInstance();
  Self.UNREALIZED := 'UNREALIZED';
  Self.REALIZED := 'REALIZED';
  Self.PREFETCHED := 'PREFETCHED';
  Self.STARTED := 'STARTED';
  Self.CLOSED := 'CLOSED';
end;

constructor TPlayerStateUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TPlayerStateUtil.getInstance: TPlayerStateUtil;
begin
        Exit(TPlayerStateUtil.instance);
end;
    

function TPlayerStateUtil.convert(state: Integer): string;
begin
        if (state) = (IPlayer.UNREALIZED) then begin
            Exit(Self.UNREALIZED);
        end else if (state) = (IPlayer.REALIZED) then begin
            Exit(Self.REALIZED);
        end else if (state) = (IPlayer.PREFETCHED) then begin
            Exit(Self.PREFETCHED);
        end else if (state) = (IPlayer.STARTED) then begin
            Exit(Self.STARTED);
        end else if (state) = (IPlayer.CLOSED) then begin
            Exit(Self.CLOSED);
        end;
        Exit(Self.commonStrings.UNKNOWN);
end;

initialization
  {AB:INITIALIZATION}
  TPlayerStateUtil.instance := TPlayerStateUtil.Create();
  {AB:END}

end.

