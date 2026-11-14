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
unit KeyPressesAI;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameInput, AllBinaryLayer, AllBinaryLayerManager, BasicAI, ABHashtable;

type
  {AB:TYPES}
  TKeyPressesAI = class(TBasicAI)
  public
    on_: Boolean;
    keys: TArray<Integer>;
    procedure InitFields;
        constructor Create(hashtable: TABHashtable<TObject, TObject>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
        procedure processAI(allBinaryLayerManager_: TAllBinaryLayerManager); override;
        procedure toggle; virtual;
        procedure disable; virtual;
        procedure enable; virtual;
        procedure setOn(on_: Boolean);
        function isOn: Boolean; virtual;
  end;

implementation
uses
  HashtableUtil;


{AB:CODE}

procedure TKeyPressesAI.InitFields;
begin
  Self.on_ := True;
  
end;
    

constructor TKeyPressesAI.Create(hashtable: TABHashtable<TObject, TObject>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
var
  objectArray: TArray<TObject>;
  size: Integer;
  index: Integer;
begin
        inherited Create(ownerLayerInterface, gameInput_);
        InitFields;
        Self.keys := TJava.NewArray<Integer>(hashtable.size());
        objectArray := THashtableUtil.getInstance().getKeysAsArray(hashtable);
        size := System.Length(objectArray);
        for index := 0 to size - 1 do begin
            Self.keys[index] := Integer(hashtable.get(TJava.Box(TJava.Box(objectArray[index]))));
        end;
end;
    

// throws Exception
procedure TKeyPressesAI.processAI(allBinaryLayerManager_: TAllBinaryLayerManager);
var
  index: Integer;
begin
        if Self.on_ then begin
            for index := 0 to System.Length(Self.keys) - 1 do begin
                inherited processKeyAI(Self.keys[index].intValue());
            end;
        end;
end;
    

// throws Exception
procedure TKeyPressesAI.toggle;
begin
        if Self.isOn() then begin
            Self.setOn(False);
        end else begin
            Self.setOn(True);
        end;
end;
    

// throws Exception
procedure TKeyPressesAI.disable;
begin
        Self.setOn(False);
end;
    

// throws Exception
procedure TKeyPressesAI.enable;
begin
        Self.setOn(True);
end;
    

procedure TKeyPressesAI.setOn(on_: Boolean);
begin
        Self.on_ := on_;
end;
    

function TKeyPressesAI.isOn: Boolean;
begin
        Exit(Self.on_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

