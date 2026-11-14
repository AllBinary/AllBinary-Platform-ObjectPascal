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
// package org.allbinary.view
unit ViewPosition;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryLayer, ViewPositionBase;

type
  {AB:TYPES}
  TViewPosition = class(TViewPositionBase)
  public
    allbinaryLayer: TAllBinaryLayer;
    procedure InitFields;
        class function getInstanceD: TViewPosition; static;
        constructor Create(x: Integer; y: Integer; z: Integer);
        function getX: Integer; override;
        function getY: Integer; override;
        function getZ: Integer; override;
        function getX2: Integer; override;
        function getY2: Integer; override;
        function getZ2: Integer; override;
        procedure setAllbinaryLayer(allbinaryLayer_: TObject); override;
  end;

implementation

{AB:CODE}

procedure TViewPosition.InitFields;
begin
  Self.allbinaryLayer := TAllBinaryLayer.NULL_ALLBINARY_LAYER;
end;
    

class function TViewPosition.getInstanceD: TViewPosition;
begin
        Exit(TViewPosition.Create(0, 0, 0));
end;
    

constructor TViewPosition.Create(x: Integer; y: Integer; z: Integer);
begin
        inherited Create(x, y, z);
        InitFields;
end;
    

function TViewPosition.getX: Integer;
begin
        Exit(Self.allbinaryLayer.getXP());
end;
    

function TViewPosition.getY: Integer;
begin
        Exit(Self.allbinaryLayer.getYP());
end;
    

function TViewPosition.getZ: Integer;
begin
        Exit(Self.allbinaryLayer.getZP());
end;
    

function TViewPosition.getX2: Integer;
begin
        Exit((Self.getX()) + (Self.allbinaryLayer.getWidth()));
end;
    

function TViewPosition.getY2: Integer;
begin
        Exit((Self.getY()) + (Self.allbinaryLayer.getHeight()));
end;
    

function TViewPosition.getZ2: Integer;
begin
        Exit(Integer(Trunc(((Self.getZ()) + (Self.allbinaryLayer.getDepth())))));
end;
    

procedure TViewPosition.setAllbinaryLayer(allbinaryLayer_: TObject);
begin
        Self.allbinaryLayer := TAllBinaryLayer(TJava.ToObject(allbinaryLayer_));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

