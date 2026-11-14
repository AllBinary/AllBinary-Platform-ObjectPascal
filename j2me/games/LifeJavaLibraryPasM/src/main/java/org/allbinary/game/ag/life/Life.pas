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
// package org.allbinary.game.ag.life
unit Life;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LifeInterface;

type
  {AB:TYPES}
  TLife = class(TInterfacedObject, ILifeInterface)
  public
    lives: SmallInt;
    startLives: SmallInt;
    maxlives: SmallInt;
    class var NO_LIFE: TLife;
    procedure InitFields;
    function JavaObject: TObject;
        class function createLife: TLife; static;
        constructor Create(lives: SmallInt; maxlives: SmallInt);
        function get: SmallInt; virtual;
        procedure set_(lives: SmallInt); virtual;
        procedure reset; virtual;
        procedure add(lives: SmallInt); virtual;
        function isAlive: Boolean; virtual;
        function getMaxlives: SmallInt; virtual;
        function reachedLimit: Boolean;
        procedure deaths(lives: SmallInt); virtual;
        function getStartLives: SmallInt; virtual;
        procedure setStartLives(startLives: SmallInt); virtual;
  end;

implementation

{AB:CODE}

procedure TLife.InitFields;
begin
  
  
  
end;

function TLife.JavaObject: TObject;
begin
  Result := Self;
end;
    

class function TLife.createLife: TLife;
begin
        try
            Exit(TLife.Create(SmallInt(0), SmallInt(0)));
        except
            on e: SysUtils.Exception do begin
            raise SysUtils.Exception.Create('');
            end;
        end;
end;
    

constructor TLife.Create(lives: SmallInt; maxlives: SmallInt);
begin
    inherited Create;
    InitFields;
        Self.maxlives := maxlives;
        if (lives) > (Self.maxlives) then begin
            raise SysUtils.Exception.Create('To Many Lives');
        end;
        Self.lives := lives;
        Self.startLives := lives;
end;
    

function TLife.get: SmallInt;
begin
        Exit(Self.lives);
end;
    

procedure TLife.set_(lives: SmallInt);
begin
        Self.lives := lives;
end;
    

procedure TLife.reset;
begin
        Self.lives := Self.startLives;
end;
    

procedure TLife.add(lives: SmallInt);
begin
        if not (Self.reachedLimit()) then begin
            if ((Self.lives) + (lives)) <= (Integer(Self.getMaxlives())) then begin
                Self.lives := SmallInt(((Self.lives) + (lives)));
            end else begin
                Self.lives := Self.getMaxlives();
            end;
        end;
end;
    

function TLife.isAlive: Boolean;
begin
        if (Integer(Self.lives)) <= (0) then begin
            Exit(False);
        end else begin
            Exit(True);
        end;
end;
    

function TLife.getMaxlives: SmallInt;
begin
        Exit(Self.maxlives);
end;
    

function TLife.reachedLimit: Boolean;
begin
        if ((Self.lives) > (Self.maxlives)) or ((Integer(Self.lives)) < (0)) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

procedure TLife.deaths(lives: SmallInt);
begin
        if not (Self.reachedLimit()) then begin
            if ((Self.lives) - (lives)) >= (0) then begin
                Self.lives := SmallInt(((Self.lives) - (lives)));
            end else begin
                Self.lives := 0;
            end;
        end;
end;
    

function TLife.getStartLives: SmallInt;
begin
        Exit(Self.startLives);
end;
    

procedure TLife.setStartLives(startLives: SmallInt);
begin
        Self.startLives := startLives;
end;

initialization
  {AB:INITIALIZATION}
  TLife.NO_LIFE := TLife.createLife();
  {AB:END}

end.

