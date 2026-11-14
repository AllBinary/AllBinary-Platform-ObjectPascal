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
unit BasicInputMappingHelpPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameKey, Input, GameInputMapping, BasicColor, BasicArrayList, HelpPaintable;

type
  {AB:TYPES}
  TBasicInputMappingHelpPaintable = class(THelpPaintable)
  public
    gameInputMappingArray: TArray<TGameInputMapping>;
    NONE: TGameKey;
    procedure InitFields;
        constructor Create(gameInputMappingArray: TArray<TGameInputMapping>; basicColor_: TBasicColor);
        procedure update(selectedGameKey: TGameKey; selectedInput: TInput); virtual;
        function get(keyList: TBasicArrayList): string;
  end;

implementation
uses
  GameKeyFactory, PlatformInputMappingFactory, PersistentInputMapping, BasicColorFactory, StringMaker, CommonSeps;


{AB:CODE}

procedure TBasicInputMappingHelpPaintable.InitFields;
begin
  
  Self.NONE := TGameKeyFactory.getInstance().NONE;
end;
    

constructor TBasicInputMappingHelpPaintable.Create(gameInputMappingArray: TArray<TGameInputMapping>; basicColor_: TBasicColor);
begin
        inherited Create('Help Screen', TBasicColorFactory.getInstance().BLACK, basicColor_);
        InitFields;
        Self.gameInputMappingArray := gameInputMappingArray;
        Self.update(Self.NONE, Self.NONE);
end;
    

procedure TBasicInputMappingHelpPaintable.update(selectedGameKey: TGameKey; selectedInput: TInput);
var
  gameKeyMapping: TPersistentInputMapping;
  EQUAL: string;
  stringMaker_: TStringMaker;
  size: Integer;
  keyInfo: TArray<string>;
  gameInputMapping_: TGameInputMapping;
  gameKey_: TGameKey;
  list: TBasicArrayList;
  index: Integer;
begin
        gameKeyMapping := TPlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance();
        EQUAL := ' = ';
        stringMaker_ := TStringMaker.Create();
        size := System.Length(Self.gameInputMappingArray);
        keyInfo := TJava.NewArray<string>(size);
        
        
        
        for index := 0 to size - 1 do begin
            gameInputMapping_ := Self.gameInputMappingArray[index];
            gameKey_ := gameInputMapping_.getGameKey();
            list := gameKeyMapping.getInputMapping().getMappedInput(gameKey_);
            stringMaker_.delete_(0, stringMaker_.length());
            keyInfo[index] := stringMaker_.append(gameInputMapping_.getName()).append(EQUAL).append(Self.get(list)).toString();
        end;
        inherited setInputInfoP(keyInfo);
end;
    

function TBasicInputMappingHelpPaintable.get(keyList: TBasicArrayList): string;
var
  commonSeps_: TCommonSeps;
  stringBuffer: TStringMaker;
  AND_: string;
  key: TInput;
  size: Integer;
  index: Integer;
begin
        commonSeps_ := TCommonSeps.getInstance();
        stringBuffer := TStringMaker.Create();
        AND_ := 'and ';
        
        size := keyList.size();
        for index := 0 to size - 1 do begin
            key := TInput(TJava.ToObject(keyList.objectArray[index]));
            stringBuffer.append(key.getName());
            if ((index) + (1)) < (keyList.size()) then begin
                if (keyList.size()) = (2) then begin
                    stringBuffer.append(commonSeps_.SPACE).append(AND_);
                end else begin
                    if ((index) + (2)) = (keyList.size()) then begin
                        stringBuffer.append(commonSeps_.COMMA_SEP);
                        stringBuffer.append(AND_);
                    end else begin
                        stringBuffer.append(commonSeps_.COMMA_SEP);
                    end;
                end;
            end;
        end;
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

