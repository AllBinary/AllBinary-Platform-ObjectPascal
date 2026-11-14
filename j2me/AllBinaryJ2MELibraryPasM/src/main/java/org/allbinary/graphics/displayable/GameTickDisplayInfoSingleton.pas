{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.graphics.displayable
unit GameTickDisplayInfoSingleton;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DisplayInfoSingleton;

type
  {AB:TYPES}
  TGameTickDisplayInfoSingleton = class(TObject)
  public
    displayInfoSingleton: TDisplayInfoSingleton;
    lastWidth: Integer;
    lastHeight: Integer;
    lastHalfWidth: Integer;
    lastHalfHeight: Integer;
    class var instance: TGameTickDisplayInfoSingleton;
    procedure InitFields;
    constructor Create;
        class function getInstance: TGameTickDisplayInfoSingleton; static;
        procedure update; virtual;
        function getLastWidth: Integer; virtual;
        function getLastHeight: Integer; virtual;
        function getLastHalfWidth: Integer; virtual;
        function getLastHalfHeight: Integer; virtual;
  end;

implementation

{AB:CODE}

procedure TGameTickDisplayInfoSingleton.InitFields;
begin
  Self.displayInfoSingleton := TDisplayInfoSingleton.getInstance();
  Self.lastWidth := Self.displayInfoSingleton.getLastWidth();
  Self.lastHeight := Self.displayInfoSingleton.getLastHeight();
  Self.lastHalfWidth := Self.displayInfoSingleton.getLastHalfWidth();
  Self.lastHalfHeight := Self.displayInfoSingleton.getLastHalfHeight();
end;

constructor TGameTickDisplayInfoSingleton.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TGameTickDisplayInfoSingleton.getInstance: TGameTickDisplayInfoSingleton;
begin
        Exit(TGameTickDisplayInfoSingleton.instance);
end;
    

procedure TGameTickDisplayInfoSingleton.update;
begin
        Self.lastWidth := Self.displayInfoSingleton.getLastWidth();
        Self.lastHeight := Self.displayInfoSingleton.getLastHeight();
        Self.lastHalfWidth := Self.displayInfoSingleton.getLastHalfWidth();
        Self.lastHalfHeight := Self.displayInfoSingleton.getLastHalfHeight();
end;
    

function TGameTickDisplayInfoSingleton.getLastWidth: Integer;
begin
        Exit(Self.lastWidth);
end;
    

function TGameTickDisplayInfoSingleton.getLastHeight: Integer;
begin
        Exit(Self.lastHeight);
end;
    

function TGameTickDisplayInfoSingleton.getLastHalfWidth: Integer;
begin
        Exit(Self.lastHalfWidth);
end;
    

function TGameTickDisplayInfoSingleton.getLastHalfHeight: Integer;
begin
        Exit(Self.lastHalfHeight);
end;

initialization
  {AB:INITIALIZATION}
  TGameTickDisplayInfoSingleton.instance := TGameTickDisplayInfoSingleton.Create();
  {AB:END}

end.

