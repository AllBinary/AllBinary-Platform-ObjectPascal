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
// package org.allbinary.math
unit RectangleCollisionUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TRectangleCollisionUtil = class(TObject)
  public
    class var instance: TRectangleCollisionUtil;
        class function getInstance: TRectangleCollisionUtil; static;
        constructor Create;
        function isCollision(rectX1: Integer; rectY1: Integer; rectX2: Integer; rectY2: Integer; rect2X1: Integer; rect2Y1: Integer; rect2X2: Integer; rect2Y2: Integer): Boolean; virtual;
        function isInside(rectX1: Integer; rectY1: Integer; rectX2: Integer; rectY2: Integer; x: Integer; y: Integer): Boolean; virtual;
  end;

implementation
uses
  JsType, JsMethod, JsConstructor;


{AB:CODE}
    

class function TRectangleCollisionUtil.getInstance: TRectangleCollisionUtil;
begin
        Exit(TRectangleCollisionUtil.instance);
end;
    

constructor TRectangleCollisionUtil.Create;
begin
    inherited Create;
end;
    

function TRectangleCollisionUtil.isCollision(rectX1: Integer; rectY1: Integer; rectX2: Integer; rectY2: Integer; rect2X1: Integer; rect2Y1: Integer; rect2X2: Integer; rect2Y2: Integer): Boolean;
begin
        if ((((rect2X1) >= (rectX2)) or ((rect2Y1) >= (rectY2))) or ((rect2X2) <= (rectX1))) or ((rect2Y2) <= (rectY1)) then begin
            Exit(False);
        end else begin
            Exit(True);
        end;
end;
    

function TRectangleCollisionUtil.isInside(rectX1: Integer; rectY1: Integer; rectX2: Integer; rectY2: Integer; x: Integer; y: Integer): Boolean;
begin
        if ((((x) >= (rectX2)) or ((y) >= (rectY2))) or ((x) <= (rectX1))) or ((y) <= (rectY1)) then begin
            Exit(False);
        end else begin
            Exit(True);
        end;
end;

initialization
  {AB:INITIALIZATION}
  TRectangleCollisionUtil.instance := TRectangleCollisionUtil.Create();
  {AB:END}

end.

