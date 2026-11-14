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
// package org.allbinary.game.ag.layer.pickup.points
unit PointsLayer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, ScoreableInterface, AllBinaryLayer;

type
  {AB:TYPES}
  TPointsLayer = class(TAllBinaryLayer)
  public
    points: Integer;
    procedure InitFields;
        constructor Create(points: Integer);
        procedure paint(graphics_: TGraphics); override;
        procedure visit(scoreableInterface_: IScoreableInterface); virtual;
  end;

implementation
uses
  PointFactory, Rectangle, StringUtil, ViewPosition;


{AB:CODE}

procedure TPointsLayer.InitFields;
begin
  
end;
    

constructor TPointsLayer.Create(points: Integer);
begin
        inherited Create(TStringUtil.getInstance().EMPTY_STRING, TRectangle.Create(TPointFactory.getInstance().ZERO_ZERO, 0, 0), TViewPosition.getInstanceD());
        InitFields;
        Self.points := points;
end;
    

procedure TPointsLayer.paint(graphics_: TGraphics);
begin
end;
    

procedure TPointsLayer.visit(scoreableInterface_: IScoreableInterface);
begin
        scoreableInterface_.addPoints(Self.points);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

