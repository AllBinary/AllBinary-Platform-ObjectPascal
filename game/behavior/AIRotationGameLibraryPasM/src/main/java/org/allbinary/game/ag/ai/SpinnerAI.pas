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
unit SpinnerAI;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicAI, GameInput, AllBinaryLayer, AllBinaryLayerManager;

type
  {AB:TYPES}
  TSpinnerAI = class(TBasicAI)
  public
    isEven: Boolean;
    direction: TArray<Integer>;
    procedure InitFields;
        constructor Create(direction: TArray<Integer>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
        procedure processAI(allBinaryLayerManager_: TAllBinaryLayerManager); override;
  end;

implementation
uses
  Canvas;


{AB:CODE}

procedure TSpinnerAI.InitFields;
begin
  
  
end;
    

constructor TSpinnerAI.Create(direction: TArray<Integer>; ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
begin
        inherited Create(ownerLayerInterface, gameInput_);
        InitFields;
        Self.direction := direction;
end;
    

// throws Exception
procedure TSpinnerAI.processAI(allBinaryLayerManager_: TAllBinaryLayerManager);
begin
        if Self.isEven then begin
            inherited processKeyAI(Self.direction[0]);
            Self.isEven := False;
        end else begin
            inherited processKeyAI(TCanvas.KEY_NUM1);
            Self.isEven := True;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

