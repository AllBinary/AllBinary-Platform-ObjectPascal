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
// package org.allbinary.layer
unit LayerInterface;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GroupInterfaceCompositeInterface, PaintableInterface, Graphics, Group, NamedInterface, PositionInterface;

type
  {AB:TYPES}
  ILayerInterface = interface(INamedInterface) ['ILayerInterface']
        function getHeight: Integer;
        function getWidth: Integer;
        function getHalfHeight: Integer;
        function getHalfWidth: Integer;
        function getXP: Integer;
        function getYP: Integer;
        function getZP: Integer;
        function getX2: Integer;
        function getY2: Integer;
        function getZ2: Integer;
        function isVisible: Boolean;
        procedure moveDXYZ(dx: Integer; dy: Integer; dz: Integer);
        procedure setVisible(visible: Boolean);
        function implmentsTickableInterface: Boolean;
        function implmentsCollidableInterface: Boolean;
        function implmentsGameInputInterface: Boolean;
        function implmentsArtificialIntelligenceCompositeInterface: Boolean;
        function getType: Integer;
        procedure paint(graphics_: TGraphics); overload;
        procedure paintThreed(graphics_: TGraphics); overload;
        function getGroupInterface: TArray<TGroup>; overload;
        procedure setPosition(x: Integer; y: Integer; z: Integer); overload;
  end;
  TLayerInterface = ILayerInterface;

implementation

{AB:CODE}

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

