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
unit UpDownVectorAI;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicAI, GameInput, BasicVelocityProperties, AllBinaryLayer, AllBinaryLayerManager;

type
  {AB:TYPES}
  TUpDownVectorAI = class(TBasicAI)
  public
    velocityInterface: TBasicVelocityProperties;
    index: Integer;
    procedure InitFields;
        constructor Create(ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
        procedure processAI(allBinaryLayerManager_: TAllBinaryLayerManager); override;
  end;

implementation
uses
  VelocityInterfaceCompositeInterface, BasicDecimal;


{AB:CODE}

procedure TUpDownVectorAI.InitFields;
begin
  
  Self.index := 0;
end;
    

constructor TUpDownVectorAI.Create(ownerLayerInterface: TAllBinaryLayer; gameInput_: TGameInput);
var
  velocityInterfaceCompositeInterface_: IVelocityInterfaceCompositeInterface;
begin
        inherited Create(ownerLayerInterface, gameInput_);
        InitFields;
        velocityInterfaceCompositeInterface_ := (TJava.ToObject(Self.getOwnerLayerInterface()) as IVelocityInterfaceCompositeInterface);
        Self.velocityInterface := velocityInterfaceCompositeInterface_.getVelocityProperties();
        Self.velocityInterface.getVelocityYBasicDecimalP().setint(0);
end;
    

// throws Exception
procedure TUpDownVectorAI.processAI(allBinaryLayerManager_: TAllBinaryLayerManager);
var
  y: Integer;
  basicDecimal_: TBasicDecimal;
begin
        y := (Self.getOwnerLayerInterface().getHeight()) * (270);
        if (Self.index) < (5) then begin
            basicDecimal_ := Self.velocityInterface.getVelocityYBasicDecimalP();
            basicDecimal_.setint(0);
            basicDecimal_.addint(y);
            Inc(Self.index);
        end else if (Self.index) < (10) then begin
            basicDecimal_ := Self.velocityInterface.getVelocityYBasicDecimalP();
            basicDecimal_.setint(0);
            basicDecimal_.subtractint(y);
            Inc(Self.index);
        end else begin
            Self.index := 0;
            Self.processAI(allBinaryLayerManager_);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

