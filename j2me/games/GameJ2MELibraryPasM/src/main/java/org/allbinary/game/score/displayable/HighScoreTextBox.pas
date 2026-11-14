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
// package org.allbinary.game.score.displayable
unit HighScoreTextBox;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommandListener, Graphics, GameInfo, HighScore, HighScoresHelperBaseInterface, HighScoresFactoryInterface, BasicColor, CustomTextBox, Paintable, VirtualKeyboardEventHandler, AbeClientInformationInterface, HighScoreUtil;

type
  {AB:TYPES}
  THighScoreTextBox = class(TCustomTextBox)
  public
    virtualKeyboardEventHandler: TVirtualKeyboardEventHandler;
    highScoreUtil: THighScoreUtil;
    pleaseWait: TPaintable;
    paintable: TPaintable;
    submitted: Boolean;
    procedure InitFields;
        constructor Create(highScoresFactoryInterface_: IHighScoresFactoryInterface; highScoresHelper: IHighScoresHelperBaseInterface; abeClientInformation: IAbeClientInformationInterface; gameInfo_: TGameInfo; cmdListener: ICommandListener; name: string; highScore_: THighScore; backgrounBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
        procedure initCommands(cmdListener: ICommandListener); override;
        procedure open; override;
        procedure close; override;
        procedure update; override;
        procedure paint(graphics_: TGraphics); override;
        procedure saveHighScore; virtual;
        procedure submit; override;
  end;

implementation
uses
  Font, TextField, PostGameCommandFactory, BasicColorFactory, NullPaintable, SimpleTextPaintable, GenericOperatingSystem, OperatingSystemFactory, InApplicationPurchaseFactory;


{AB:CODE}

procedure THighScoreTextBox.InitFields;
begin
  Self.virtualKeyboardEventHandler := TVirtualKeyboardEventHandler.getInstance();
  
  Self.pleaseWait := TSimpleTextPaintable.Create(Self.commonStrings.PLEASE_WAIT, TBasicColorFactory.getInstance().WHITE);
  Self.paintable := TNullPaintable.getInstance();
  Self.submitted := False;
end;
    

constructor THighScoreTextBox.Create(highScoresFactoryInterface_: IHighScoresFactoryInterface; highScoresHelper: IHighScoresHelperBaseInterface; abeClientInformation: IAbeClientInformationInterface; gameInfo_: TGameInfo; cmdListener: ICommandListener; name: string; highScore_: THighScore; backgrounBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
var
  operatingSystemInterface: TGenericOperatingSystem;
  username: string;
begin
        inherited Create(cmdListener, 'New High Score Enter Name:', name, 12, TTextField.ANY, TFont.getDefaultFont(), backgrounBasicColor, foregroundBasicColor);
        InitFields;
        Self.highScoreUtil := THighScoreUtil.Create(highScoresFactoryInterface_, highScoresHelper, abeClientInformation, gameInfo_, cmdListener, name, highScore_);
        operatingSystemInterface := TOperatingSystemFactory.getInstance().getOperatingSystemInstance();
        if operatingSystemInterface.isOverScan() then begin
            username := TInApplicationPurchaseFactory.getInstance().getUserName();
            Self.getTextFieldItem().setString(username);
        end;
end;
    

procedure THighScoreTextBox.initCommands(cmdListener: ICommandListener);
begin
        Self.removeAllCommands();
        TPostGameCommandFactory.getInstance().addCommands(Self);
        Self.addCommand(THighScoreUtil.SUBMIT_TEXTBOX_COMMAND);
        Self.setCommandListener(cmdListener);
end;
    

procedure THighScoreTextBox.open;
begin
        Self.virtualKeyboardEventHandler.open();
        Self.paintable := TNullPaintable.getInstance();
        inherited open();
end;
    

// throws Exception
procedure THighScoreTextBox.close;
begin
        Self.virtualKeyboardEventHandler.close();
        Self.paintable := Self.pleaseWait;
        Self.repaintBehavior.onChangeRepaint(Self);
        inherited close();
        Self.removeCommand(THighScoreUtil.SUBMIT_TEXTBOX_COMMAND);
        Self.update();
        if Self.submitted then begin
            Self.highScoreUtil.saveHighScore();
        end else begin
        end;
        Self.paintable := TNullPaintable.getInstance();
        Self.repaintBehavior.onChangeRepaint(Self);
end;
    

// throws Exception
procedure THighScoreTextBox.update;
var
  name: string;
begin
        name := Self.getTextFieldItem().getString();
        Self.highScoreUtil.update(name);
        inherited update();
end;
    

procedure THighScoreTextBox.paint(graphics_: TGraphics);
begin
        inherited paint(graphics_);
        Self.paintable.paint(graphics_);
end;
    

procedure THighScoreTextBox.saveHighScore;
begin
        Self.highScoreUtil.saveHighScore();
end;
    

procedure THighScoreTextBox.submit;
begin
        Self.highScoreUtil.submit(Self);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

