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
// package org.allbinary.game.paint
unit MainGameDemoStatePaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Paintable;

type
  {AB:TYPES}
  TMainGameDemoStatePaintable = class(TPaintable)
  public
    ownershipPaintableInterface: TPaintable;
    menuPaintableInterface: TPaintable;
    procedure InitFields;
        constructor Create(ownershipPaintableInterface: TPaintable; menuPaintableInterface: TPaintable);
        procedure paint(graphics_: TGraphics); override;
        function getOwnershipPaintableInterface: TPaintable; virtual;
        function getMenuPaintableInterface: TPaintable; virtual;
  end;

implementation

{AB:CODE}

procedure TMainGameDemoStatePaintable.InitFields;
begin
  
  
end;
    

constructor TMainGameDemoStatePaintable.Create(ownershipPaintableInterface: TPaintable; menuPaintableInterface: TPaintable);
begin
    inherited Create;
    InitFields;
        Self.ownershipPaintableInterface := ownershipPaintableInterface;
        Self.menuPaintableInterface := menuPaintableInterface;
end;
    

procedure TMainGameDemoStatePaintable.paint(graphics_: TGraphics);
begin
        Self.menuPaintableInterface.paint(graphics_);
        Self.ownershipPaintableInterface.paint(graphics_);
end;
    

function TMainGameDemoStatePaintable.getOwnershipPaintableInterface: TPaintable;
begin
        Exit(Self.ownershipPaintableInterface);
end;
    

function TMainGameDemoStatePaintable.getMenuPaintableInterface: TPaintable;
begin
        Exit(Self.menuPaintableInterface);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

