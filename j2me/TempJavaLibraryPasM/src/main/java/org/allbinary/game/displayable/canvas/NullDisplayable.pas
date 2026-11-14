// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
unit NullDisplayable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Canvas, Graphics;

type
  {AB:TYPES}
  // Temp should not be in any build
  TNullDisplayable = class(TCanvas)
  public
    class var SINGLETON: TNullDisplayable;
        class function getInstance: TNullDisplayable; static;
        constructor Create;
        procedure paint(graphics_: TGraphics); override;
  end;

implementation

{AB:CODE}
    

class function TNullDisplayable.getInstance: TNullDisplayable;
begin
        Exit(TNullDisplayable.SINGLETON);
end;
    

constructor TNullDisplayable.Create;
begin
    inherited Create;
end;
    

procedure TNullDisplayable.paint(graphics_: TGraphics);
begin
end;

initialization
  {AB:INITIALIZATION}
  TNullDisplayable.SINGLETON := TNullDisplayable.Create();
  {AB:END}

end.

