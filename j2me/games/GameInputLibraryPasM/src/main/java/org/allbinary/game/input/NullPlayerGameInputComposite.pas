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
// package org.allbinary.game.input
unit NullPlayerGameInputComposite;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryLayerManager, PlayerGameInput, PlayerGameInputCompositeInterface, GameInputInterface, NamedInterface;

type
  {AB:TYPES}
  TNullPlayerGameInputComposite = class(TInterfacedObject, IPlayerGameInputCompositeInterface, IGameInputInterface, INamedInterface)
  public
    class var NULL_PLAYER_GAME_INPUT_COMPOSITE: TNullPlayerGameInputComposite;
    function JavaObject: TObject;
    constructor Create;
        function getName: string; virtual;
        procedure processInput(layerManager: TAllBinaryLayerManager); virtual;
        procedure initInputProcessors; virtual;
        function getPlayerGameInput: TPlayerGameInput; virtual;
  end;

implementation
uses
  NoPlayerGameInput, StringUtil;


{AB:CODE}

function TNullPlayerGameInputComposite.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TNullPlayerGameInputComposite.Create;
begin
  inherited Create;
end;
    

function TNullPlayerGameInputComposite.getName: string;
begin
        Exit(TStringUtil.getInstance().EMPTY_STRING);
end;
    

// throws Exception
procedure TNullPlayerGameInputComposite.processInput(layerManager: TAllBinaryLayerManager);
begin
end;
    

procedure TNullPlayerGameInputComposite.initInputProcessors;
begin
end;
    

function TNullPlayerGameInputComposite.getPlayerGameInput: TPlayerGameInput;
begin
        Exit(TNoPlayerGameInput.getInstance());
end;

initialization
  {AB:INITIALIZATION}
  TNullPlayerGameInputComposite.NULL_PLAYER_GAME_INPUT_COMPOSITE := TNullPlayerGameInputComposite.Create();
  {AB:END}

end.

