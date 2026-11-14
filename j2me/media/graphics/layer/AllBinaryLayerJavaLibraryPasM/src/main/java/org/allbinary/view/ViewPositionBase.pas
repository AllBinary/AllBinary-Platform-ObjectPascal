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
// package org.allbinary.view
unit ViewPositionBase;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GPoint;

type
  {AB:TYPES}
  TViewPositionBase = class(TGPoint)
  public
    class var NULL_VIEW_POSITION: TViewPositionBase;
        constructor Create(x: Integer; y: Integer; z: Integer);
        function getX2: Integer; virtual;
        function getY2: Integer; virtual;
        function getZ2: Integer; virtual;
        procedure setAllbinaryLayer(allbinaryLayer: TObject); virtual;
  end;

implementation

{AB:CODE}
    

constructor TViewPositionBase.Create(x: Integer; y: Integer; z: Integer);
begin
        inherited Create(x, y, z);
end;
    

function TViewPositionBase.getX2: Integer;
begin
        Exit(Self.getX());
end;
    

function TViewPositionBase.getY2: Integer;
begin
        Exit(Self.getY());
end;
    

function TViewPositionBase.getZ2: Integer;
begin
        Exit(Self.getZ());
end;
    

procedure TViewPositionBase.setAllbinaryLayer(allbinaryLayer: TObject);
begin
end;

initialization
  {AB:INITIALIZATION}
  TViewPositionBase.NULL_VIEW_POSITION := TViewPositionBase.Create(0, 0, 0);
  {AB:END}

end.

