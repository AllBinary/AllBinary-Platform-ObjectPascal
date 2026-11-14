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
// package org.allbinary.graphics.form.item
unit CustomTextBox;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommandListener, Font, Graphics, GameCommandCanvas, InputFactory, RawKeyEventListener, BasicColor, ABTextFieldItem;

type
  {AB:TYPES}
  TCustomTextBox = class(TGameCommandCanvas, IRawKeyEventListener)
  public
    textFieldItem: TABTextFieldItem;
    inputFactory: TInputFactory;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(cmdListener: ICommandListener; label_: string; text: string; maxSize: Integer; constraints: Integer; font_: TFont; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
        procedure submit; virtual;
        procedure onEventRaw(keyCode: Integer; deviceId: Integer; repeated: Boolean); virtual;
        procedure keyPressed(keyCode: Integer); virtual;
        procedure keyReleased(keyCode: Integer); virtual;
        procedure keyRepeated(keyCode: Integer); virtual;
        procedure keyPressedByDevice(keyCode: Integer; deviceId: Integer); virtual;
        procedure keyReleasedByDevice(keyCode: Integer; deviceId: Integer); virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); virtual;
        function getTextFieldItem: TABTextFieldItem; virtual;
  end;

implementation
uses
  J2MEUtil, Input, PlatformKeyFactory, TextItemVisitor, StringMaker, StringUtil, CommonSeps;


{AB:CODE}

procedure TCustomTextBox.InitFields;
begin
  
  Self.inputFactory := TInputFactory.getInstance();
end;

function TCustomTextBox.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCustomTextBox.Create(cmdListener: ICommandListener; label_: string; text: string; maxSize: Integer; constraints: Integer; font_: TFont; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
var
  stringUtil_: TStringUtil;
  textFieldItem: TABTextFieldItem;
begin
        inherited Create(cmdListener, label_, backgroundBasicColor, foregroundBasicColor);
        InitFields;
        stringUtil_ := TStringUtil.getInstance();
        textFieldItem := TABTextFieldItem.Create(Self, TTextItemVisitor.Create(), stringUtil_.EMPTY_STRING, stringUtil_.EMPTY_STRING, maxSize, 0, stringUtil_.EMPTY_STRING, font_, backgroundBasicColor, foregroundBasicColor);
        textFieldItem.setString(text);
        Self.textFieldItem := textFieldItem;
        Self.setTitle(label_);
end;
    

procedure TCustomTextBox.submit;
begin
end;
    

procedure TCustomTextBox.onEventRaw(keyCode: Integer; deviceId: Integer; repeated: Boolean);
begin
        Self.logUtil.putF(TStringMaker.Create().append(Self.commonStrings.START).appendint(keyCode).toString(), TJava.Box(Self), 'onEvent');
        Self.keyPressedByDevice(keyCode, deviceId);
end;
    

procedure TCustomTextBox.keyPressed(keyCode: Integer);
begin
        Self.keyPressedByDevice(keyCode, 0);
end;
    

procedure TCustomTextBox.keyReleased(keyCode: Integer);
begin
        Self.keyReleasedByDevice(keyCode, 0);
end;
    

procedure TCustomTextBox.keyRepeated(keyCode: Integer);
begin
        Self.keyRepeatedByDevice(keyCode, 0);
end;
    

procedure TCustomTextBox.keyPressedByDevice(keyCode: Integer; deviceId: Integer);
var
  platformKeyFactory_: TPlatformKeyFactory;
  input_: TInput;
begin
        try
            Self.logUtil.putF(TStringMaker.Create().append(TCommonSeps.getInstance().SPACE).appendint(keyCode).toString(), TJava.Box(Self), Self.gameInputStrings.KEY_PRESSED);
            platformKeyFactory_ := TPlatformKeyFactory.getInstance();
            input_ := Self.inputFactory.getInstanceById(keyCode);
            if platformKeyFactory_.isSubmission(input_) then begin
                Self.submit();
            end else begin
                Self.textFieldItem.keyPressed(keyCode);
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.gameInputStrings.KEY_PRESSED, TJava.Box(e));
            end;
        end;
end;
    

procedure TCustomTextBox.keyReleasedByDevice(keyCode: Integer; deviceId: Integer);
begin
end;
    

procedure TCustomTextBox.paint(graphics_: TGraphics);
begin
        graphics_.setColor(Self.backgroundColor);
        graphics_.fillRect(0, 0, Self.displayInfo.getLastWidth(), Self.displayInfo.getLastHeight());
        graphics_.setColor(Self.foregroundColor);
        if not (TJ2MEUtil.isJ2ME()) then begin
            graphics_.drawString(Self.getTitle(), 8, 1, 0);
        end;
        Self.paintXY(graphics_, 8, (graphics_.getFont().getHeight()) + (2));
        inherited paint(graphics_);
end;
    

procedure TCustomTextBox.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
        Self.textFieldItem.paintXY(graphics_, x, y);
end;
    

function TCustomTextBox.getTextFieldItem: TABTextFieldItem;
begin
        Exit(Self.textFieldItem);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

