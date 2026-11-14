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
unit AllBinaryLayer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Group, Rectangle, StringMaker, ViewPositionBase, ViewPositionEvent, ABLayer, LayerInterface, GroupInterfaceCompositeInterface, NamedInterface, PaintableInterface, PositionInterface;

type
  {AB:TYPES}
  TAllBinaryLayer = class(TABLayer, ILayerInterface, IGroupInterfaceCompositeInterface, INamedInterface, IPaintableInterface, IPositionInterface)
  public
    viewPositionEvent: TViewPositionEvent;
    halfWidth: Integer;
    halfHeight: Integer;
    name: string;
    viewPosition: TViewPositionBase;
    class var NULL_ALLBINARY_LAYER: TAllBinaryLayer;
    class var TYPE_: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(name: string; rectangle_: TRectangle; viewPosition: TViewPositionBase);
        procedure setPosition(x: Integer; y: Integer; z: Integer); virtual;
        procedure moveDXYZ(dx: Integer; dy: Integer; dz: Integer); virtual;
        function getXP: Integer; virtual;
        function getYP: Integer; virtual;
        function getZP: Integer; virtual;
        function getWidth: Integer; virtual;
        function getHeight: Integer; virtual;
        procedure setVisible(visible: Boolean); virtual;
        function isVisible: Boolean; virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure onChangeEvent(layerManagerEvent: TViewPositionEvent); virtual;
        procedure paintThreed(graphics_: TGraphics); virtual;
        function getX2: Integer; virtual;
        function getY2: Integer; virtual;
        function getZ2: Integer; virtual;
        function getName: string; virtual;
        procedure setHalfWidth(halfWidth: Integer); virtual;
        function getHalfWidth: Integer; virtual;
        procedure setHalfHeight(halfHeight: Integer); virtual;
        function getHalfHeight: Integer; virtual;
        function getHalfDepth: Integer; virtual;
        function getViewPosition: TViewPositionBase; virtual;
        procedure setViewPosition(viewPosition: TViewPositionBase); virtual;
        function getGroupInterface: TArray<TGroup>; virtual;
        function implmentsTickableInterface: Boolean; virtual;
        function implmentsGameInputInterface: Boolean; virtual;
        function implmentsArtificialIntelligenceCompositeInterface: Boolean; virtual;
        function implmentsCollidableInterface: Boolean; virtual;
        function implementsThreedInterface: Boolean; virtual;
        function getType: Integer; virtual;
        function getMultiPlayerType: Integer; virtual;
        procedure toStringAppend(stringBuffer: TStringMaker); virtual;
        function toString: string; override;
  end;

implementation
uses
  BasicGroupFactory, GPoint, RectangleFactory, OpenGLFeatureUtil, TsUtil, StringUtil, PositionStrings, CommonLabels, CommonSeps;


{AB:CODE}

procedure TAllBinaryLayer.InitFields;
begin
  Self.viewPositionEvent := TViewPositionEvent.Create(TJava.Box(Self));
  
  
  
  Self.viewPosition := TViewPositionBase.NULL_VIEW_POSITION;
end;

function TAllBinaryLayer.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAllBinaryLayer.Create(name: string; rectangle_: TRectangle; viewPosition: TViewPositionBase);
var
  localName: string;
  point: TGPoint;
begin
        inherited Create(rectangle_.getWidth(), rectangle_.getHeight());
        InitFields;
        
        localName := TStringMaker.Create().append(name).append(TCommonSeps.getInstance().COLON).append(IntToHex(TTsUtil.getInstance().hashCode(TJava.Box(Self)))).toString();
        Self.name := localName;
        point := rectangle_.getPoint();
        Self.setPosition(point.getX(), point.getY(), point.getZ());
        Self.setHalfWidth((TJava.SignedRightShift(Self.getWidth(), 1)));
        Self.setHalfHeight((TJava.SignedRightShift(Self.getHeight(), 1)));
        Self.viewPosition := viewPosition;
        Self.viewPosition.setAllbinaryLayer(TJava.Box(Self));
end;
    

procedure TAllBinaryLayer.setPosition(x: Integer; y: Integer; z: Integer);
begin
        inherited setPosition(x, y, z);
end;
    

procedure TAllBinaryLayer.moveDXYZ(dx: Integer; dy: Integer; dz: Integer);
begin
        inherited moveDXYZ(dx, dy, dz);
end;
    

function TAllBinaryLayer.getXP: Integer;
begin
        Exit(inherited getXP());
end;
    

function TAllBinaryLayer.getYP: Integer;
begin
        Exit(inherited getYP());
end;
    

function TAllBinaryLayer.getZP: Integer;
begin
        Exit(inherited getZP());
end;
    

function TAllBinaryLayer.getWidth: Integer;
begin
        Exit(inherited getWidth());
end;
    

function TAllBinaryLayer.getHeight: Integer;
begin
        Exit(inherited getHeight());
end;
    

procedure TAllBinaryLayer.setVisible(visible: Boolean);
begin
        inherited setVisible(visible);
