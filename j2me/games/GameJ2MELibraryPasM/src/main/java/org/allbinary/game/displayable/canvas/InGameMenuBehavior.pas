{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
unit InGameMenuBehavior;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DisplayChangeEvent, AllBinaryGameCanvas, BaseMenuBehavior;

type
  {AB:TYPES}
  TInGameMenuBehavior = class(TBaseMenuBehavior)
  public
    class var instanceC: TInGameMenuBehavior;
    constructor Create;
        class function getInstance: TInGameMenuBehavior; static;
        procedure onDisplayChangeEvent(allBinaryGameCanvas_: TAllBinaryGameCanvas; displayChangeEvent_: TDisplayChangeEvent); override;
        procedure initSpecialPaint(allBinaryGameCanvas_: TAllBinaryGameCanvas); override;
        procedure initMenu(allBinaryGameCanvas_: TAllBinaryGameCanvas); override;
        procedure updateMenu(allBinaryGameCanvas_: TAllBinaryGameCanvas); override;
        procedure popupMenu(allBinaryGameCanvas_: TAllBinaryGameCanvas); override;
        procedure closeMenu(allBinaryGameCanvas_: TAllBinaryGameCanvas); override;
  end;

implementation
uses
  GameCanvasNonBotPaintable;


{AB:CODE}

constructor TInGameMenuBehavior.Create;
begin
  inherited Create;
end;
    

class function TInGameMenuBehavior.getInstance: TInGameMenuBehavior;
begin
        Exit(TInGameMenuBehavior.instanceC);
end;
    

// throws Exception
procedure TInGameMenuBehavior.onDisplayChangeEvent(allBinaryGameCanvas_: TAllBinaryGameCanvas; displayChangeEvent_: TDisplayChangeEvent);
begin
        allBinaryGameCanvas_.updateMenuFromEvent(displayChangeEvent_);
end;
    

procedure TInGameMenuBehavior.initSpecialPaint(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
        allBinaryGameCanvas_.setNonBotPaintableP(TGameCanvasNonBotPaintable.Create(allBinaryGameCanvas_));
end;
    

// throws Exception
procedure TInGameMenuBehavior.initMenu(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
        allBinaryGameCanvas_.initMenu2();
end;
    

// throws Exception
procedure TInGameMenuBehavior.updateMenu(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
        allBinaryGameCanvas_.initMenu2();
end;
    

// throws Exception
procedure TInGameMenuBehavior.popupMenu(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
        allBinaryGameCanvas_.popupMenu2();
end;
    

procedure TInGameMenuBehavior.closeMenu(allBinaryGameCanvas_: TAllBinaryGameCanvas);
begin
        allBinaryGameCanvas_.closeMenu2();
end;

initialization
  {AB:INITIALIZATION}
  TInGameMenuBehavior.instanceC := TInGameMenuBehavior.Create();
  {AB:END}

end.

