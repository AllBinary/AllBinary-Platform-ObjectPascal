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
// package org.allbinary.graphics.paint
unit PaintableComposite;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, PaintableInterface, Paintable;

type
  {AB:TYPES}
  TPaintableComposite = class(TPaintable)
  public
    paintableArray: TArray<IPaintableInterface>;
    procedure InitFields;
        constructor Create(paintableArray: TArray<IPaintableInterface>);
        procedure paint(graphics_: TGraphics); override;
        procedure paintThreed(graphics_: TGraphics); override;
  end;

implementation

{AB:CODE}

procedure TPaintableComposite.InitFields;
begin
  
end;
    

constructor TPaintableComposite.Create(paintableArray: TArray<IPaintableInterface>);
begin
    inherited Create;
    InitFields;
        Self.paintableArray := paintableArray;
end;
    

procedure TPaintableComposite.paint(graphics_: TGraphics);
var
  index: Integer;
begin
        for index := (System.Length(Self.paintableArray)) - (1) downto 0 do begin
            Self.paintableArray[index].paint(graphics_);
        end;
end;
    

procedure TPaintableComposite.paintThreed(graphics_: TGraphics);
var
  index: Integer;
begin
        for index := (System.Length(Self.paintableArray)) - (1) downto 0 do begin
            Self.paintableArray[index].paintThreed(graphics_);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

