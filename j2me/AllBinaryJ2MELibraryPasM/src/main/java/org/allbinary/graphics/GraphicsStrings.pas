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
// package org.allbinary.graphics
unit GraphicsStrings;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TGraphicsStrings = class(TObject)
  public
    ANIMATION: string;
    ANGLE: string;
    MOVEMENT_ANGLE: string;
    ROTATION: string;
    OPACITY: string;
    HTML: string;
    WIDTH: string;
    HEIGHT: string;
    class var instance: TGraphicsStrings;
    procedure InitFields;
    constructor Create;
        class function getInstance: TGraphicsStrings; static;
  end;

implementation

{AB:CODE}

procedure TGraphicsStrings.InitFields;
begin
  Self.ANIMATION := 'animation';
  Self.ANGLE := 'angle';
  Self.MOVEMENT_ANGLE := 'movement_angle';
  Self.ROTATION := 'rotation';
  Self.OPACITY := 'opacity';
  Self.HTML := 'HTML';
  Self.WIDTH := 'width';
  Self.HEIGHT := 'height';
end;

constructor TGraphicsStrings.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TGraphicsStrings.getInstance: TGraphicsStrings;
begin
        Exit(TGraphicsStrings.instance);
end;

initialization
  {AB:INITIALIZATION}
  TGraphicsStrings.instance := TGraphicsStrings.Create();
  {AB:END}

end.

