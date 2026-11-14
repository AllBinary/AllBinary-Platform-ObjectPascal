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
// package org.allbinary.game.input.event
unit GameKeyEvent;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject;

type
  {AB:TYPES}
  TGameKeyEvent = class(TAllBinaryEventObject)
  public
    sourceId: Integer;
    repeated: Boolean;
    key: Integer;
    gameActionKey: Integer;
    originalKey: Integer;
    class var NONE: TGameKeyEvent;
    procedure InitFields;
        class function createEvent(anyType: TObject; sourceId: Integer; key: Integer): TGameKeyEvent; static;
        constructor Create(anyType: TObject; sourceId: Integer; originalKey: Integer; gameActionKey: Integer; key: Integer; repeated: Boolean);
        procedure init(anyType: TObject); virtual;
        procedure setRepeatEvents(repeated: Boolean);
        function hasRepeatEvents: Boolean; virtual;
        function getKey: Integer; virtual;
        function toString: string; override;
        function getOriginalKey: Integer; virtual;
        procedure setOriginalKey(originalKey: Integer); virtual;
        function getGameActionKey: Integer; virtual;
        procedure setGameActionKey(gameActionKey: Integer); virtual;
        function getSourceId: Integer; virtual;
  end;

implementation
uses
  NullUtil, StringMaker;


{AB:CODE}

procedure TGameKeyEvent.InitFields;
begin
  
  
  
  
  
end;
    

class function TGameKeyEvent.createEvent(anyType: TObject; sourceId: Integer; key: Integer): TGameKeyEvent;
begin
        Exit(TGameKeyEvent.Create(TJava.Box(anyType), sourceId, 0, 0, key, False));
end;
    

constructor TGameKeyEvent.Create(anyType: TObject; sourceId: Integer; originalKey: Integer; gameActionKey: Integer; key: Integer; repeated: Boolean);
begin
        inherited Create(anyType);
        InitFields;
        Self.sourceId := sourceId;
        Self.setOriginalKey(originalKey);
        Self.key := key;
        Self.setGameActionKey(gameActionKey);
        Self.setRepeatEvents(repeated);
end;
    

procedure TGameKeyEvent.init(anyType: TObject);
begin
        Self.setSource(TJava.Box(anyType));
end;
    

procedure TGameKeyEvent.setRepeatEvents(repeated: Boolean);
begin
        Self.repeated := repeated;
end;
    

function TGameKeyEvent.hasRepeatEvents: Boolean;
begin
        Exit(Self.repeated);
end;
    

function TGameKeyEvent.getKey: Integer;
begin
        Exit(Self.key);
end;
    

function TGameKeyEvent.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(''#10'Key: ');
        stringBuffer.appendint(Self.getKey());
        Exit(stringBuffer.toString());
end;
    

function TGameKeyEvent.getOriginalKey: Integer;
begin
        Exit(Self.originalKey);
end;
    

procedure TGameKeyEvent.setOriginalKey(originalKey: Integer);
begin
        Self.originalKey := originalKey;
end;
    

function TGameKeyEvent.getGameActionKey: Integer;
begin
        Exit(Self.gameActionKey);
end;
    

procedure TGameKeyEvent.setGameActionKey(gameActionKey: Integer);
begin
        Self.gameActionKey := gameActionKey;
end;
    

function TGameKeyEvent.getSourceId: Integer;
begin
        Exit(Self.sourceId);
end;

initialization
  {AB:INITIALIZATION}
  TGameKeyEvent.NONE := TGameKeyEvent.Create(TJava.Box(TNullUtil.getInstance().NULL_OBJECT), -1, -1, -1, -1, False);
  {AB:END}

end.

