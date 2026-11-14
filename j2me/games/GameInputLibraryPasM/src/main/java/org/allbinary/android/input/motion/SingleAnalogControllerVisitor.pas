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
// package org.allbinary.android.input.motion
unit SingleAnalogControllerVisitor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryLayerManager, AnalogLocationInputProcessor, AnalogControllerVisitor;

type
  {AB:TYPES}
  TSingleAnalogControllerVisitor = class(TAnalogControllerVisitor)
  public
    playerInputId: Integer;
    procedure InitFields;
        constructor Create(playerInputId: Integer);
        procedure process(allbinaryLayerManager_: TAllBinaryLayerManager; analogLocationInputProcessor_: TAnalogLocationInputProcessor); override;
  end;

implementation
uses
  AnalogLocationInput, AnalogLocationInputFactory;


{AB:CODE}

procedure TSingleAnalogControllerVisitor.InitFields;
begin
  
end;
    

constructor TSingleAnalogControllerVisitor.Create(playerInputId: Integer);
begin
    inherited Create;
    InitFields;
        Self.playerInputId := playerInputId;
end;
    

procedure TSingleAnalogControllerVisitor.process(allbinaryLayerManager_: TAllBinaryLayerManager; analogLocationInputProcessor_: TAnalogLocationInputProcessor);
var
  analogLocationInput_: TAnalogLocationInput;
begin
        analogLocationInput_ := TAnalogLocationInputFactory.getInstance().getInstanceForPlayer(Self.playerInputId);
        analogLocationInputProcessor_.process(allbinaryLayerManager_, analogLocationInput_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

