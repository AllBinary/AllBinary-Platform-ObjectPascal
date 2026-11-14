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
// package org.allbinary.game.input
unit TestInputExample;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, TestInputInterface, PaintableInterface;

type
  {AB:TYPES}
  TTestInputExample = class(TInterfacedObject, ITestInputInterface, IPaintableInterface)
  public
    testValue: Integer;
    procedure InitFields;
    function JavaObject: TObject;
    constructor Create;
        procedure up; virtual;
        procedure down; virtual;
        procedure left; virtual;
        procedure right; virtual;
        procedure strafeLeft; virtual;
        procedure strafeRight; virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure paintThreed(graphics_: TGraphics); virtual;
  end;

implementation

{AB:CODE}

procedure TTestInputExample.InitFields;
begin
  
end;

function TTestInputExample.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TTestInputExample.Create;
begin
  inherited Create;
  InitFields;
end;
    

procedure TTestInputExample.up;
begin
end;
    

procedure TTestInputExample.down;
begin
end;
    

procedure TTestInputExample.left;
begin
        Inc(Self.testValue);
end;
    

procedure TTestInputExample.right;
begin
        Dec(Self.testValue);
end;
    

procedure TTestInputExample.strafeLeft;
begin
end;
    

procedure TTestInputExample.strafeRight;
begin
end;
    

procedure TTestInputExample.paint(graphics_: TGraphics);
begin
end;
    

procedure TTestInputExample.paintThreed(graphics_: TGraphics);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

