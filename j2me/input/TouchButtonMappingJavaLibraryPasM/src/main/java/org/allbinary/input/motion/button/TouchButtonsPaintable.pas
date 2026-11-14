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
// package org.allbinary.input.motion.button
unit TouchButtonsPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, BasicColor, BasicColorSetUtil, Paintable, TouchButtonFactory;

type
  {AB:TYPES}
  TTouchButtonsPaintable = class(TPaintable)
  public
    foregroundBasicColor: TBasicColor;
    foregroundColor: Integer;
    basicSetColorUtil: TBasicColorSetUtil;
    touchButtonFactory: TTouchButtonFactory;
    procedure InitFields;
        constructor Create(basicColor_: TBasicColor);
        procedure paint(graphics_: TGraphics); override;
  end;

implementation
uses
  TouchButton, BasicArrayList;


{AB:CODE}

procedure TTouchButtonsPaintable.InitFields;
begin
  
  
  Self.basicSetColorUtil := TBasicColorSetUtil.getInstance();
  Self.touchButtonFactory := TTouchButtonFactory.getInstance();
end;
    

constructor TTouchButtonsPaintable.Create(basicColor_: TBasicColor);
begin
    inherited Create;
    InitFields;
        Self.foregroundBasicColor := basicColor_;
        Self.foregroundColor := basicColor_.intValue();
end;
    

procedure TTouchButtonsPaintable.paint(graphics_: TGraphics);
var
  list: TBasicArrayList;
  touchButton_: TTouchButton;
  index: Integer;
begin
        list := Self.touchButtonFactory.getList();
        Self.basicSetColorUtil.setBasicColorP3(graphics_, Self.foregroundBasicColor, Self.foregroundColor);
        
        index := list.size();
        while (TJava.PreDec(index)) >= (0) do begin
            touchButton_ := TTouchButton(TJava.ToObject(list.objectArray[index]));
            touchButton_.paint(graphics_);
        end;
        index := list.size();
        while (TJava.PreDec(index)) >= (0) do begin
            touchButton_ := TTouchButton(TJava.ToObject(list.objectArray[index]));
            touchButton_.paintHint(graphics_);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

