// Generated Code Do Not Modify
// package org.allbinary.game
unit BasicGameInfoFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TBasicGameInfoFactory = class(TObject)
  public
    currentReleaseIndex: Integer;
    currentDestroyIndex: Integer;
    total: Integer;
    class var SINGLETON: TBasicGameInfoFactory;
    procedure InitFields;
        class function getInstance: TBasicGameInfoFactory; static;
        constructor Create;
        procedure init(total: Integer); virtual;
        function isPeaked: Boolean; virtual;
        function howManyLeft: Integer; virtual;
  end;

implementation

{AB:CODE}

procedure TBasicGameInfoFactory.InitFields;
begin
  
  
  
end;
    

class function TBasicGameInfoFactory.getInstance: TBasicGameInfoFactory;
begin
        Exit(TBasicGameInfoFactory.SINGLETON);
end;
    

constructor TBasicGameInfoFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TBasicGameInfoFactory.init(total: Integer);
begin
        Self.currentReleaseIndex := 0;
        Self.currentDestroyIndex := 0;
        Self.total := total;
end;
    

function TBasicGameInfoFactory.isPeaked: Boolean;
begin
        if (Self.currentDestroyIndex) >= (Self.total) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TBasicGameInfoFactory.howManyLeft: Integer;
begin
        Exit((Self.total) - (Self.currentDestroyIndex));
end;

initialization
  {AB:INITIALIZATION}
  TBasicGameInfoFactory.SINGLETON := TBasicGameInfoFactory.Create();
  {AB:END}

end.

