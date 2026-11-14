// Generated Code Do Not Modify
// package org.allbinary.animation
unit FillAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, BasicColor, AnimationBehavior, IndexedAnimation;

type
  {AB:TYPES}
  TFillAnimation = class(TIndexedAnimation)
  public
    pixelBuffer: TArray<Integer>;
    width: Integer;
    height: Integer;
    procedure InitFields;
        constructor Create(pixelBuffer: TArray<Integer>; width: Integer; height: Integer; animationBehavior_: TAnimationBehavior);
        procedure setBasicColorP(basicColor_: TBasicColor); override;
        procedure changeBasicColor(basicColor_: TBasicColor); override;
        procedure setAlpha(alpha: Integer); override;
        procedure setScale(scaleX: Single; scaleY: Single); override;
        procedure setMaxScale(maxScaleX: Single; maxScaleY: Single); override;
        procedure updateModifiers;
        procedure paint(g: TGraphics); virtual;
  end;

implementation

{AB:CODE}

procedure TFillAnimation.InitFields;
begin
  
  
  
end;
    

constructor TFillAnimation.Create(pixelBuffer: TArray<Integer>; width: Integer; height: Integer; animationBehavior_: TAnimationBehavior);
begin
        inherited Create(animationBehavior_);
        InitFields;
        Self.width := 100;
        Self.height := 100;
        Self.pixelBuffer := pixelBuffer;
end;
    

procedure TFillAnimation.setBasicColorP(basicColor_: TBasicColor);
var
  changed: Boolean;
begin
        changed := False;
        if (TJava.IsNull(Self.getBasicColorP())) or ((Self.getBasicColorP().intValue()) <> (basicColor_.intValue())) then begin
            changed := True;
        end;
        inherited setBasicColorP(basicColor_);
        if changed then begin
            Self.updateModifiers();
        end;
end;
    

procedure TFillAnimation.changeBasicColor(basicColor_: TBasicColor);
var
  changed: Boolean;
begin
        changed := False;
        if (TJava.IsNull(Self.getChangeBasicColor())) or ((Self.getChangeBasicColor().intValue()) <> (basicColor_.intValue())) then begin
            changed := True;
        end;
        inherited changeBasicColor(basicColor_);
        if changed then begin
            Self.updateModifiers();
        end;
end;
    

procedure TFillAnimation.setAlpha(alpha: Integer);
var
  changed: Boolean;
begin
        changed := False;
        if (Self.alphaP) <> (alpha) then begin
            changed := True;
        end;
        inherited setAlpha(alpha);
        if changed then begin
            Self.updateModifiers();
        end;
end;
    

procedure TFillAnimation.setScale(scaleX: Single; scaleY: Single);
begin
end;
    

procedure TFillAnimation.setMaxScale(maxScaleX: Single; maxScaleY: Single);
begin
end;
    

procedure TFillAnimation.updateModifiers;
begin
end;
    

procedure TFillAnimation.paint(g: TGraphics);
begin
        g.drawRGB(Self.pixelBuffer, 0, Self.width, 0, 0, Self.width, Self.height, True);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

