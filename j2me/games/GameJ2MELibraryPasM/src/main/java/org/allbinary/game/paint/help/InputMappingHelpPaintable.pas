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
// package org.allbinary.game.paint.help
unit InputMappingHelpPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, GameKey, Input, GameInputMapping, BasicColor, BasicColorFactory, LogUtil, StringUtil, CommonSeps, CommonStrings, BasicArrayList, UpdateMyFontProperties, HelpPaintable;

type
  {AB:TYPES}
  TInputMappingHelpPaintable = class(THelpPaintable)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    commonSeps: TCommonSeps;
    stringUtil: TStringUtil;
    basicColorFactory: TBasicColorFactory;
    NONE: TGameKey;
    EMPTY_STRING: string;
    gameInputMappingArray: TArray<TGameInputMapping>;
    keyMappingArray: TArray<TBasicArrayList>;
    actionBasicColor: TArray<TBasicColor>;
    inputBasicColorArray: TArray<TArray<TBasicColor>>;
    selectedBasicColor: TBasicColor;
    updateMyFontProperties: TUpdateMyFontProperties;
    class var AND_: string;
    class var SEP: string;
    class var MORE_THAN_TWO_IN_LIST_AND: string;
    procedure InitFields;
        constructor Create(gameInputMappingArray: TArray<TGameInputMapping>; backgroundBasicColor: TBasicColor; basicColor_: TBasicColor);
        procedure updateMeasurement(graphics_: TGraphics); override;
        procedure update(selectedGameKey: TGameKey; selectedInput: TInput); virtual;
        function get(keyList: TBasicArrayList): string;
        procedure paint(graphics_: TGraphics); override;
  end;

implementation
uses
  Font, GameKeyFactory, PlatformInputMappingFactory, PersistentInputMapping, BasicColorUtil, NullUtil, StringMaker, CommonLabels;


{AB:CODE}

procedure TInputMappingHelpPaintable.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.commonSeps := TCommonSeps.getInstance();
  Self.stringUtil := TStringUtil.getInstance();
  Self.basicColorFactory := TBasicColorFactory.getInstance();
  Self.NONE := TGameKeyFactory.getInstance().NONE;
  Self.EMPTY_STRING := TStringUtil.getInstance().EMPTY_STRING;
  
  Self.keyMappingArray := nil;
  Self.actionBasicColor := TBasicColorUtil.getInstance().ZERO_ARRAY;
  Self.inputBasicColorArray := TJava.NewArray2<TBasicColor>(0, 0);
  
  Self.updateMyFontProperties := TUpdateMyFontProperties.Create();
end;
    

constructor TInputMappingHelpPaintable.Create(gameInputMappingArray: TArray<TGameInputMapping>; backgroundBasicColor: TBasicColor; basicColor_: TBasicColor);
begin
        inherited Create('Input Mapping', backgroundBasicColor, basicColor_);
        InitFields;
        Self.gameInputMappingArray := gameInputMappingArray;
        Self.update(Self.NONE, Self.NONE);
        if ((backgroundBasicColor) = (Self.basicColorFactory.WHITE)) or ((basicColor_) = (Self.basicColorFactory.WHITE)) then begin
            Self.selectedBasicColor := Self.basicColorFactory.RED;
        end else begin
            Self.selectedBasicColor := Self.basicColorFactory.WHITE;
        end;
end;
    

procedure TInputMappingHelpPaintable.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
  updateMyFontProperties_: TUpdateMyFontProperties;
  stringMaker_: TStringMaker;
  inputInfo: TArray<string>;
  size: Integer;
  list: TBasicArrayList;
  keyMappings: string;
  actionString: string;
  input_: TInput;
  size2: Integer;
  index2: Integer;
  index: Integer;
