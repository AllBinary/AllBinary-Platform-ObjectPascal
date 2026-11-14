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
unit StaticViewPosition;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ViewPosition;

type
  {AB:TYPES}
  TStaticViewPosition = class(TViewPosition)
  public
        constructor Create(x: Integer; y: Integer; z: Integer);
        function getX: Integer; override;
        function getY: Integer; override;
        function getZ: Integer; override;
  end;

implementation

{AB:CODE}
    

constructor TStaticViewPosition.Create(x: Integer; y: Integer; z: Integer);
begin
        inherited Create(x, y, z);
end;
    

function TStaticViewPosition.getX: Integer;
begin
        Exit(Self.getRawX());
end;
    

function TStaticViewPosition.getY: Integer;
begin
        Exit(Self.getRawY());
end;
    

function TStaticViewPosition.getZ: Integer;
begin
        Exit(Self.getRawZ());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

