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
unit BasicGameDemoPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Paintable, StatePaintable;

type
  {AB:TYPES}
  TBasicGameDemoPaintable = class(TStatePaintable)
  public
    mainDemoStatePaintable: TPaintable;
    ownershipPaintable: TPaintable;
    helpPaintableInterface: TPaintable;
    currentStatePaintable: TPaintable;
    procedure InitFields;
        constructor Create(mainDemoStatePaintable: TPaintable; ownershipPaintable: TPaintable; helpPaintableInterface: TPaintable);
        procedure setState(state: Integer); override;
        procedure paint(graphics_: TGraphics); override;
        function getHelpPaintableInterface: TPaintable; virtual;
        procedure setCurrentStatePaintable(currentStatePaintable: TPaintable); virtual;
        function getCurrentStatePaintable: TPaintable; virtual;
        function getMainDemoStatePaintable: TPaintable; virtual;
  end;

implementation
uses
  NullPaintable;


{AB:CODE}

procedure TBasicGameDemoPaintable.InitFields;
begin
  
  
  
  Self.currentStatePaintable := TNullPaintable.getInstance();
end;
    

constructor TBasicGameDemoPaintable.Create(mainDemoStatePaintable: TPaintable; ownershipPaintable: TPaintable; helpPaintableInterface: TPaintable);
begin
    inherited Create;
    InitFields;
        Self.mainDemoStatePaintable := mainDemoStatePaintable;
        Self.setCurrentStatePaintable(TNullPaintable.getInstance());
        Self.ownershipPaintable := ownershipPaintable;
        Self.helpPaintableInterface := helpPaintableInterface;
end;
    

procedure TBasicGameDemoPaintable.setState(state: Integer);
begin
        if (state) = (0) then begin
            Self.setCurrentStatePaintable(Self.getMainDemoStatePaintable());
        end else if (state) = (1) then begin
            Self.setCurrentStatePaintable(Self.helpPaintableInterface);
        end else begin
            Self.setCurrentStatePaintable(Self.ownershipPaintable);
        end;
end;
    

procedure TBasicGameDemoPaintable.paint(graphics_: TGraphics);
begin
        Self.getCurrentStatePaintable().paint(graphics_);
end;
    

function TBasicGameDemoPaintable.getHelpPaintableInterface: TPaintable;
begin
        Exit(Self.helpPaintableInterface);
end;
    

procedure TBasicGameDemoPaintable.setCurrentStatePaintable(currentStatePaintable: TPaintable);
begin
        Self.currentStatePaintable := currentStatePaintable;
end;
    

function TBasicGameDemoPaintable.getCurrentStatePaintable: TPaintable;
begin
        Exit(Self.currentStatePaintable);
end;
    

function TBasicGameDemoPaintable.getMainDemoStatePaintable: TPaintable;
begin
        Exit(Self.mainDemoStatePaintable);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

