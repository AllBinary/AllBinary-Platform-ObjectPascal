{
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer.special
unit SpecialGameInput;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, GameKeyEvent, AllBinaryLayerManager, SpecialGameInputInterface, PaintableInterface;

type
  {AB:TYPES}
  TSpecialGameInput = class(TInterfacedObject, ISpecialGameInputInterface, IPaintableInterface)
  public
    function JavaObject: TObject;
    constructor Create;
        procedure up; virtual;
        procedure down; virtual;
        procedure right; virtual;
        procedure left; virtual;
        procedure strafeLeft; virtual;
        procedure strafeRight; virtual;
        procedure fire(layerManager: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent); virtual;
        procedure special1(layerManager: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent); virtual;
        procedure special2(layerManager: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent); virtual;
        procedure special3(layerManager: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent); virtual;
        procedure special4(layerManager: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent); virtual;
        procedure special5(layerManager: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent); virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure paintThreed(graphics_: TGraphics); virtual;
  end;

implementation

{AB:CODE}

function TSpecialGameInput.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TSpecialGameInput.Create;
begin
  inherited Create;
end;
    

// throws Exception
procedure TSpecialGameInput.up;
begin
end;
    

// throws Exception
procedure TSpecialGameInput.down;
begin
end;
    

// throws Exception
procedure TSpecialGameInput.right;
begin
end;
    

// throws Exception
procedure TSpecialGameInput.left;
begin
end;
    

// throws Exception
procedure TSpecialGameInput.strafeLeft;
begin
end;
    

// throws Exception
procedure TSpecialGameInput.strafeRight;
begin
end;
    

// throws Exception
procedure TSpecialGameInput.fire(layerManager: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent);
begin
end;
    

// throws Exception
procedure TSpecialGameInput.special1(layerManager: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent);
begin
end;
    

// throws Exception
procedure TSpecialGameInput.special2(layerManager: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent);
begin
end;
    

// throws Exception
procedure TSpecialGameInput.special3(layerManager: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent);
begin
end;
    

// throws Exception
procedure TSpecialGameInput.special4(layerManager: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent);
begin
end;
    

// throws Exception
procedure TSpecialGameInput.special5(layerManager: TAllBinaryLayerManager; gameKeyEvent_: TGameKeyEvent);
begin
end;
    

procedure TSpecialGameInput.paint(graphics_: TGraphics);
begin
end;
    

procedure TSpecialGameInput.paintThreed(graphics_: TGraphics);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

