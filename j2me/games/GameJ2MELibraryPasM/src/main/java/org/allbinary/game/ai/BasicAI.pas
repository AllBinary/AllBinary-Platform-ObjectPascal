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
// package org.allbinary.game.ai
unit BasicAI;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ArtificialIntelligence, GameInput, GameKeyEventSourceInterface, GameKeyEventFactory, AllBinaryLayer, AllBinaryLayerManager, LogUtil, CommonStrings;

type
  {AB:TYPES}
  TBasicAI = class(TArtificialIntelligence, IGameKeyEventSourceInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    gameKeyEventFactory: TGameKeyEventFactory;
    ownerLayerInterface: TAllBinaryLayer;
    gameInput: TGameInput;
    lastKey: Integer;
    class var AI_VISITOR: Integer;
    class var ID: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
        procedure processAI(allBinaryLayerManager_: TAllBinaryLayerManager); virtual;
        procedure processKeyAI(key: Integer); virtual;
        procedure setLastKey(lastKey: Integer); virtual;
        function getLastKey: Integer; virtual;
        function getOwnerLayerInterface: TAllBinaryLayer; virtual;
        function getGameInput: TGameInput; virtual;
        function getName: string; virtual;
        function toString: string; override;
        function getSourceId: Integer; virtual;
  end;

implementation
uses
  CanvasUtil, SmallIntegerSingletonFactory, StringMaker, CommonSeps;


{AB:CODE}

procedure TBasicAI.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.gameKeyEventFactory := TGameKeyEventFactory.getInstance();
  
  
  Self.lastKey := -1;
end;

function TBasicAI.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TBasicAI.Create(ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
begin
    inherited Create;
    InitFields;
        Self.ownerLayerInterface := ownerLayerInterface;
        Self.gameInput := gameInput_;
end;
    

// throws Exception
procedure TBasicAI.processAI(allBinaryLayerManager_: TAllBinaryLayerManager);
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

// throws Exception
procedure TBasicAI.processKeyAI(key: Integer);
begin
        if (key) <> (-1) then begin
            Self.gameInput.add(Self.gameKeyEventFactory.getInstanceForKey(Self, key));
        end;
end;
    

procedure TBasicAI.setLastKey(lastKey: Integer);
begin
        Self.lastKey := lastKey;
end;
    

function TBasicAI.getLastKey: Integer;
begin
        Exit(Self.lastKey);
end;
    

function TBasicAI.getOwnerLayerInterface: TAllBinaryLayer;
begin
        Exit(Self.ownerLayerInterface);
end;
    

function TBasicAI.getGameInput: TGameInput;
begin
        Exit(Self.gameInput);
end;
    

function TBasicAI.getName: string;
begin
        Exit(Self.ClassType.ClassName);
end;
    

function TBasicAI.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(TCommonSeps.getInstance().NEW_LINE);
        stringBuffer.append(Self.getName());
        stringBuffer.append(' LastKey: ');
        stringBuffer.append(TCanvasUtil.getKeyName(Self.getLastKey()));
        Exit(stringBuffer.toString());
end;
    

function TBasicAI.getSourceId: Integer;
begin
        Exit(1);
end;

initialization
  {AB:INITIALIZATION}
  TBasicAI.AI_VISITOR := TSmallIntegerSingletonFactory.getInstance().getAt(2);
  TBasicAI.ID := TSmallIntegerSingletonFactory.getInstance().getAt(1);
  {AB:END}

end.

