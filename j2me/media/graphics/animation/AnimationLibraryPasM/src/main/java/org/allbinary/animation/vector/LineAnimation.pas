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
// package org.allbinary.animation.vector
unit LineAnimation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Animation, BasicColor, ColorCompositeInterface, PositionInterface, BasicColorCompositeSetterInterface;

type
  {AB:TYPES}
  TLineAnimation = class(TAnimation, IColorCompositeInterface, IPositionInterface, IBasicColorCompositeSetterInterface)
  public
    newLine: TArray<TArray<Integer>>;
    tempLine: TArray<TArray<Integer>>;
    line: TArray<TArray<Integer>>;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(basicColor_: TBasicColor);
        procedure init(x: Integer; y: Integer); virtual;
        procedure setPosition(x: Integer; y: Integer; z: Integer); virtual;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); virtual;
        procedure nextFrame; virtual;
        function getBasicColorP: TBasicColor; virtual;
        procedure setBasicColorP(basicColor_: TBasicColor); virtual;
  end;

implementation
uses
  NullUtil;


{AB:CODE}

procedure TLineAnimation.InitFields;
begin
  Self.newLine := TJava.NewArray2<Integer>(2, 2);
  Self.tempLine := TNullUtil.getInstance().NULL_INT_ARRAY_ARRAY;
  Self.line := TJava.NewArray2<Integer>(2, 2);
end;

function TLineAnimation.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TLineAnimation.Create(basicColor_: TBasicColor);
begin
    inherited Create;
    InitFields;
        Self.setBasicColorP(basicColor_);
end;
    

procedure TLineAnimation.init(x: Integer; y: Integer);
begin
        Self.newLine[0][0] := x;
        Self.newLine[0][1] := y;
        Self.newLine[1][0] := x;
        Self.newLine[1][1] := y;
        Self.tempLine := Self.line;
        Self.line := Self.newLine;
        Self.newLine := Self.tempLine;
end;
    

procedure TLineAnimation.setPosition(x: Integer; y: Integer; z: Integer);
begin
        Self.newLine[0][0] := Self.line[1][0];
        Self.newLine[0][1] := Self.line[1][1];
        Self.newLine[1][0] := x;
        Self.newLine[1][1] := y;
        Self.tempLine := Self.line;
        Self.line := Self.newLine;
        Self.newLine := Self.tempLine;
end;
    

procedure TLineAnimation.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
var
  currentLine: TArray<TArray<Integer>>;
begin
        currentLine := Self.line;
        Self.basicSetColorUtil.setBasicColorP3(graphics_, Self.getBasicColorP(), Self.getColor());
        graphics_.drawLine(currentLine[0][0], currentLine[0][1], currentLine[1][0], currentLine[1][1]);
end;
    

procedure TLineAnimation.nextFrame;
begin
end;
    

function TLineAnimation.getBasicColorP: TBasicColor;
begin
        Exit(inherited getBasicColorP());
end;
    

procedure TLineAnimation.setBasicColorP(basicColor_: TBasicColor);
begin
        inherited setBasicColorP(basicColor_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

