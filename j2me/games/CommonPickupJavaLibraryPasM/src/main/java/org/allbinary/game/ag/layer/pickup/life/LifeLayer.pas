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
// package org.allbinary.game.ag.layer.pickup.life
unit LifeLayer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Life, LifeVisitorInterface, AllBinaryLayer;

type
  {AB:TYPES}
  TLifeLayer = class(TAllBinaryLayer, ILifeVisitorInterface)
  public
    function JavaObject: TObject;
        constructor Create;
        procedure paint(graphics_: TGraphics); virtual;
        procedure visit(lifeInterface: TLife); virtual;
  end;

implementation
uses
  PointFactory, Rectangle, StringUtil, ViewPosition;


{AB:CODE}

function TLifeLayer.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TLifeLayer.Create;
begin
        inherited Create(TStringUtil.getInstance().EMPTY_STRING, TRectangle.Create(TPointFactory.getInstance().ZERO_ZERO, 0, 0), TViewPosition.getInstanceD());
end;
    

procedure TLifeLayer.paint(graphics_: TGraphics);
begin
end;
    

procedure TLifeLayer.visit(lifeInterface: TLife);
begin
        lifeInterface.add(SmallInt(1));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

