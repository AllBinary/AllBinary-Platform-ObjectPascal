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
// package org.allbinary.graphics.threed
unit SWTJOGLProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Font, MIDlet, RatioProcessor;

type
  {AB:TYPES}
  // OpenGLNone
  TSWTJOGLProcessor = class(TInterfacedObject, IRunnable)
  public
    class var instance: TSWTJOGLProcessor;
    function JavaObject: TObject;
    constructor Create;
        class function getInstance: TSWTJOGLProcessor; static;
        procedure init(display: TObject; comp: TObject); virtual;
        function isHolderCreated: Boolean; virtual;
        procedure setRenderer(renderer: TObject); virtual;
        function isJOGL: Boolean; virtual;
        procedure createSurface; virtual;
        procedure onSurfaceCreated; virtual;
        procedure onSurfaceChangedForEvent(event: TObject); virtual;
        procedure onSurfaceChanged; virtual;
        procedure onSurfaceChangedWH(width: Integer; height: Integer); virtual;
        procedure addListener; virtual;
        procedure addListeners(midlet_: TMIDlet); virtual;
        procedure run; virtual;
        procedure clear; virtual;
        procedure setCustom(width: Integer; height: Integer; ratio: Single); virtual;
        procedure setRatioProcessor(ratioProcessor_: TRatioProcessor); virtual;
        function isPortraitRatioProcessor: Boolean; virtual;
        function charWidth(font_: TFont; ch: WideChar): Integer; virtual;
        function charsWidth(font_: TFont; ch: TArray<WideChar>; offset: Integer; length: Integer): Integer; virtual;
        function stringWidth(font_: TFont; str: string): Integer; virtual;
        function substringWidth(font_: TFont; str: string; offset: Integer; len: Integer): Integer; virtual;
  end;

implementation

{AB:CODE}

function TSWTJOGLProcessor.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TSWTJOGLProcessor.Create;
begin
  inherited Create;
end;
    

class function TSWTJOGLProcessor.getInstance: TSWTJOGLProcessor;
begin
        Exit(TSWTJOGLProcessor.instance);
end;
    

procedure TSWTJOGLProcessor.init(display: TObject; comp: TObject);
begin
end;
    

function TSWTJOGLProcessor.isHolderCreated: Boolean;
begin
        Exit(True);
end;
    

procedure TSWTJOGLProcessor.setRenderer(renderer: TObject);
begin
end;
    

function TSWTJOGLProcessor.isJOGL: Boolean;
begin
        Exit(False);
end;
    

procedure TSWTJOGLProcessor.createSurface;
begin
end;
    

procedure TSWTJOGLProcessor.onSurfaceCreated;
begin
end;
    

procedure TSWTJOGLProcessor.onSurfaceChangedForEvent(event: TObject);
begin
end;
    

procedure TSWTJOGLProcessor.onSurfaceChanged;
begin
end;
    

procedure TSWTJOGLProcessor.onSurfaceChangedWH(width: Integer; height: Integer);
begin
end;
    

procedure TSWTJOGLProcessor.addListener;
begin
end;
    

procedure TSWTJOGLProcessor.addListeners(midlet_: TMIDlet);
begin
end;
    

procedure TSWTJOGLProcessor.run;
begin
end;
    

procedure TSWTJOGLProcessor.clear;
begin
end;
    

procedure TSWTJOGLProcessor.setCustom(width: Integer; height: Integer; ratio: Single);
begin
end;
    

procedure TSWTJOGLProcessor.setRatioProcessor(ratioProcessor_: TRatioProcessor);
begin
end;
    

function TSWTJOGLProcessor.isPortraitRatioProcessor: Boolean;
begin
        Exit(True);
end;
    

function TSWTJOGLProcessor.charWidth(font_: TFont; ch: WideChar): Integer;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TSWTJOGLProcessor.charsWidth(font_: TFont; ch: TArray<WideChar>; offset: Integer; length: Integer): Integer;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TSWTJOGLProcessor.stringWidth(font_: TFont; str: string): Integer;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TSWTJOGLProcessor.substringWidth(font_: TFont; str: string; offset: Integer; len: Integer): Integer;
begin
        raise SysUtils.Exception.Create('');
end;

initialization
  {AB:INITIALIZATION}
  TSWTJOGLProcessor.instance := TSWTJOGLProcessor.Create();
  {AB:END}

end.

