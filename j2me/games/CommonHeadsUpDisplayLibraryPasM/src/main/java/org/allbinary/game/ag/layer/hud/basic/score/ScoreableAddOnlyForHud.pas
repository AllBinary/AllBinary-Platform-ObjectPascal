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
// package org.allbinary.game.ag.layer.hud.basic.score
unit ScoreableAddOnlyForHud;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Scoreable, ScoreHudWidget;

type
  {AB:TYPES}
  TScoreableAddOnlyForHud = class(TScoreable)
  public
    scoreHudWidget: TScoreHudWidget;
    procedure InitFields;
        constructor Create(scoreVectorGraphic: TScoreHudWidget);
        procedure removePoints(points: Integer); override;
        procedure addPoints(points: Integer); override;
        function getScoreHudWidget: TScoreHudWidget; virtual;
  end;

implementation

{AB:CODE}

procedure TScoreableAddOnlyForHud.InitFields;
begin
  
end;
    

constructor TScoreableAddOnlyForHud.Create(scoreVectorGraphic: TScoreHudWidget);
begin
        inherited Create(0);
        InitFields;
        Self.scoreHudWidget := scoreVectorGraphic;
        Self.getScoreHudWidget().set_(0);
end;
    

procedure TScoreableAddOnlyForHud.removePoints(points: Integer);
begin
end;
    

procedure TScoreableAddOnlyForHud.addPoints(points: Integer);
begin
        inherited addPoints(points);
        Self.getScoreHudWidget().add(points);
end;
    

function TScoreableAddOnlyForHud.getScoreHudWidget: TScoreHudWidget;
begin
        Exit(Self.scoreHudWidget);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

