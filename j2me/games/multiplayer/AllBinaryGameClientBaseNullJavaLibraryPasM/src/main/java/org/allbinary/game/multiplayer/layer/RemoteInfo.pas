{
 
  To change this license header, choose License Headers in Project Properties. 
  To change this template file, choose Tools | Templates 
  and open the template in the editor.  
}
// Generated Code Do Not Modify
// package org.allbinary.game.multiplayer.layer
unit RemoteInfo;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TRemoteInfo = class(TObject)
  public
    class var NEW_PLAYER_ID: Integer;
    class var REMOTE_INFO: TRemoteInfo;
        constructor Create(username: string; actorSessionId: Integer; playerInputId: Integer; id: Integer);
  end;

implementation
uses
  StringUtil;


{AB:CODE}
    

constructor TRemoteInfo.Create(username: string; actorSessionId: Integer; playerInputId: Integer; id: Integer);
begin
    inherited Create;
end;

initialization
  {AB:INITIALIZATION}
  TRemoteInfo.NEW_PLAYER_ID := 0;
  TRemoteInfo.REMOTE_INFO := TRemoteInfo.Create(TStringUtil.getInstance().EMPTY_STRING, -1, -1, TRemoteInfo.NEW_PLAYER_ID);
  {AB:END}

end.

