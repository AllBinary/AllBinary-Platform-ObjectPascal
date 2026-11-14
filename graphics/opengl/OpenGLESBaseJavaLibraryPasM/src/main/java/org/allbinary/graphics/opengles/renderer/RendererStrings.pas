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
// package org.allbinary.graphics.opengles.renderer
unit RendererStrings;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TRendererStrings = class(TObject)
  public
    ON_SURFACE_CREATED: string;
    ON_SURFACE_CHANGED: string;
    ON_DRAW_FRAME: string;
    ON_DRAW_FRAME_THREED: string;
    ON_DRAW_FRAME_2D: string;
    class var instance: TRendererStrings;
    procedure InitFields;
    constructor Create;
        class function getInstance: TRendererStrings; static;
  end;

implementation

{AB:CODE}

procedure TRendererStrings.InitFields;
begin
  Self.ON_SURFACE_CREATED := 'onSurfaceCreated';
  Self.ON_SURFACE_CHANGED := 'onSurfaceChanged';
  Self.ON_DRAW_FRAME := 'onDrawFrame';
  Self.ON_DRAW_FRAME_THREED := 'onDrawFrameThreed';
  Self.ON_DRAW_FRAME_2D := 'onDrawFrame2d';
end;

constructor TRendererStrings.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TRendererStrings.getInstance: TRendererStrings;
begin
        Exit(TRendererStrings.instance);
end;

initialization
  {AB:INITIALIZATION}
  TRendererStrings.instance := TRendererStrings.Create();
  {AB:END}

end.

