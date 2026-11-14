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
// package org.allbinary.game.layer
unit GameLayerUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryLayer;

type
  {AB:TYPES}
  TGameLayerUtil = class(TObject)
  public
        constructor Create;
        class function isOnScreen(layer: TAllBinaryLayer): Boolean; static;
        class function isInside(rectX1: Integer; rectY1: Integer; rectX2: Integer; rectY2: Integer; rect2X1: Integer; rect2Y1: Integer; rect2X2: Integer; rect2Y2: Integer): Boolean; static;
  end;

implementation
uses
  DisplayInfoSingleton, ViewPositionBase;


{AB:CODE}
    

constructor TGameLayerUtil.Create;
begin
    inherited Create;
end;
    

class function TGameLayerUtil.isOnScreen(layer: TAllBinaryLayer): Boolean;
var
  displayInfo: TDisplayInfoSingleton;
  viewPosition: TViewPositionBase;
begin
        displayInfo := TDisplayInfoSingleton.getInstance();
        viewPosition := layer.getViewPosition();
        Exit(TGameLayerUtil.isInside(viewPosition.getX(), viewPosition.getY(), viewPosition.getX2(), viewPosition.getY2(), 0, 0, displayInfo.getLastWidth(), displayInfo.getLastHeight()));
end;
    

class function TGameLayerUtil.isInside(rectX1: Integer; rectY1: Integer; rectX2: Integer; rectY2: Integer; rect2X1: Integer; rect2Y1: Integer; rect2X2: Integer; rect2Y2: Integer): Boolean;
begin
        if ((((rectX1) > (rect2X1)) and ((rectX2) < (rect2X2))) and ((rectY1) > (rect2Y1))) and ((rectY2) < (rect2Y2)) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

