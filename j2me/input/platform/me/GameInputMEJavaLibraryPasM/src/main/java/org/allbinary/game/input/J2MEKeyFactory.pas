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
// package org.allbinary.game.input
unit J2MEKeyFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameKeyFactory, Input;

type
  {AB:TYPES}
  TJ2MEKeyFactory = class(TObject)
  public
    gameKeyFactory: TGameKeyFactory;
    class var instance: TJ2MEKeyFactory;
    procedure InitFields;
        class function getInstance: TJ2MEKeyFactory; static;
        constructor Create;
        procedure init; virtual;
        function isSubmission(input_: TInput): Boolean; virtual;
        function isDelete(input_: TInput): Boolean; virtual;
        function isBackSpace(input_: TInput): Boolean; virtual;
        function isUp(input_: TInput): Boolean; virtual;
        function isDown(input_: TInput): Boolean; virtual;
        function isLeft(input_: TInput): Boolean; virtual;
        function isRight(input_: TInput): Boolean; virtual;
        function isEnter(input_: TInput): Boolean; virtual;
  end;

implementation
uses
  GameKey, InputFactory;


{AB:CODE}

procedure TJ2MEKeyFactory.InitFields;
begin
  Self.gameKeyFactory := TGameKeyFactory.getInstance();
end;
    

class function TJ2MEKeyFactory.getInstance: TJ2MEKeyFactory;
begin
        Exit(TJ2MEKeyFactory.instance);
end;
    

constructor TJ2MEKeyFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TJ2MEKeyFactory.init;
var
  gameKeyArray: TArray<TGameKey>;
  inputFactory_: TInputFactory;
  index: Integer;
begin
        gameKeyArray := TArray<TGameKey>.Create(Self.gameKeyFactory.DOWN, Self.gameKeyFactory.FIRE, Self.gameKeyFactory.GAME_A, Self.gameKeyFactory.GAME_B, Self.gameKeyFactory.GAME_C, Self.gameKeyFactory.GAME_D, Self.gameKeyFactory.KEY_NUM0, Self.gameKeyFactory.KEY_NUM1, Self.gameKeyFactory.KEY_NUM2, Self.gameKeyFactory.KEY_NUM3, Self.gameKeyFactory.KEY_NUM4, Self.gameKeyFactory.KEY_NUM5, Self.gameKeyFactory.KEY_NUM6, Self.gameKeyFactory.KEY_NUM7, Self.gameKeyFactory.KEY_NUM8, Self.gameKeyFactory.KEY_NUM9, Self.gameKeyFactory.KEY_POUND, Self.gameKeyFactory.KEY_STAR, Self.gameKeyFactory.LEFT, Self.gameKeyFactory.LEVEL_DOWN, Self.gameKeyFactory.LEVEL_UP, Self.gameKeyFactory.NONE, Self.gameKeyFactory.RIGHT, Self.gameKeyFactory.UP);
        inputFactory_ := TInputFactory.getInstance();
        index := System.Length(gameKeyArray);
        while (TJava.PreDec(index)) >= (0) do begin
            inputFactory_.add(gameKeyArray[index].getId(), gameKeyArray[index]);
        end;
end;
    

function TJ2MEKeyFactory.isSubmission(input_: TInput): Boolean;
begin
        if (input_) = (Self.gameKeyFactory.FIRE) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TJ2MEKeyFactory.isDelete(input_: TInput): Boolean;
begin
        if (input_) = (Self.gameKeyFactory.GAME_D) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TJ2MEKeyFactory.isBackSpace(input_: TInput): Boolean;
begin
        Exit(False);
end;
    

function TJ2MEKeyFactory.isUp(input_: TInput): Boolean;
begin
        if (input_) = (Self.gameKeyFactory.UP) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TJ2MEKeyFactory.isDown(input_: TInput): Boolean;
begin
        if (input_) = (Self.gameKeyFactory.DOWN) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TJ2MEKeyFactory.isLeft(input_: TInput): Boolean;
begin
        if (input_) = (Self.gameKeyFactory.LEFT) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TJ2MEKeyFactory.isRight(input_: TInput): Boolean;
begin
        if (input_) = (Self.gameKeyFactory.RIGHT) then begin
            Exit(True);
        end;
        Exit(False);
end;
    

function TJ2MEKeyFactory.isEnter(input_: TInput): Boolean;
begin
        if (input_) = (Self.gameKeyFactory.FIRE) then begin
            Exit(True);
        end;
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  TJ2MEKeyFactory.instance := TJ2MEKeyFactory.Create();
  {AB:END}

end.