end;
    

function TAllBinaryLayer.isVisible: Boolean;
begin
        Exit(inherited isVisible());
end;
    

procedure TAllBinaryLayer.paint(graphics_: TGraphics);
begin
        inherited paint(graphics_);
end;
    

// throws Exception
procedure TAllBinaryLayer.onChangeEvent(layerManagerEvent: TViewPositionEvent);
begin
end;
    

procedure TAllBinaryLayer.paintThreed(graphics_: TGraphics);
begin
end;
    

function TAllBinaryLayer.getX2: Integer;
begin
        Exit((Self.getXP()) + (Self.getWidth()));
end;
    

function TAllBinaryLayer.getY2: Integer;
begin
        Exit((Self.getYP()) + (Self.getHeight()));
end;
    

function TAllBinaryLayer.getZ2: Integer;
begin
        Exit(Integer(Trunc(((Self.getZP()) + (Self.getDepth())))));
end;
    

function TAllBinaryLayer.getName: string;
begin
        Exit(Self.name);
end;
    

procedure TAllBinaryLayer.setHalfWidth(halfWidth: Integer);
begin
        Self.halfWidth := halfWidth;
end;
    

function TAllBinaryLayer.getHalfWidth: Integer;
begin
        Exit(Self.halfWidth);
end;
    

procedure TAllBinaryLayer.setHalfHeight(halfHeight: Integer);
begin
        Self.halfHeight := halfHeight;
end;
    

function TAllBinaryLayer.getHalfHeight: Integer;
begin
        Exit(Self.halfHeight);
end;
    

function TAllBinaryLayer.getHalfDepth: Integer;
begin
        Exit((Integer(Trunc(Self.getDepth()))) div (2));
end;
    

function TAllBinaryLayer.getViewPosition: TViewPositionBase;
begin
        Exit(Self.viewPosition);
end;
    

procedure TAllBinaryLayer.setViewPosition(viewPosition: TViewPositionBase);
begin
        Self.viewPosition := viewPosition;
end;
    

function TAllBinaryLayer.getGroupInterface: TArray<TGroup>;
begin
        Exit(TBasicGroupFactory.getInstance().NONE_ARRAY);
end;
    

function TAllBinaryLayer.implmentsTickableInterface: Boolean;
begin
        Exit(False);
end;
    

function TAllBinaryLayer.implmentsGameInputInterface: Boolean;
begin
        Exit(False);
end;
    

function TAllBinaryLayer.implmentsArtificialIntelligenceCompositeInterface: Boolean;
begin
        Exit(False);
end;
    

function TAllBinaryLayer.implmentsCollidableInterface: Boolean;
begin
        Exit(False);
end;
    

function TAllBinaryLayer.implementsThreedInterface: Boolean;
begin
        Exit(TOpenGLFeatureUtil.getInstance().isAnyThreed());
end;
    

function TAllBinaryLayer.getType: Integer;
begin
        Exit(-1);
end;
    

function TAllBinaryLayer.getMultiPlayerType: Integer;
begin
        Exit(-1);
end;
    

procedure TAllBinaryLayer.toStringAppend(stringBuffer: TStringMaker);
var
  commonSeps_: TCommonSeps;
  positionStrings_: TPositionStrings;
  commonLabels_: TCommonLabels;
begin
        commonSeps_ := TCommonSeps.getInstance();
        positionStrings_ := TPositionStrings.getInstance();
        commonLabels_ := TCommonLabels.getInstance();
        stringBuffer.append(Self.getName());
        stringBuffer.append(commonSeps_.COLON);
        stringBuffer.append(TAllBinaryLayer.TYPE_);
        stringBuffer.appendint(Self.getType());
        stringBuffer.append(commonSeps_.SPACE);
        stringBuffer.append(positionStrings_.X_LABEL);
        stringBuffer.appendint(Self.getXP());
        stringBuffer.append(commonSeps_.SPACE);
        stringBuffer.append(positionStrings_.Y_LABEL);
        stringBuffer.appendint(Self.getYP());
        stringBuffer.append(commonSeps_.SPACE);
        stringBuffer.append(positionStrings_.Z_LABEL);
        stringBuffer.appendint(Self.getZP());
        stringBuffer.append(commonSeps_.SPACE);
        stringBuffer.append(commonLabels_.WIDTH_LABEL);
        stringBuffer.appendint(Self.getWidth());
        stringBuffer.append(commonSeps_.SPACE);
        stringBuffer.append(commonLabels_.HEIGHT_LABEL);
        stringBuffer.appendint(Self.getHeight());
end;
    

function TAllBinaryLayer.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        Self.toStringAppend(stringBuffer);
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  TAllBinaryLayer.NULL_ALLBINARY_LAYER := TAllBinaryLayer.Create(TStringUtil.getInstance().EMPTY_STRING, TRectangleFactory.SINGLETON, TViewPositionBase.NULL_VIEW_POSITION);
  TAllBinaryLayer.TYPE_ := 'Type: ';
  {AB:END}

end.

