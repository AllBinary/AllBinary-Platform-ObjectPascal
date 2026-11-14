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
unit ReverseVelocityBoundsVisitor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BoundsVisitorInterface, VelocityInterface, LayerInterface, LogUtil;

type
  {AB:TYPES}
  TReverseVelocityBoundsVisitor = class(TInterfacedObject, IBoundsVisitorInterface)
  public
    logUtil: TLogUtil;
    velocityInterface: IVelocityInterface;
    layerInterface: ILayerInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(layerInterface_: ILayerInterface);
        function getX: Integer; virtual;
        function getY: Integer; virtual;
        procedure minX; virtual;
        procedure maxX; virtual;
        procedure minY; virtual;
        procedure maxY; virtual;
  end;

implementation
uses
  VelocityInterfaceCompositeInterface;


{AB:CODE}

procedure TReverseVelocityBoundsVisitor.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
end;

function TReverseVelocityBoundsVisitor.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TReverseVelocityBoundsVisitor.Create(layerInterface_: ILayerInterface);
var
  velocityInterfaceCompositeInterface_: IVelocityInterfaceCompositeInterface;
begin
    inherited Create;
    InitFields;
        Self.layerInterface := layerInterface_;
        velocityInterfaceCompositeInterface_ := (TJava.ToObject(layerInterface_) as IVelocityInterfaceCompositeInterface);
        Self.velocityInterface := (TJava.ToObject(velocityInterfaceCompositeInterface_.getVelocityProperties()) as IVelocityInterface);
end;
    

function TReverseVelocityBoundsVisitor.getX: Integer;
begin
        Exit(Self.layerInterface.getXP());
end;
    

function TReverseVelocityBoundsVisitor.getY: Integer;
begin
        Exit(Self.layerInterface.getYP());
end;
    

procedure TReverseVelocityBoundsVisitor.minX;
begin
        if (Self.velocityInterface.getVelocityXBasicDecimalP().getUnscaled()) < (0) then begin
            Self.velocityInterface.getVelocityXBasicDecimalP().multiplyint(-1);
        end;
end;
    

procedure TReverseVelocityBoundsVisitor.maxX;
begin
        if (Self.velocityInterface.getVelocityXBasicDecimalP().getUnscaled()) > (0) then begin
            Self.velocityInterface.getVelocityXBasicDecimalP().multiplyint(-1);
        end;
end;
    

procedure TReverseVelocityBoundsVisitor.minY;
begin
        if (Self.velocityInterface.getVelocityYBasicDecimalP().getUnscaled()) < (0) then begin
            Self.velocityInterface.getVelocityYBasicDecimalP().multiplyint(-1);
        end;
end;
    

procedure TReverseVelocityBoundsVisitor.maxY;
begin
        if (Self.velocityInterface.getVelocityYBasicDecimalP().getUnscaled()) > (0) then begin
            Self.velocityInterface.getVelocityYBasicDecimalP().multiplyint(-1);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

