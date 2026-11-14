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
unit PlayerQueue;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommonStrings, BasicArrayList, Sound;

type
  {AB:TYPES}
  TPlayerQueue = class(TObject)
  public
    commonStrings: TCommonStrings;
    list: TBasicArrayList;
    max: Integer;
    class var TOTAL: string;
    procedure InitFields;
        constructor Create(max: Integer);
        procedure add(sound_: TSound); virtual;
        function process: Boolean; virtual;
        procedure clear; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  NoSound, PreLogUtil, StringMaker, StringUtil, BasicArrayListD;


{AB:CODE}

procedure TPlayerQueue.InitFields;
begin
  Self.commonStrings := TCommonStrings.getInstance();
  Self.list := TBasicArrayListD.Create();
  
end;
    

constructor TPlayerQueue.Create(max: Integer);
begin
    inherited Create;
    InitFields;
        Self.max := max;
end;
    

procedure TPlayerQueue.add(sound_: TSound);
begin
        try
            if not (Self.list.contains(TJava.Box(sound_))) then begin
                Self.list.add(TJava.Box(sound_));
            end;
        except
            on e: SysUtils.Exception do begin
            TPreLogUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.ADD);
            end;
        end;
end;
    

function TPlayerQueue.process: Boolean;
var
  sound_: TSound;
  played: Boolean;
  resource: string;
begin
        sound_ := TNoSound.getInstance();
        try
            played := False;
            if (Self.list.size()) > (0) then begin
                sound_ := TSound(TJava.ToObject(Self.list.removeAt(0)));
                if (sound_) <> (nil) then begin
                    sound_.getPlayerP().start();
                end;
                while (Self.list.size()) > (Self.max) do begin
                    Self.list.removeAt(0);
                end;
                played := True;
            end;
            Exit(played);
        except
            on e: SysUtils.Exception do begin
            resource := TStringUtil.getInstance().EMPTY_STRING;
            if (sound_) <> (nil) then begin
                resource := sound_.getResource();
            end;
            TPreLogUtil.put(TStringMaker.Create().append(Self.commonStrings.EXCEPTION_LABEL).append(resource).toString(), TJava.Box(Self), Self.commonStrings.PROCESS);
            Exit(False);
            end;
        end;
end;
    

procedure TPlayerQueue.clear;
begin
        Self.list.clear();
end;
    

function TPlayerQueue.toString: string;
begin
        Exit(TStringMaker.Create().append(TPlayerQueue.TOTAL).appendint(Self.list.size()).toString());
end;

initialization
  {AB:INITIALIZATION}
  TPlayerQueue.TOTAL := 'Sounds In Queue: ';
  {AB:END}

end.

