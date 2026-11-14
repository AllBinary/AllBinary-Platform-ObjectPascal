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
// package org.allbinary.game.physics.acceleration
unit BasicAccelerationProperties;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TBasicAccelerationProperties = class(TObject)
  public
    forward: Integer;
    reverse: Integer;
    procedure InitFields;
        constructor Create(forward: Integer; reverse: Integer);
        procedure setReverse(reverse: Integer); virtual;
        function getReverse: Integer; virtual;
        procedure setForward(forward: Integer); virtual;
        function getForward: Integer; virtual;
  end;

implementation

{AB:CODE}

procedure TBasicAccelerationProperties.InitFields;
begin
  
  
end;
    

constructor TBasicAccelerationProperties.Create(forward: Integer; reverse: Integer);
begin
    inherited Create;
    InitFields;
        Self.setForward(forward);
        Self.setReverse(reverse);
end;
    

procedure TBasicAccelerationProperties.setReverse(reverse: Integer);
begin
        Self.reverse := reverse;
end;
    

function TBasicAccelerationProperties.getReverse: Integer;
begin
        Exit(Self.reverse);
end;
    

procedure TBasicAccelerationProperties.setForward(forward: Integer);
begin
        Self.forward := forward;
end;
    

function TBasicAccelerationProperties.getForward: Integer;
begin
        Exit(Self.forward);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

