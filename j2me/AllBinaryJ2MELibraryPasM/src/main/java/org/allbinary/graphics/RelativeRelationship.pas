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
// package org.allbinary.graphics
unit RelativeRelationship;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, GPoint;

type
  {AB:TYPES}
  TRelativeRelationship = class(TObject)
  public
    typesAllowedList: TBasicArrayList;
    x: Integer;
    y: Integer;
    z: Integer;
    class var NULL_RELATIVE_RELATIONSHIP: TRelativeRelationship;
    procedure InitFields;
        constructor Create(point: TGPoint; typesAllowedList: TBasicArrayList);
        function getX: Integer; virtual;
        function getY: Integer; virtual;
        function getZ: Integer; virtual;
        function getTypesAllowedList: TBasicArrayList; virtual;
        procedure setTypesAllowedList(typesAllowedList: TBasicArrayList); virtual;
  end;

implementation
uses
  PointFactory, BasicArrayListUtil;


{AB:CODE}

procedure TRelativeRelationship.InitFields;
begin
  
  
  
  
end;
    

constructor TRelativeRelationship.Create(point: TGPoint; typesAllowedList: TBasicArrayList);
begin
    inherited Create;
    InitFields;
        Self.x := point.getX();
        Self.y := point.getY();
        Self.z := point.getZ();
        Self.typesAllowedList := typesAllowedList;
end;
    

function TRelativeRelationship.getX: Integer;
begin
        Exit(Self.x);
end;
    

function TRelativeRelationship.getY: Integer;
begin
        Exit(Self.y);
end;
    

function TRelativeRelationship.getZ: Integer;
begin
        Exit(Self.z);
end;
    

function TRelativeRelationship.getTypesAllowedList: TBasicArrayList;
begin
        Exit(Self.typesAllowedList);
end;
    

procedure TRelativeRelationship.setTypesAllowedList(typesAllowedList: TBasicArrayList);
begin
        Self.typesAllowedList := typesAllowedList;
end;

initialization
  {AB:INITIALIZATION}
  TRelativeRelationship.NULL_RELATIVE_RELATIONSHIP := TRelativeRelationship.Create(TPointFactory.getInstance().ZERO_ZERO, TBasicArrayListUtil.getInstance().getImmutableInstance());
  {AB:END}

end.

