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
// package org.allbinary.graphics.displayable
unit BaseScalable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ScalableListener;

type
  {AB:TYPES}
  TBaseScalable = class(TInterfacedObject, IScalableListener)
  public
    function JavaObject: TObject;
    constructor Create;
        function getRatio(ratio: Single): Single; virtual;
        function getLeft(xOffset: Integer): Integer; virtual;
        function getTop(yOffset: Integer): Integer; virtual;
        procedure scale(ratio: Single); virtual;
  end;

implementation

{AB:CODE}

function TBaseScalable.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TBaseScalable.Create;
begin
  inherited Create;
end;
    

function TBaseScalable.getRatio(ratio: Single): Single;
begin
        Exit(1.0);
end;
    

function TBaseScalable.getLeft(xOffset: Integer): Integer;
begin
        Exit(-1);
end;
    

function TBaseScalable.getTop(yOffset: Integer): Integer;
begin
        Exit(-1);
end;
    

procedure TBaseScalable.scale(ratio: Single);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

