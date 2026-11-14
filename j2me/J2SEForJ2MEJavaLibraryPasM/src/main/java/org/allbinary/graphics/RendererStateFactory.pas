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
// package org.allbinary.graphics
unit RendererStateFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TRendererStateFactory = class(TObject)
  public
    loaded: Boolean;
    surfaceChanged: Boolean;
    class var instance: TRendererStateFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TRendererStateFactory; static;
        procedure setLoaded(loaded: Boolean); virtual;
        function isLoaded: Boolean; virtual;
        procedure setSurfaceChanged(initialized: Boolean); virtual;
        function isSurfaceChanged: Boolean; virtual;
  end;

implementation

{AB:CODE}

procedure TRendererStateFactory.InitFields;
begin
  Self.loaded := False;
  Self.surfaceChanged := False;
end;

constructor TRendererStateFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TRendererStateFactory.getInstance: TRendererStateFactory;
begin
        Exit(TRendererStateFactory.instance);
end;
    

procedure TRendererStateFactory.setLoaded(loaded: Boolean);
begin
        Self.loaded := loaded;
end;
    

function TRendererStateFactory.isLoaded: Boolean;
begin
        Exit(Self.loaded);
end;
    

procedure TRendererStateFactory.setSurfaceChanged(initialized: Boolean);
begin
        Self.surfaceChanged := initialized;
end;
    

function TRendererStateFactory.isSurfaceChanged: Boolean;
begin
        Exit(Self.surfaceChanged);
end;

initialization
  {AB:INITIALIZATION}
  TRendererStateFactory.instance := TRendererStateFactory.Create();
  {AB:END}

end.