begin
        font_ := graphics_.getFont();
        updateMyFontProperties_ := TUpdateMyFontProperties.Create();
        updateMyFontProperties_.charHeight := font_.getHeight();
        stringMaker_ := TStringMaker.Create();
        inputInfo := Self.inputInfo;
        size := System.Length(inputInfo);
        updateMyFontProperties_.actionStringArray := TJava.NewArray<string>(size);
        updateMyFontProperties_.keymappingBeginWidthArray := TJava.NewArray<Integer>(size);
        updateMyFontProperties_.actionStringDeltaXArray := TJava.NewArray<Integer>(size);
        updateMyFontProperties_.inputDeltaXArray := TJava.NewArray2<Integer>(size, 0);
        updateMyFontProperties_.sepArray := TJava.NewArray2<string>(size, 0);
        updateMyFontProperties_.sepWidthArray := TJava.NewArray2<Integer>(size, 0);
        
        
        
        
        size2 := 0;
        for index := 0 to size - 1 do begin
            list := Self.keyMappingArray[index];
            keyMappings := Self.get(list);
            stringMaker_.delete_(0, stringMaker_.length());
            actionString := stringMaker_.append(inputInfo[index]).append(Self.commonSeps.COLON).append(Self.commonSeps.SPACE).append(Self.commonSeps.SPACE).toString();
            updateMyFontProperties_.actionStringArray[index] := actionString;
            stringMaker_.delete_(0, stringMaker_.length());
            updateMyFontProperties_.keymappingBeginWidthArray[index] := (TJava.SignedRightShift(font_.stringWidth(stringMaker_.append(updateMyFontProperties_.actionStringArray[index]).append(keyMappings).toString()), 1));
            updateMyFontProperties_.actionStringDeltaXArray[index] := font_.stringWidth(actionString);
            size2 := list.size();
            updateMyFontProperties_.inputDeltaXArray[index] := TJava.NewArray<Integer>(size2);
            updateMyFontProperties_.sepArray[index] := TJava.NewArray<string>(size2);
            updateMyFontProperties_.sepWidthArray[index] := TJava.NewArray<Integer>(size2);
            for index2 := 0 to size2 - 1 do begin
                input_ := TInput(TJava.ToObject(list.objectArray[index2]));
                updateMyFontProperties_.inputDeltaXArray[index][index2] := font_.stringWidth(input_.getName());
                updateMyFontProperties_.sepArray[index][index2] := Self.EMPTY_STRING;
                if ((index2) + (1)) < (list.size()) then begin
                    if (list.size()) = (2) then begin
                        updateMyFontProperties_.sepArray[index][index2] := TInputMappingHelpPaintable.AND_;
                    end else begin
                        if ((index2) + (2)) = (list.size()) then begin
                            updateMyFontProperties_.sepArray[index][index2] := TInputMappingHelpPaintable.MORE_THAN_TWO_IN_LIST_AND;
                        end else begin
                            updateMyFontProperties_.sepArray[index][index2] := TInputMappingHelpPaintable.SEP;
                        end;
                    end;
                end;
                if not TJava.Equals(updateMyFontProperties_.sepArray[index][index2], Self.EMPTY_STRING) then begin
                    updateMyFontProperties_.sepWidthArray[index][index2] := font_.stringWidth(updateMyFontProperties_.sepArray[index][index2]);
                end;
            end;
        end;
        Self.updateMyFontProperties := updateMyFontProperties_;
        inherited updateMeasurement(graphics_);
end;
    

procedure TInputMappingHelpPaintable.update(selectedGameKey: TGameKey; selectedInput: TInput);
var
  stringMaker_: TStringMaker;
  gameKeyMapping: TPersistentInputMapping;
  size: Integer;
  keyInfo: TArray<string>;
  keyMappingArray: TArray<TBasicArrayList>;
  actionBasicColor: TArray<TBasicColor>;
  inputBasicColorArray: TArray<TArray<TBasicColor>>;
  gameInputMapping_: TGameInputMapping;
  gameKey_: TGameKey;
  list: TBasicArrayList;
  size2: Integer;
  index2: Integer;
  indexOfSelectedInput: Integer;
  index: Integer;
begin
        stringMaker_ := TStringMaker.Create();
        Self.logUtil.putF(stringMaker_.append(TCommonLabels.getInstance().START_LABEL).append('selected GameKey: ').append(Self.stringUtil.toString(selectedGameKey)).append(' Input: ').append(Self.stringUtil.toString(selectedInput)).toString(), TJava.Box(Self), Self.commonStrings.UPDATE);
        gameKeyMapping := TPlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance();
        size := System.Length(Self.gameInputMappingArray);
        keyInfo := TJava.NewArray<string>(size);
        keyMappingArray := TJava.NewArray<TBasicArrayList>(size);
        actionBasicColor := TJava.NewArray<TBasicColor>(size);
        inputBasicColorArray := TJava.NewArray2<TBasicColor>(size, 0);
        
        
        
        for index := 0 to size - 1 do begin
            gameInputMapping_ := Self.gameInputMappingArray[index];
            gameKey_ := gameInputMapping_.getGameKey();
            list := gameKeyMapping.getInputMapping().getMappedInput(gameKey_);
            size2 := list.size();
            inputBasicColorArray[index] := TJava.NewArray<TBasicColor>(size2);
            for index2 := 0 to size2 - 1 do begin
                inputBasicColorArray[index][index2] := Self.basicColor;
            end;
            if (gameKey_) = (selectedGameKey) then begin
                stringMaker_.delete_(0, stringMaker_.length());
                Self.logUtil.putF(stringMaker_.append('Found: selected GameKey: ').append(Self.stringUtil.toString(selectedGameKey)).toString(), TJava.Box(Self), Self.commonStrings.UPDATE);
                actionBasicColor[index] := Self.selectedBasicColor;
                indexOfSelectedInput := list.indexOf(TJava.Box(selectedInput));
                if (indexOfSelectedInput) >= (0) then begin
                    stringMaker_.delete_(0, stringMaker_.length());
                    Self.logUtil.putF(stringMaker_.append('Found: selected Input: ').append(Self.stringUtil.toString(selectedInput)).toString(), TJava.Box(Self), Self.commonStrings.UPDATE);
                    inputBasicColorArray[index][indexOfSelectedInput] := Self.selectedBasicColor;
                end;
            end else begin
                actionBasicColor[index] := Self.basicColor;
            end;
            keyInfo[index] := gameInputMapping_.getName();
            keyMappingArray[index] := list;
        end;
        Self.keyMappingArray := keyMappingArray;
        Self.actionBasicColor := actionBasicColor;
        Self.inputBasicColorArray := inputBasicColorArray;
        inherited setInputInfoP(keyInfo);
        Self.myFontProcessor := Self.updateMyFontProcessor;
