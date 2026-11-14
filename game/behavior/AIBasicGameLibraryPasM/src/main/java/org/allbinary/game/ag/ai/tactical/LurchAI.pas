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
// package org.allbinary.game.ag.ai.tactical
unit LurchAI;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicAI, GameInput, AllBinaryLayer, AllBinaryLayerManager;

type
  {AB:TYPES}
  TLurchAI = class(TBasicAI)
  public
    currentRelativeAngle: Integer;
    currentSpeed: Integer;
    procedure InitFields;
        constructor Create(ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
        procedure processAI(allBinaryLayerManager_: TAllBinaryLayerManager); override;
        procedure reverse; virtual;
        procedure accelerate;
        procedure drop;
  end;

implementation
uses
  Canvas, DisplayInfoSingleton;


{AB:CODE}

procedure TLurchAI.InitFields;
begin
  Self.currentRelativeAngle := 0;
  
end;
    

constructor TLurchAI.Create(ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
begin
        inherited Create(ownerLayerInterface, gameInput_);
        InitFields;
end;
    

// throws Exception
procedure TLurchAI.processAI(allBinaryLayerManager_: TAllBinaryLayerManager);
var
  ownerLayerInterface: TAllBinaryLayer;
  x: Integer;
begin
        if (Self.currentSpeed) = (-1) then begin
            Self.currentSpeed := 5;
        end else begin
            Self.currentSpeed := -1;
        end;
        ownerLayerInterface := Self.getOwnerLayerInterface();
        x := ownerLayerInterface.getXP();
        if ((ownerLayerInterface.getXP()) - (Self.currentSpeed)) <= (0) then begin
            Self.reverse();
            Self.drop();
        end;
        if ((ownerLayerInterface.getX2()) + (Self.currentSpeed)) > (TDisplayInfoSingleton.getInstance().getLastWidth()) then begin
            Self.reverse();
            Self.accelerate();
            Self.drop();
        end;
        if (Self.currentRelativeAngle) = (0) then begin
            x := (x) + (Self.currentSpeed);
        end else if (Self.currentRelativeAngle) = (180) then begin
            x := (x) - (Self.currentSpeed);
        end;
        ownerLayerInterface.setPosition(x, ownerLayerInterface.getYP(), ownerLayerInterface.getZP());
        if (Self.currentRelativeAngle) = (0) then begin
            inherited processKeyAI(TCanvas.KEY_NUM0);
        end else if (Self.currentRelativeAngle) = (180) then begin
            inherited processKeyAI(TCanvas.KEY_POUND);
        end;
end;
    

procedure TLurchAI.reverse;
begin
        if (Self.currentRelativeAngle) = (180) then begin
            Self.currentRelativeAngle := 0;
        end else if (Self.currentRelativeAngle) = (0) then begin
            Self.currentRelativeAngle := 180;
        end;
end;
    

procedure TLurchAI.accelerate;
begin
        if (Self.currentSpeed) < (20) then begin
            Inc(Self.currentSpeed);
        end;
end;
    

procedure TLurchAI.drop;
var
  ownerLayerInterface: TAllBinaryLayer;
  y: Integer;
begin
        ownerLayerInterface := Self.getOwnerLayerInterface();
        y := ownerLayerInterface.getYP();
        if ((ownerLayerInterface.getY2()) + (ownerLayerInterface.getHeight())) > (TDisplayInfoSingleton.getInstance().getLastHeight()) then begin
            y := 0;
        end else begin
            y := (y) + ((ownerLayerInterface.getHeight()) + (1));
        end;
        ownerLayerInterface.setPosition(ownerLayerInterface.getXP(), y, ownerLayerInterface.getZP());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

