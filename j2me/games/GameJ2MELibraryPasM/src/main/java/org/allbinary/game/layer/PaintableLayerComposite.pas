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
// package org.allbinary.game.layer
unit PaintableLayerComposite;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Paintable, ABLayer;

type
  {AB:TYPES}
  TPaintableLayerComposite = class(TPaintable)
  public
    paintableArray: TArray<TABLayer>;
    procedure InitFields;
        constructor Create(paintableArray: TArray<TABLayer>);
        procedure paint(graphics_: TGraphics); override;
        procedure paintThreed(graphics_: TGraphics); override;
  end;

implementation
uses
  PaintableInterface;


{AB:CODE}

procedure TPaintableLayerComposite.InitFields;
begin
  
end;
    

constructor TPaintableLayerComposite.Create(paintableArray: TArray<TABLayer>);
begin
    inherited Create;
    InitFields;
        Self.paintableArray := paintableArray;
end;
    

procedure TPaintableLayerComposite.paint(graphics_: TGraphics);
var
  index: Integer;
begin
        index := System.Length(Self.paintableArray);
        while (TJava.PreDec(index)) >= (0) do begin
            Self.paintableArray[index].paint(graphics_);
        end;
end;
    

procedure TPaintableLayerComposite.paintThreed(graphics_: TGraphics);
var
  paintableInterface_: IPaintableInterface;
  index: Integer;
begin
        
        index := System.Length(Self.paintableArray);
        while (TJava.PreDec(index)) >= (0) do begin
            paintableInterface_ := (TJava.ToObject(Self.paintableArray[index]) as IPaintableInterface);
            paintableInterface_.paintThreed(graphics_);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