end;
    

function TInputMappingHelpPaintable.get(keyList: TBasicArrayList): string;
var
  stringBuffer: TStringMaker;
  key: TInput;
  size: Integer;
  index: Integer;
begin
        stringBuffer := TStringMaker.Create();
        
        size := keyList.size();
        for index := 0 to size - 1 do begin
            key := TInput(TJava.ToObject(keyList.objectArray[index]));
            stringBuffer.append(key.getName());
            if ((index) + (1)) < (keyList.size()) then begin
                if (keyList.size()) = (2) then begin
                    stringBuffer.append(TInputMappingHelpPaintable.AND_);
                end else begin
                    if ((index) + (2)) = (keyList.size()) then begin
                        stringBuffer.append(TInputMappingHelpPaintable.MORE_THAN_TWO_IN_LIST_AND);
                    end else begin
                        stringBuffer.append(TInputMappingHelpPaintable.SEP);
                    end;
                end;
            end;
        end;
        Exit(stringBuffer.toString());
end;
    

procedure TInputMappingHelpPaintable.paint(graphics_: TGraphics);
var
  halfWidth: Integer;
  inputInfo: TArray<string>;
  size: Integer;
  y: Integer;
  deltaX: Integer;
  size2: Integer;
  actionString: string;
  input_: TInput;
  list: TBasicArrayList;
  sep: string;
  beginWidth: Integer;
  index2: Integer;
  index: Integer;
begin
        Self.myFontProcessor.process(graphics_);
        halfWidth := Self.displayInfo.getLastHalfWidth();
        graphics_.setColor(Self.basicColor.intValue());
        graphics_.drawString(Self.title, (halfWidth) - (Self.titleBeginWidth), Self.updateMyFontProperties.charHeight, Self.anchor);
        inputInfo := Self.inputInfo;
        size := System.Length(inputInfo);
        y := 0;
        deltaX := 0;
        size2 := 0;
        
        
        
        
        
        for index := 0 to size - 1 do begin
            y := (((index) + (3))) * (Self.updateMyFontProperties.charHeight);
            deltaX := 0;
            list := Self.keyMappingArray[index];
            size2 := list.size();
            beginWidth := Self.updateMyFontProperties.keymappingBeginWidthArray[index];
            graphics_.setColor(Self.actionBasicColor[index].intValue());
            actionString := Self.updateMyFontProperties.actionStringArray[index];
            graphics_.drawString(actionString, ((halfWidth) - (beginWidth)) + (deltaX), y, Self.anchor);
            deltaX := (deltaX) + (Self.updateMyFontProperties.actionStringDeltaXArray[index]);
            for index2 := 0 to size2 - 1 do begin
                input_ := TInput(TJava.ToObject(list.objectArray[index2]));
                graphics_.setColor(Self.inputBasicColorArray[index][index2].intValue());
                graphics_.drawString(input_.getName(), ((halfWidth) - (beginWidth)) + (deltaX), y, Self.anchor);
                deltaX := (deltaX) + (Self.updateMyFontProperties.inputDeltaXArray[index][index2]);
                sep := Self.updateMyFontProperties.sepArray[index][index2];
                graphics_.setColor(Self.basicColor.intValue());
                graphics_.drawString(sep, ((halfWidth) - (beginWidth)) + (deltaX), y, Self.anchor);
                deltaX := (deltaX) + (Self.updateMyFontProperties.sepWidthArray[index][index2]);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TInputMappingHelpPaintable.AND_ := ' and ';
  TInputMappingHelpPaintable.SEP := ', ';
  TInputMappingHelpPaintable.MORE_THAN_TWO_IN_LIST_AND := ', and ';
  {AB:END}

end.

