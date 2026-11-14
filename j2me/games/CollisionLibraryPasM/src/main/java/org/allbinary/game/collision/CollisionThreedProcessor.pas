// Generated Code Do Not Modify
// package org.allbinary.game.collision
unit CollisionThreedProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryLayer, CollisionProcessor;

type
  {AB:TYPES}
  TCollisionThreedProcessor = class(TCollisionProcessor)
  public
    constructor Create;
        function isCollision(myLayer: TAllBinaryLayer; myLayer2: TAllBinaryLayer): Boolean; override;
  end;

implementation

{AB:CODE}

constructor TCollisionThreedProcessor.Create;
begin
  inherited Create;
end;
    

function TCollisionThreedProcessor.isCollision(myLayer: TAllBinaryLayer; myLayer2: TAllBinaryLayer): Boolean;
begin
        if ((((((myLayer2.getXP()) >= (myLayer.getX2())) or ((myLayer2.getYP()) >= (myLayer.getY2()))) or ((myLayer2.getX2()) <= (myLayer.getXP()))) or ((myLayer2.getY2()) <= (myLayer.getYP()))) or ((myLayer2.getZP()) < (myLayer.getZ2()))) or ((myLayer2.getZ2()) > (myLayer.getZP())) then begin
            Exit(False);
        end else begin
            Exit(True);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

