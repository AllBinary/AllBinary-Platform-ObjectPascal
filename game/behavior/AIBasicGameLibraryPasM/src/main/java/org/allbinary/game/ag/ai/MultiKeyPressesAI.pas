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
// package org.allbinary.game.ag.ai
unit MultiKeyPressesAI;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameInput, AllBinaryLayer, AllBinaryLayerManager, GameTickTimeDelayHelper, TimeDelayHelper, ABHashtable, KeyPressesAI;

type
  {AB:TYPES}
  TMultiKeyPressesAI = class(TKeyPressesAI)
  public
    toggleTimeHelper: TTimeDelayHelper;
    gameTickTimeDelayHelper: TGameTickTimeDelayHelper;
    procedure InitFields;
        constructor Create(hashtable: TABHashtable<TObject, TObject>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
        procedure processAI(allBinaryLayerManager_: TAllBinaryLayerManager); override;
        procedure update;
        procedure toggle; override;
        procedure disable; override;
        procedure enable; override;
  end;

implementation
uses
  GameTickTimeDelayHelperFactory;


{AB:CODE}

procedure TMultiKeyPressesAI.InitFields;
begin
  Self.toggleTimeHelper := TTimeDelayHelper.Create(600);
  Self.gameTickTimeDelayHelper := TGameTickTimeDelayHelperFactory.getInstance();
end;
    

constructor TMultiKeyPressesAI.Create(hashtable: TABHashtable<TObject, TObject>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
begin
        inherited Create(hashtable, ownerLayerInterface, gameInput_);
        InitFields;
        Self.update();
end;
    

// throws Exception
procedure TMultiKeyPressesAI.processAI(allBinaryLayerManager_: TAllBinaryLayerManager);
begin
end;
    

// throws Exception
procedure TMultiKeyPressesAI.update;
var
  gameInput_: TGameInput;
  keys: TArray<Integer>;
  size: Integer;
  key: Integer;
  index: Integer;
begin
        gameInput_ := Self.getGameInput();
        keys := Self.keys;
        size := System.Length(keys);
        if Self.isOn() then begin
            for index := 0 to size - 1 do begin
                key := (keys[index]);
                if (key) <> (-1) then begin
                    gameInput_.add(Self.gameKeyEventFactory.getInstanceForKey(Self, key));
                end;
            end;
        end else begin
            for index := 0 to size - 1 do begin
                key := (keys[index]);
                if (key) <> (-1) then begin
                    gameInput_.addForRemoval(Self.gameKeyEventFactory.getInstanceForKey(Self, key));
                end;
            end;
        end;
end;
    

// throws Exception
procedure TMultiKeyPressesAI.toggle;
begin
        if Self.toggleTimeHelper.isTime(Self.gameTickTimeDelayHelper.startTime) then begin
            inherited toggle();
            Self.update();
        end;
end;
    

// throws Exception
procedure TMultiKeyPressesAI.disable;
begin
        if Self.toggleTimeHelper.isTime(Self.gameTickTimeDelayHelper.startTime) then begin
            inherited disable();
            Self.update();
        end;
end;
    

// throws Exception
procedure TMultiKeyPressesAI.enable;
begin
        if Self.toggleTimeHelper.isTime(Self.gameTickTimeDelayHelper.startTime) then begin
            inherited enable();
            Self.update();
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

