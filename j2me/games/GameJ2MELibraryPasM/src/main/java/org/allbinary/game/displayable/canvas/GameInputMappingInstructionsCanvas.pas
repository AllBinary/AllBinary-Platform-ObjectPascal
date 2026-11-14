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
// package org.allbinary.game.displayable.canvas
unit GameInputMappingInstructionsCanvas;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Command, CommandListener, Graphics, AllBinaryGameLayerManager, ColorFillBasePaintable, DrawStringUtil, GameCommandCanvas;

type
  {AB:TYPES}
  TGameInputMappingInstructionsCanvas = class(TGameCommandCanvas)
  public
    drawStringUtil: TDrawStringUtil;
    TITLE: string;
    instructions: TArray<string>;
    colorFillPaintable: TColorFillBasePaintable;
    anchor: Integer;
    class var DISPLAY: TCommand;
    class var CLOSE: TCommand;
    class var NAME: string;
    procedure InitFields;
        constructor Create(commandListener_: ICommandListener; allBinaryGameLayerManager_: TAllBinaryGameLayerManager);
        procedure initCommands(cmdListener: ICommandListener); override;
        procedure paint(graphics_: TGraphics); override;
  end;

implementation
uses
  ColorFillPaintableFactory, Anchor, StringUtil;


{AB:CODE}

procedure TGameInputMappingInstructionsCanvas.InitFields;
begin
  Self.drawStringUtil := TDrawStringUtil.getInstance();
  Self.TITLE := 'Input Instructions';
  Self.instructions := TArray<string>.Create('Add Input Mapping:', '1. Select the desired action by generating a currently defined input for a given action.', '(Example: Press the ''1'' key to select the Fire action)', '2. Make the newly desired input for the selected action.', '(Example: Press ''f'' to add it to the selected action)', 'Note: If the input is already mapped to another action then it will not be added. You', 'will need to deleted from the other action before adding it to another.', 'Warning: Not all keys map for a given platform and show as Unknown.', TStringUtil.getInstance().EMPTY_STRING, 'Remove Input Mapping:', '1. Select the desired action by generating a currently defined input for a given action.', '(Example: Press the key ''1'' to select the Fire action)', '2. Select a mapped input for the selected action.', '(Example: Press the key ''1'' to select the ''1'' key input for the selected Fire action)', '3. Press the Delete Key.');
  
  Self.anchor := TAnchor.TOP_LEFT;
end;
    

constructor TGameInputMappingInstructionsCanvas.Create(commandListener_: ICommandListener; allBinaryGameLayerManager_: TAllBinaryGameLayerManager);
begin
        inherited Create(commandListener_, TGameInputMappingInstructionsCanvas.NAME, allBinaryGameLayerManager_.getBackgroundBasicColor(), allBinaryGameLayerManager_.getForegroundBasicColor());
        InitFields;
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        Self.colorFillPaintable := TColorFillPaintableFactory.getInstance().getInstance(allBinaryGameLayerManager_.getBackgroundBasicColor(), False);
end;
    

procedure TGameInputMappingInstructionsCanvas.initCommands(cmdListener: ICommandListener);
begin
        Self.removeAllCommands();
        Self.addCommand(TGameInputMappingInstructionsCanvas.CLOSE);
        Self.setCommandListener(cmdListener);
end;
    

procedure TGameInputMappingInstructionsCanvas.paint(graphics_: TGraphics);
var
  halfWidth: Integer;
  beginWidth: Integer;
begin
        Self.myFontProcessor.process(graphics_);
        Self.colorFillPaintable.paint(graphics_);
        halfWidth := Self.displayInfo.getLastHalfWidth();
        beginWidth := (TJava.SignedRightShift(graphics_.getFont().stringWidth(Self.TITLE), 1));
        graphics_.setColor(Self.foregroundColor);
        graphics_.drawString(Self.TITLE, (halfWidth) - (beginWidth), Self.fontHeight, Self.anchor);
        Self.drawStringUtil.drawCenterStrings(graphics_, Self.instructions, Self.displayInfo.getLastWidth(), Self.fontHeight, halfWidth, (3) * (Self.fontHeight));
        inherited paint(graphics_);
end;

initialization
  {AB:INITIALIZATION}
  TGameInputMappingInstructionsCanvas.DISPLAY := TCommand.Create('Help', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 1);
  TGameInputMappingInstructionsCanvas.CLOSE := TCommand.Create('Close', TStringUtil.getInstance().EMPTY_STRING, TCommand.SCREEN, 1);
  TGameInputMappingInstructionsCanvas.NAME := 'GameInputMappingInstructionsCanvas';
  {AB:END}

end.

