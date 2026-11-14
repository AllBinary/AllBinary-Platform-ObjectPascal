// Generated Code Do Not Modify
// package org.allbinary.game.collision
unit CollisionProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryLayer;

type
  {AB:TYPES}
  TCollisionProcessor = class(TObject)
  public
    constructor Create;
        function isCollision(myLayer: TAllBinaryLayer; myLayer2: TAllBinaryLayer): Boolean; virtual;
  end;

implementation

{AB:CODE}

constructor TCollisionProcessor.Create;
begin
  inherited Create;
end;
    

function TCollisionProcessor.isCollision(myLayer: TAllBinaryLayer; myLayer2: TAllBinaryLayer): Boolean;
begin
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

