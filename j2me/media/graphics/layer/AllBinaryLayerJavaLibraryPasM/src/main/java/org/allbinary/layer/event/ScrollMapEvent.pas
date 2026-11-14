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
// package org.allbinary.layer.event
unit ScrollMapEvent;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryEventObject;

type
  {AB:TYPES}
  TScrollMapEvent = class(TAllBinaryEventObject)
  public
    dx: Integer;
    dy: Integer;
    procedure InitFields;
        constructor Create(anyType: TObject);
        procedure setDx(dx: Integer); virtual;
        function getDx: Integer; virtual;
        procedure setDy(dy: Integer); virtual;
        function getDy: Integer; virtual;
        procedure setDxDy(dx: Integer; dy: Integer); virtual;
  end;

implementation

{AB:CODE}

procedure TScrollMapEvent.InitFields;
begin
  
  
end;
    

constructor TScrollMapEvent.Create(anyType: TObject);
begin
        inherited Create(anyType);
        InitFields;
end;
    

procedure TScrollMapEvent.setDx(dx: Integer);
begin
        Self.dx := dx;
end;
    

function TScrollMapEvent.getDx: Integer;
begin
        Exit(Self.dx);
end;
    

procedure TScrollMapEvent.setDy(dy: Integer);
begin
        Self.dy := dy;
end;
    

function TScrollMapEvent.getDy: Integer;
begin
        Exit(Self.dy);
end;
    

procedure TScrollMapEvent.setDxDy(dx: Integer; dy: Integer);
begin
        Self.dx := dx;
        Self.dy := dy;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

