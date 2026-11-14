// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
unit NullDisplayable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Canvas, Graphics, BaseGameStatistics;

type
  {AB:TYPES}
  // J2SEForJ2ME
  TNullDisplayable = class(TCanvas)
  public
    baseGameStatistics: TBaseGameStatistics;
    class var SINGLETON: TNullDisplayable;
    procedure InitFields;
        class function getInstance: TNullDisplayable; static;
        constructor Create;
        procedure paint(graphics_: TGraphics); override;
  end;

implementation
uses
  GameStatisticsFactory;


{AB:CODE}

procedure TNullDisplayable.InitFields;
begin
  Self.baseGameStatistics := TGameStatisticsFactory.getInstance();
end;
    

class function TNullDisplayable.getInstance: TNullDisplayable;
begin
        Exit(TNullDisplayable.SINGLETON);
end;
    

constructor TNullDisplayable.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TNullDisplayable.paint(graphics_: TGraphics);
begin
        Self.baseGameStatistics.nextRefresh();
end;

initialization
  {AB:INITIALIZATION}
  TNullDisplayable.SINGLETON := TNullDisplayable.Create();
  {AB:END}

end.

