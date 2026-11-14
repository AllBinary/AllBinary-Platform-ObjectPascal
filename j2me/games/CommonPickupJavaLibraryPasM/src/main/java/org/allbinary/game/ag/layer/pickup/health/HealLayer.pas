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
// package org.allbinary.game.ag.layer.pickup.health
unit HealLayer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, HealthInterface, HealthVisitorInterface, AllBinaryLayer;

type
  {AB:TYPES}
  THealLayer = class(TAllBinaryLayer, IHealthVisitorInterface)
  public
    function JavaObject: TObject;
        constructor Create;
        procedure paint(graphics_: TGraphics); virtual;
        procedure visit(healthInterface_: IHealthInterface); virtual;
  end;

implementation
uses
  PointFactory, Rectangle, StringUtil, ViewPosition;


{AB:CODE}

function THealLayer.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor THealLayer.Create;
begin
        inherited Create(TStringUtil.getInstance().EMPTY_STRING, TRectangle.Create(TPointFactory.getInstance().ZERO_ZERO, 0, 0), TViewPosition.getInstanceD());
end;
    

procedure THealLayer.paint(graphics_: TGraphics);
begin
end;
    

procedure THealLayer.visit(healthInterface_: IHealthInterface);
begin
        if healthInterface_.isAlive() then begin
            healthInterface_.healMax();
        end else begin
            Self.logUtil.putF('Heal attempt on dead: Does not currently occur', TJava.Box(Self), 'visit');
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

